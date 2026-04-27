class AbortException(BaseException):

    def __init__(self):
        self.value = "Optimization was aborted by a remote connection."

    def __str__(self):
        return self.value

if __name__ == "__main__":
    raise(AbortException())

