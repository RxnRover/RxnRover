import json

def generate_default_config(filename):
    """Generates a default configuration file"""

    config = {
        "init_from_config": True,
        "param_init": [ 0.5, 0.5 ],
        "bounds": [ [ -5.12, 5.12 ],
		    [ -5.12, 5.12 ] ],
        "budget": 1000,
        "options": { "minfcall": None,
		     "maxmp": None,
		     "maxfail": 5,
		     "verbose": False
        },
        "direction": "min",
        "ip_address" : "tcp://127.0.0.1", # localhost using tcp
        "port"       : "5555",            # default port
    }

    try:
        fout = open(filename, "w")
        json.dump(config, fout, indent=4)
        print("Default config file generated at: {}".format(filename))
    except Exception as e:
        print("Failed to generate config file: {}".format(filename))
        print("Please check that the path exists and file write permissions.")
        raise e
    else:
        fout.close()

def load(filename):
    """Load the configuration file"""

    config = None
    
    # Try to load config
    try:
        fin = open(filename, 'r')
        config = json.load(fin)
    except Exception as e:
        print("Failed to load config file: {}".format(filename))
        print("Please ensure the config file exists and there are no spelling errors.")
        print("To create a config file with default values, run the program again with the --default-config flag.\n")
        raise e
    else:
        fin.close()
    
    return config

        
if __name__ == "__main__":
    """Short test of generating and reading a default config file"""
    
    import os

    test_file = "./test_config.json"
    
    generate_default_config(test_file)
    print(load(test_file))
    os.remove(test_file)
