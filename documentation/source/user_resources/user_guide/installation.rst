.. _installation:

Installation
============

.. note::
   Rxn Rover currently can only be used by running the source code. You must 
   also download plugins for your desired optimizer, analyzer, and reactor 
   components from the `Plugin Catalog <https://rxnrover.github.io/
   PluginCatalog>`__.

Prerequisites
-------------

In order to run Rxn Rover, you need the free LabVIEW 2020 runtime engine,
acquired from the `LabVIEW website <https://www.ni.com/en-us/support/downloads/software-products/download.labview-runtime.html#369481>`__.

You also need the Dynamic Reentrant library, developed by the Rxn Rover team
to facilitate communication between Rxn Rover and its plugins. It can be 
downloaded from <https://www.github.com/RxnRover/DynamicReentrant> by clicking
the "Code" button and selecting "Download ZIP". Extract the ZIP file into your
`<labview>/user.lib/` directory, where `<labview>` is the location of your 
LabVIEW installation. `user.lib` is where user-created, common libraries used 
across multiple projects are located.

Rxn Rover Setup
---------------

Once the prerequisites are installed:

#. Clone or download/extract the `Rxn Rover repository <https://github.com/RxnRover/RxnRover>`__.

#. Double-click Main.vi in the top directory of the repository.

#. Click the "Run" arrow in the top left of the window that opens to run
   Rxn Rover.