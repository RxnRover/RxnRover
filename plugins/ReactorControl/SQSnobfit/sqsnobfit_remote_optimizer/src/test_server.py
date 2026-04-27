import json
import time
import zmq
import numpy as np

def branin(x, a=1, b=5.1/(4*np.pi**2), c=5/np.pi, r=6, s=10, t=1/(8*np.pi)):
    """Branin, or Branin-Hoo, optimization test function.

    Branin function with (by default) values of a, b, c, r, s, t:
    a = 1, b = 5.1 / (4 * pi^2), c = 5 / pi, r = 6, s = 10 and t = 1 / (8 * pi)
    from https://www.sfu.ca/~ssurjano/branin.html.

    Function in LaTeX format:
    f(x) = a(x_2 - bx_1^2 + cx_1 - r)^2 + s(1-t)cos(x_1) + s"""

    term_1 = a * (x[1] - b * x[0]**2 + c * x[0] - r)**2
    term_2 = s * (1 - t) * np.cos(x[0])
    
    return term_1 + term_2 + s

def rosenbrock(xs):
    """Rosenbrock nD optimization test function.

    Rosenbrock nD function from https://www.sfu.ca/~ssurjano/rosen.html.

    Function in LaTeX format:
    f(x) = \sum_{i=1}^{d-1} [100(x_{i+1} - x_i^2)^2 + (x_i - 1)^2]
    """

    dimensionCount = len(xs)

    sum = 0
    for i in range(dimensionCount - 1):
        term_1 = 100 * (xs[i+1] - xs[i]**2)**2
        term_2 = (xs[i] - 1)**2
        sum += term_1 + term_2

    return sum


def main():

    REQUEST_TIMEOUT = 2500 # ms
    REQUEST_RETRIES = 1
    SERVER_ENDPOINT = "tcp://*:5555"

    # Create the context and socket
    context = zmq.Context(1)
    socket = context.socket(zmq.REP)
    socket.bind(SERVER_ENDPOINT)
    
    # Register the socket with a poller
    poll = zmq.Poller()
    poll.register(socket, zmq.POLLIN)

    abort_count = 1000
    abort_i = 0
    while True:
        #  Wait for ready from the optimizer
        print("Waiting...")
        request = socket.recv()
        print("Received request: %s" % request)

        reply = b"invalid_request"
    
        #  Send reply back to client
        if (request == b"initial_parameters"):
            reply = json.dumps([]).encode('utf-8')
            
        elif (request == b"bounds"):
            reply = json.dumps([[-5.12, 5.12], [-5.12, 5.12]]).encode('utf-8')

        elif (request == b"budget"):
            reply = json.dumps(1000).encode('utf-8')

        elif (request == b"options"):
            reply = json.dumps({ "minfcall": None,
                                 "maxmp"   : None,
                                 "maxfail" : 5,
                                 "verbose" : False
            }).encode('utf-8')

        elif (request == b"aborted"):
            print("Abort acknowledged")
            # This message is to be ignored and is only to reset the state of the
            # server to receive another request
            reply = b"ignore"

        elif (type(json.loads(request)) == dict):
            best = json.loads(request)
            print("Received best conditions: {} at {} after {} steps".format(best["value"], best["parameters"], best["steps"]))
            reply = b"ignore"
            abort_i = 0
            
        elif (type(json.loads(request)) == list):
            result = branin(json.loads(request))
            reply = json.dumps(result).encode('utf-8')
            abort_i += 1
        else:
            print("Invalid request: {}".format(request))

        if (abort_i >= abort_count):
            abort_i = 0
            reply = b"abort"
            
        print("Sending reply: {}".format(reply))
        socket.send(reply)
                
    socket.close()
    context.term()

if __name__ == "__main__":
    main()
