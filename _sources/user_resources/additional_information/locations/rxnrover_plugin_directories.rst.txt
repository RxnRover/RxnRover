.. _rxnrover-plugin-directories:

Plugin Directories
==================

.. _which-rxnrover-plugin-directory:

Where are the plugin directories?
---------------------------------

Rxn Rover searches for plugins in three locations, each with a different 
purpose. Plugins placed anywhere else on the file system will not be loaded.
The three plugin locations are described below, where ``<documents>`` is the 
Documents folder of the current user and ``<rxnrover>`` is the location of the
Rxn Rover installation.

=============================  ================================================
Plugin Directory Location      Description
=============================  ================================================
``<documents>/Plugins``        Location for plugins downloaded by the user 
                               from the `Plugin Catalog 
                               <https://rxnrover.github.io/PluginCatalog>`__.
``<documents>/CustomPlugins``  Location for plugins that are in development on 
                               the local system.
``<rxnrover>/Plugins``         Reserved for plugins shipped with or downloaded 
                               by Rxn Rover (not implemented).
=============================  ================================================