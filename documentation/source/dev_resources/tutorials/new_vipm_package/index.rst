.. _create-new-vipm-package:

Create a VIPM Package
=====================

The `Virtual Package Manager (VIPM) <https://www.vipm.io/>`_ is a tool for managing LabVIEW packages, including instrument drivers and plugins. Using VIPM, you can create a package from your LabVIEW project that can be easily shared and installed by others.

This tutorial will guide you through the process of creating a new VIPM package for use with the RxnRover platform.

General Steps to Create a VIPM Package
--------------------------------------

1. **Open VIPM**  
   Launch the VI Package Manager application.

2. **Create a New Package**  
   - Click the **Open VI Package Builder** icon in the VIPM toolbar (top-left).
   - In the Package Builder menu, select **Create New**.
   - Set the **Source Directory** to the root folder of your LabVIEW project.
   - Set the **Product Name** to a meaningful name (e.g., `"IR Sensor Plugin"`).
   - Set the **Company Name** to:
   - `'RxnRover'` if you're a first-party developer.
   - Your own company name if you're a third-party developer.

   This will create a new ``.vipb`` (VI Package Builder) file named after the Product Name in your project directory.

3. **Configure Basic Build Information**  
   - **Source Directory**: Points to your LabVIEW project root.
   - **Build Output Directory**: Choose a location like ``<your-workspace>\VIPMPackages``.

.. note::
   The rest of the configuration differs slightly depending on whether you're a **first-party** (RxnRover) or **third-party** developer.

First-Party Plugins (RxnRover Developers)
-----------------------------------------

These instructions are for RxnRover developers creating official plugins or drivers.

1. **Display Information**

- **Product Name**: Name of your plugin (e.g., "IR Sensor Plugin").
- **Icon**: Optional.
- **Company Name**: `RxnRover`
- **Author Name**: `RxnRover`
- **Product Homepage**: ``https://github.com/RxnRover/<your-plugin-repo>``
- **Copyright**: `Copyright (c) <year> RxnRover`
- **License Agreement**: Path to ``LICENSE.txt`` in your project folder.
- **Summary**: Short description (e.g., "A plugin for IR sensor data acquisition and processing").

2. **Destinations**

- Set install location to:
  - ``Documents\RxnRover\Plugins\<plugin-type>\<Product Name>`` for plugins.
  - ``instr.lib\RxnRover\<Product Name>`` for drivers.

- **Package Filename**:  
  Use this format:  
  ``rxn_rover_lib_<product_name>-X.X.X.X.vip``

Continue with the rest of the tutorial. 

Third-Party Plugins
-------------------

For external developers who wish to make their plugin compatible with RxnRover.

1. **Display Information**

- **Product Name**: e.g., `"IR Sensor Plugin"`
- **Icon**: Optional.
- **Company Name**: Your organization.
- **Author Name**: You or your organization.
- **Product Homepage**: e.g., your GitHub repo.
- **Copyright**: `Copyright (c) <year> <Your Company>`
- **License Agreement**: Path to ``LICENSE.txt`` in your project folder.
- **Summary**: A brief description of the plugin.
- **Description**: Provide a more detailed explanation of the plugin’s features and how to use it.

2. **Destinations**

- For plugins:  
  ``Documents\RxnRover\CustomPlugins\<plugin-type>\<Product Name>``

- For drivers:  
  ``instr.lib\RxnRover\<Product Name>``

.. note::
   Keep install paths consistent with RxnRover’s plugin architecture to ensure compatibility.

3. **Source File Settings**

- Include:
  - All required ``.vi`` files
  - Configuration files
  - Documentation (e.g., ``README.md``, ``LICENSE.txt``)

- Exclude:
  - ``.git``, ``.gitignore``, ``.lvproj``, other unnecessary dev files.

- Set the **Package Source Destination** to the install path you defined in the **Destinations** tab.
- This applies to all subfolders unless explicitly overridden.

 4. **Package Dependencies**

- VIPM will auto-detect most dependencies.
- Manually add:
  - `RxnRover` (core library)
  - `Dynamic Reentrant` (required for plugin loading)
  - Any other required plugins or drivers.

.. important::
   If your plugin depends on a specific driver—or vice versa—be sure to include that in the dependencies.


5. **Install Requirements**

- Set compatible:
  - **Operating Systems**
  - **LabVIEW Versions**

Build and Share the Package
---------------------------

1. Once configuration is complete, click **Build** in the VIPM toolbar.
2. The output ``.vip`` file will be generated in your chosen directory.
3. Run the ``.vip`` file to install and test the package using VIPM.

Share your ``.vip`` file with others or submit it to the RxnRover Plugin Catalog for inclusion.

.. _plugin_submission:

After creating your plugin consider `making a submission <https://rxnrover.github.io/PluginCatalog/submissions/plugin_submission_form.html>`__ to the `Rxn Rover Plugin Catalog <https://rxnrover.github.io/PluginCatalog>`__
