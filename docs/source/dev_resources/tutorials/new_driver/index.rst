.. _create-new-driver:

Create a New Driver
===================

Rxn Rover supports plugin-based integration with a variety of laboratory instruments and systems. A *driver* is a software component that enables Rxn Rover to communicate with external hardware, typically laboratory instruments.

Creating a LabVIEW driver requires a solid understanding of programming in LabVIEW. We recommend completing NIs' official LabVIEW tutorials before getting started.

.. warning::
    Rxn Rover will fail to communicate with hardware devices that do not have an accompanying driver.

.. hint:: 
    You can visit the `Instrument Driver Network (IDNet) <https://www.ni.com/en/support/downloads/instrument-drivers.html>`_ or the `Rxn Rover Plugin Catalog <https://rxnrover.github.io/PluginCatalog>`__  to see if your instrument already has a LabVIEW-supported driver.

This tutorial is not meant to be a comprehensive-tutorial just as supplementary instruction. For more detailed guidelines, refer to:  
`Developing LabVIEW Plug and Play Instrument Drivers <https://www.ni.com/en/support/downloads/instrument-drivers/tools-resources/developing-labview-plug-and-play-instrument-drivers.html>`_

Create a LabVIEW Driver Project
-------------------------------

To get started, create a new LabVIEW project using the built-in **Instrument Driver Project** template.

Steps:

1. Launch LabVIEW and go to **File → Create Project**
2. In the templates panel, select **Instrument Driver Project**
3. Click **Finish**

This opens the **Create New Instrument Driver Project** dialog. We recommend the following configuration:

- **Driver type**: New Driver from Template  
- **Instrument type**: General Purpose (message-based)

You can optionally enter:

- A name for your driver project  
- A driver description  
- A custom VI icon banner template

Once completed, LabVIEW will generate a project located in the `instr.lib` directory—LabVIEW’s standard location for all instrument drivers.

Driver Project Structure
------------------------

Your new driver project will be created with a standard folder and VI structure under the `.lvlib` file. The layout will include:

Top-Level VIs
^^^^^^^^^^^^^

- **Close.vi** – Terminates communication with the instrument
- **Initialize.vi** – Establishes communication and prepares the instrument
- **VI Tree.vi** – A non-functional VI that provides a visual index of all included VIs
- **dir.mnu** – Customizes palette view
- **Readme.html** – A template README file for your driver

Folders
^^^^^^^

- **Public/**  
  VIs intended for use by external callers:

- **Action-Status/**  
  VIs that perform actions or acquire data (e.g., getters)

- **Configure/**  
  VIs that change the instrument's configuration or state (e.g., setters)

- **Data/**  
  Includes common I/O operations:

  - `Data Read.vi`  
  - `Data Write.vi`

- **Utility/**  
  Helper and sub-VIs not meant to be called directly

- **Private/**  
  Internal-use VIs not exposed to the end user or calling applications.

Next Steps
----------

After setting up your LabVIEW project:

- Begin implementing the required functionality using your instrument's user manual or command set

.. note::
    We strongly recommend testing each VI with your instrument to verify correct functionality before integrating with Rxn Rover.

See :ref:`create-new-plugin` for how to integrate this driver with Rxn Rover's plugin system.
See :ref:`tutorial on creating a VIPM package <create-new-vipm-package>` to package your driver for automated installation and distribution.
