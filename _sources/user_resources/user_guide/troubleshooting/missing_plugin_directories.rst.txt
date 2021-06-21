.. _missing-plugin-directories:

My Plugin Directories are Missing!
==================================

Issue
-----

One or more of the :ref:`rxnrover-plugin-directories` are missing.

Cause
-----

One or more :ref:`rxnrover-plugin-directories` have been deleted, or Rxn Rover
has not generated the directories yet.

Solutions
---------

Rxn Rover generates the :ref:`rxnrover-plugin-directories` when it is run for 
the first time, and recreates any missing plugin directories each time it is
run. Try running Rxn Rover :ref:`without an experiment <use-no-experiment>` 
to regenerate the plugin directories without the extra steps of creating a 
dummy experiment.