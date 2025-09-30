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

.. In order to run Rxn Rover, you need the free LabVIEW runtime engine,
.. acquired from the `LabVIEW website 
.. <https://www.ni.com/en-us/support/downloads/software-products/download.labview-runtime.html#369481>`__ 
.. or a developer version of LabVIEW.

In order to run Rxn Rover, you need to acquire a `developer version of LabVIEW
<https://www.ni.com/en-us/shop/product/labview.html>`__. We are working on an
executable version that can be run with the free `LabVIEW runtime engine
<https://www.ni.com/en-us/support/downloads/software-products/download.labview-runtime.html#369481>`__,
but the dynamic nature of Rxn Rover has made this step difficult to implement.

You also need the Dynamic Reentrant library, developed by the Rxn Rover team
to facilitate communication between Rxn Rover and its plugins. You can install
this library using either a ``.vip`` file (via VIPM) or a ZIP archive (for manual installation).

The latest release is available at:
`Dynamic Reentrant's release page <https://www.github.com/RxnRover/DynamicReentrant/releases/latest>`_

- **VIPM Install:** Download the ``.vip`` package from the Releases page and install it using the VI Package Manager (VIPM).
- **Manual Install:** Download the ZIP archive from the same page. Extract its contents into your LabVIEW installation's ``user.lib`` directory:

  ::

     <labview>/user.lib/

  where ``<labview>`` refers to the directory where LabVIEW is installed. ``user.lib`` is where shared or user-created libraries are placed.


Rxn Rover Setup
---------------

Once the prerequisites are installed:

Install via VIPM:
~~~~~~~~~~~~~~~~~

#. Download the ``.vip`` from `Rxn Rover's release page <https://github.com/RxnRover/RxnRover/releases/latest>`__.
#. Open ``.vip`` the VIPM application.
#. Follow the prompts to install Rxn Rover. 
#. Double-click ``Main.vi`` in the top directory of the repository.
#. Click the "Run" arrow in the top left of the window that opens to run
   Rxn Rover.

Manual install:
~~~~~~~~~~~~~~~

#. Clone or download/extract the `Rxn Rover repository <https://github.com/RxnRover/RxnRover>`__. into your ``Documents`` directory.

#. Double-click ``Main.vi`` in the top directory of the repository.

#. Click the "Run" arrow in the top left of the window that opens to run
   Rxn Rover.