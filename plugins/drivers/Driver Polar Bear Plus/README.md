# Polar Bear Plus LabVIEW Drivers

These drivers can be used to help LabVIEW software communicate with a 
Polar Bear Plus temperature controller.

## Installation

1. Download the latest `.vip` installer from the [Releases page](https://github.com/RxnRover/driver_polar_bear_plus/releases).  
2. Double-click the downloaded `.vip` file to install it with VIPM.
3. Ensure you have also installed the subsequent  [Plugin](https://github.com/RxnRover/plugin_polar_bear_plus/releases).  

#Important
These drivers also require [Eurotherm's Drivers](https://sine.ni.com/apps/utf8/niid_web_display.download_page?p_id_guid=CDE89C1186CB633BE0440021287E6E02) to work properly. Aquire from the NI network. 

### Manual Installation (optional)

Download the library by clicking the "Code" button and selecting "Download 
ZIP". Extract the ZIP file into your `<labview>/instr.lib/` directory, where 
`<labview>` is the location of your LabVIEW installation. `instr.lib` is where 
instrument drivers are placed so they can be found by other LabVIEW projects.
