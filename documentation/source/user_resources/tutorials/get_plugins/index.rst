Get Existing Plugins
====================

This tutorial will walk through acquiring existing plugins from the 
`Rxn Rover Plugin Catalog <https://rxnrover.github.io/PluginCatalog>`__ and 
installing the plugins so they are discoverable by Rxn Rover.

.. note::
   
   For information on creating your own plugin, see :ref:`Creating a New Plugin
   <create-new-plugin>`.

Where can I acquire plugins?
----------------------------

A list of existing first- and third-party plugins exists in the 
`Rxn Rover Plugin Catalog <https://rxnrover.github.io/PluginCatalog>`__. Browse 
the listings or use the search feature to find your desired plugins, and 
follow the acquisition instructions included with each plugin listing to 
download it.

Installing Plugins
------------------

You can install plugins for RxnRover in two main ways, 

Install via VIPM (Recommended)
------------------------------

If the plugin(s) you are trying to install contains a .vip file, the easiest way to install plugin(s) is through the **VI Package Manager (VIPM)**.

- Download and install the `.vip` package as described in the plugin's instructions.

Manual Installation
-------------------

You can also install plugins manually by downloading the plugin source code.

1. Download the plugin files (typically a folder containing source code and a `plugin.conf` file).
2. Move the plugin folder into the following directory:

   ::

      <documents>/RxnRover/Plugins

   where `<documents>` refers to your operating system's standard **Documents** directory.

3. Rxn Rover will automatically detect plugins located in this folder by reading their `plugin.conf` files.

.. note::
   
   Each plugin, especially third-party plugins, may have additional or 
   different installation instructions. Make sure you thoroughly read
   each plugin description!

.. note::
   
   See :ref:`Rxn Rover Plugin Directories <rxnrover-plugin-directories>` for
   more information about the different locations Rxn Rover checks for plugins.