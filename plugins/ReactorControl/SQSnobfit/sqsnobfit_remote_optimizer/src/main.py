import argparse
import json
import SQSnobFit
import zmq

import config as cfg
from AbortException import AbortException
from zmq_obj_function import zmq_obj_function

def initial_handshake(socket):
    """Performs the initial handshake that get initialization data before starting the optimization"""

    # Request initial parameters
    print("Sending initial_parameters request")
    socket.send(b"initial_parameters")

    # Receive initial parameters
    reply = socket.recv()
    initial_parameters = json.loads(reply)
    print("Initial parameters received: {}".format(initial_parameters))

    # Request bounds
    print("Sending bounds request")
    socket.send(b"bounds")
    
    # Receive bounds
    reply = socket.recv()
    bounds = json.loads(reply)
    print("Bounds received: {}".format(bounds))

    # Request budget
    print("Sending budget request")
    socket.send(b"budget")
    
    # Receive budget
    reply = socket.recv()
    budget = json.loads(reply)
    print("Budget received: {}".format(budget))

    # Confirm receipt
    print("Sending options request")
    socket.send(b"options")

    # Receive options
    reply = socket.recv()
    options = json.loads(reply)
    print("options received: {}".format(options))

    return initial_parameters, bounds, budget, options
    

def init_socket(binding):
    print("Binding socket at {} ...".format(binding))

    context = zmq.Context()
    socket = context.socket(zmq.REQ)
    socket.connect(binding)
    
    print("Binding complete!")

    return socket

def parse_args():
    """Parse command line arguments"""

    parser = argparse.ArgumentParser()
    
    parser.add_argument("config_file", help="Location of the configuration file to use.")
    parser.add_argument("--default-config", action="store_true", help="Generate config file with default values at the location given by config_file.")

    args = parser.parse_args()

    return args

def main():
    """Starting point for using SQSnobFit calls with zmq"""

    args = parse_args()

    # Optionally generate a default config file
    if (args.default_config):
        cfg.generate_default_config(args.config_file)

    config = cfg.load(args.config_file)

    address = config["ip_address"] + ":" + config["port"]
    socket = init_socket(address)

    initial_parameters = config["param_init"]
    bounds = config["bounds"]
    budget = config["budget"]
    options = config["options"]

    if (not config["init_from_config"]):
        initial_parameters, bounds, budget, options = initial_handshake(socket)

    options = SQSnobFit.optset(options)
                     
    obj_func = zmq_obj_function(socket, config["direction"])

    results = None
    history = None
    
    try:
        results, history = SQSnobFit.minimize(obj_func, initial_parameters, bounds, budget, options)
    except AbortException as e:
        socket.send(b"aborted")
        print(str(e))
        return

    # Send the best results
    if (config["direction"] == "max"):
        results.optval = -results.optval
    socket.send(json.dumps({ "value": results.optval, "parameters": results.optpar.tolist() , "history": history.tolist(), "steps": len(history) }).encode('utf-8'))
    
    print("Steps taken: {}".format(len(history)))
    print("Minimum reached: {0} at {1}".format(results.optval, results.optpar))
    

if __name__ == "__main__":
    main()
