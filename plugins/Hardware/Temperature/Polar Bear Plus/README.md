# Polar Bear Plus Plugin
This plugin provides basic control over Polar Bear Plus temperature controller, including temperature control, monitoring, start, and stop 
commands. The plugin keeps a log of all data collected in a CSV format for 
easy analysis using a spreadsheet program.

## Important!
Currently the drivers contain a depreciated function and as a result the plugin will most likely not function in LabVIEW versions newer than LabVIEW 2020. 

## Installation

**Polar Bear Plus AND Eurotherm Nanodoc drivers are required to communicate with the 
pumps.**

1. Download the latest `.vip` installer from the [Releases page](https://github.com/RxnRover/plugin_polar_bear_plus/releases).  
2. Double-click the downloaded `.vip` file to install it with VIPM.
3. Ensure you have also installed the subsequent  [Drivers](https://github.com/RxnRover/driver_polar_bear_plus/releases).  

### Manual Installation (optional)

Download the library by clicking the "Code" button and selecting "Download 
ZIP". Extract the ZIP file into your `<Documents>/RxnRover/Plugins/Hardware/Temperature` directory (create this folder if it doesn't already exist)
