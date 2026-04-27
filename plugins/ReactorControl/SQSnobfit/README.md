# SQSnobFit Plugin

This plugin allows Rxn Rover to connect with an instance of 
[SQSnobFit](https://pypi.org/project/SQSnobFit/), a Python reimplementation of the 
[SNOBFIT](https://www.mat.univie.ac.at/~neum/software/snobfit/) blackbox 
optimization algorithm. A Python program is provided with the plugin to launch 
an instance of SQSnobFit for use with this plugin. This program uses a 
modified objective function with built-in communication capabilities. The 
SQSnobFit algorithm, along with other aspects of the program, can be 
configured by specifying a configuration file (example files are provided).

### Prerequisites

This plugin requires the following to be installed beforehand: 

- Python 3.x. Download it from https://www.python.org/.
- ZeroMQ for LabVIEW. The latest version can be installed through the VI 
  Package Manager (VIPM) or can be downloaded from the [ZeroMQ for LabVIEW
  website](https://labview-zmq.sourceforge.io/).

## Installation

1. Download the latest `.vip` installer from the [Releases page](https://github.com/RxnRover/plugin_sqsnobfit/releases/latest).  
2. Double-click the downloaded `.vip` file to install it with VIPM.

### Manual Installation (optional)

Download this plugin by clicking the "Code" button in the top right of its 
GitHub repository and selecting "Download ZIP". Extract the ZIP file into your 
`<documents>/Plugins/Optimizers` directory. Inside the plugin directory you 
just extracted, there is a `plugin` directory, where the plugin code is stored,
and an empty `sqsnobfit_remote_optimizer` directory. Download the SQSnobfit 
remote optimization code from
https://github.com/RxnRover/snobfit_remote_optimization and extract that ZIP
file into the `sqsnobfit_remote_optimizer` subdirectory

### Setting up SQSnobFit Optimizer

Inside `<documents>/Plugins/Optimizers/SQSnobFit` there are two folders, 
`plugin`, where the Rxn Rover plugin resides, and 
`sqsnobfit_remote_optimizer`, where the necessary code to launch an 
instance of SQSnobFit that can communicate with the plugin. If you are using
Linux or Mac, simply type `make install` in the `sqsnobfit_remote_optimizer`
directory to download and install dependencies into a virtual environment.

If using Windows, open a terminal in the `sqsnobfit_remote_optimizer` 
directory, but make sure it's a Command Prompt(CMD) window not PowerShell.

In the terminal window type the following commands:

```batch
python -m venv venv             # Creates a virtual environment (venv)
.\venv\Scripts\activate         # Activates the venv
pip install -r requirements.txt # Installs dependencies in venv
deactivate                      # Deactivates the venv
```

## Configurations

The SQSnobFit optimization can be configured by editing or creating a new 
config file in the `sqsnobfit_remote_optimizer/config` directory. An example
configuration file with default values is provided as `default-config.json`.

## Plugin Scripts

Scripts used by the plugin are located in the 
`sqsnobfit_remote_optimizer/scripts` subdirectory. When creating a new script,
ensure that it activates the `venv`, runs `src/main.py` with the correct 
config file as a command line argument, and deactivates the `venv` when 
complete. An example start script file should be present in the scripts 
directory.
