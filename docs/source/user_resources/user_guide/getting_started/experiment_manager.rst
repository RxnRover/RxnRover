.. _experiment-manager:

Using the Experiment Manager
============================

When Rxn Rover is run, the first screen a user is presented with is the
"Experiment Manager" window. A new Experiment can be created, or an existing 
Experiment can be loaded. It is also possible to use no Experiment file so 
files are not saved, which is especially useful during software development 
and instrument troubleshooting.

.. _experiment-manager-window:

.. figure:: experiment_manager_window.png
   :alt: Experiment Manager window.
   :scale: 50%
   
   Experiment Manager window.

What is an Experiment?
----------------------

An Experiment is the way Rxn Rover tracks plugins which have been loaded and 
the relationships between plugins. This information is stored in an Experiment
file, which has the ``.rrexpt`` extension. By tracking this information in an
Experiment, Rxn Rover can load the plugins for a specific laboratory setup 
easily saving you the time it would take to configure the setup again.



.. _create-new-experiment:

Creating a New Experiment
-------------------------

To create a new experiment, use the :guilabel:`Create New Experiment` button. This will 
open the "New Experiment" window, where the Experiment Name and Experiment 
Location are chosen. The Experiment Name will also be used as the experiment 
file name, so it should not include characters that would be invalid when 
naming a file (\\/\:\*\?\"\<\>\|). The Experiment Location is the directory 
where the Experiment file, plugin data logs, and other output produced by the
Experiment will reside

.. warning:: 
   Make sure that the Experiment Location does not require admin privilages!

.. _create-experiment-window:

.. figure:: create_experiment_window.png
   :alt: Create new experiment window.
   :scale: 75%
   
   Create new experiment window

.. _use-existing-experiment:

Using an Existing Experiment
----------------------------

An existing Experiment can be used by selecting the :guilabel:`Load Existing Experiment` 
or by double-clicking an entry in the "Recent Experiments" list. 

Load Existing Experiment Button
"""""""""""""""""""""""""""""""

When the :guilabel:`Load Existing Experiment` button is pressed, a file browser will 
open. Use this file browser to select the desired Experiment file 
(``*.rrexpt``) to load and Rxn Rover will attempt to load all plugins and 
connect to the instrumentation.

Recent Experiments List
"""""""""""""""""""""""

When an entry in the "Recent Experiments" list is double-clicked, Rxn Rover 
will attempt to load the Experiment file from the path specified, loading all
plugins and connecting to the instrumentation. 

Use the :guilabel:`Clear` button to the top-right of the "Recent Experiments" list to 
remove all recent experiment items. It is currently not possible to remove a 
single recent experiment, although a recent experiment entry will be removed 
if Rxn Rover cannot find the Experiment file.

.. _use-no-experiment:

Continuing without an Experiment
--------------------------------

It is possible to use Rxn Rover without an active Experiment using the 
:guilabel:`Continue without Experiment` button. This will launch Rxn Rover without an
associated Experiment file, but still allows Rxn Rover to function as if an
Experiment was loaded. Attempting to save at any point in No Experiment mode
will open the "New Experiment" window (see :ref:`New Experiment Image above <create-experiment-window>`). When exitting Rxn Rover, the "New Experiment"
window will also open to prompt you to save the setup as an Experiment, or
press :guilabel:`Cancel` to exit without saving.

.. note::
   
   Plugin data logs and other files are still created in a :ref:`temporary directory <rxnrover-tmp-directories>`, if you need to recover any data.