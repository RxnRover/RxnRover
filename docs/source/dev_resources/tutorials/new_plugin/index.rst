.. _create-new-plugin:

Create a New Plugin
===================

Plugins are an essential part of RxnRover, providing the ability to interface with, control, analyze, and communicate directly with connected devices. In this tutorial, we will walk through the process of creating a new plugin in RxnRover.

Overview
--------

Plugins in RxnRover typically interact with hardware devices; however, purely software-based plugins can exist in the form of analytical tools, simulation tools, etc. Before you begin writing a plugin for a specific type of hardware, you'll need to consider whether you require a custom device driver or if you can use an existing one. Some manufacturers might already provide a LabVIEW driver.

.. note::
   All RxnRover plugins require the `DynamicReentrant <https://github.com/RxnRover/DynamicReentrant>`_ library installed. This library is provided by the RxnRover team to facilitate communication with RxnRover.

Understanding the Plugin Structure
----------------------------------

The basic components of a RxnRover plugin are:

1. **Driver**: The software component that communicates directly with the device. If you already have a provided LabVIEW driver, you will only need to create the plugin for the device.

2. **Plugin**: The interface between the driver and RxnRover. This connects the low-level functionality of the driver to the higher-level features of the RxnRover platform. As well as supplied the User-Interface in RxnRover.

In some cases, if a device driver already exists, you may only need to focus on developing the plugin that integrates with RxnRover.

.. hint:: 
    You can visit the `Instrument Driver Network (IDNet) <https://www.ni.com/en/support/downloads/instrument-drivers.html>`_ Or the `Rxn Rover Plugin Catalog <https://rxnrover.github.io/PluginCatalog>`__  to see if your instrument already has a LabVIEW-supported driver.

Create Device Driver
---------------------

If the device does not already have a pre-existing driver, you'll need to create one. Instrument drivers are responsible for handling the communication and control of the device with your computer.

For more detailed guidelines, refer to:  
`Developing LabVIEW Plug and Play Instrument Drivers <https://www.ni.com/en/support/downloads/instrument-drivers/tools-resources/developing-labview-plug-and-play-instrument-drivers.html>`_
Or see our :ref:`tutorial on creating a driver <create-new-driver>`

Driver Development Checklist:

- **Understand the communication protocol** used by the device (e.g., USB, GPIB, Ethernet).
- **Test basic connectivity** with the device.
- **Create functions for controlling and querying the device** (e.g., setting parameters, reading data, etc.).
- **Handle errors and exceptions** to ensure robust communication.

Create the Plugin From Template
-------------------------------

Once you have your driver ready (or confirmed that one already exists), follow these steps to create the plugin:

1. Ensure you have correctly installed the `DynamicReentrant <https://github.com/RxnRover/DynamicReentrant>`_ library.

2. **Download the Template**

   - Download or clone the `Generic Plugin Template <https://github.com/RxnRover/template_general_plugin>`_ from GitHub.

   - Extract the ZIP and rename the folder (recommended: ``General Plugin Template``).

3. **Integrate into LabVIEW** *(optional but recommended)*

   - Copy the extracted folder to: ``<LabVIEW Data>/ProjectTemplates/Source/General Plugin Template``

   - Move the ``general_plugin_template.xml`` file to: ``<LabVIEW Data>/ProjectTemplates/MetaData/``

4. **Create a New Plugin Instance**

   Either:

    - Copy and rename the template folder.

    - Use the LabVIEW Project Creator to make a new project from the template.

   Place your new plugin folder in: ``<Documents>/RxnRover/CustomPlugins``

5. **Customize the Plugin**

   - Rename ``Generic Plugin Template.lvproj`` and ``Rename to match project.lvlib`` to match your instrument.

   - Edit ``plugin.conf`` to reflect your new plugin:

    - Plugin name (We'd recommend naming it after your instrument, however it can be whatever you'd like just not blank)
    - Plugin type (Must be one of the RxnRover-supported and recognized plugin types)
    - Controller type (Must be one of the RxnRover-supported and recognized controller types)

   - Edit ``Main.vi`` :

    - Update the title and display units.
    - Follow the instructions on the front panel.
    - Adjust the numeric formatting of fields.
    - Set default values for all front panel controls.

Modify the Plugin Template
--------------------------

Once you open ``Main.vi`` and navigate to the block diagram, you’ll see several parallel loops. Most modifications will be made in the following three loops:

- Instrument Manager Loop (IML)
- Acquisition Message Loop (AML)
- Logging Message Loop (LML)

.. note::
    If you are not changing the functionality of the plugin (write one setpoint, read one value, start, stop, etc.) you probably only need to change the Instrument Manager Loop (IML), Logging Message Loop (LML), and Acquisition Message Loop (AML).


**IML Changes**

In the ``Initialize`` case:

- Modify the **instrument state** typedef according to the instructions in the code. This typedef represents the state of the instrument. For example, a heater plugin might include:
  
  - Temperature setpoint
  - Current temperature
  - Heating status
  - Error flags

- For each state added, create a corresponding ``Get State`` message case in the IML. This allows the plugin to query the instrument for that information.

  Follow the instructions in the ``--- Copy for Get State Messages ---`` case and refer to the example cases listed below it in the case structure.

- Modify the following cases to integrate with your specific instrument:

  - ``Start Instrument``
  - ``Stop Instrument``
  - ``Change Setpoint``

- In the ``Set VISA Resource`` case, update the ``Init.vi -> Connecting`` case to correctly verify and initialize the instrument connection.

**AML Changes**

In the ``Initialize`` case of the AML:

- Modify, add, or remove items in the **Acquisition Messages** array. Each item should trigger a corresponding message case in the IML.
- Ensure all messages exactly match the IML case names.
- Make sure that the ``Report`` message is the **last** item in the array.

**LML Changes**

In the ``Initialize`` case of the LML:

- Update the ``Channels`` array to correspond to the instrument states listed in the AML's Acquisition Messages array.
- This ensures the correct data is logged to the CSV file.

Follow the :ref:`tutorial on creating a VIPM package <create-new-vipm-package>` to package your plugin for automated installation and distribution.
After creating your plugin consider `making a submission <https://rxnrover.github.io/PluginCatalog/submissions/plugin_submission_form.html>`__ to the `Rxn Rover Plugin Catalog <https://rxnrover.github.io/PluginCatalog>`__




