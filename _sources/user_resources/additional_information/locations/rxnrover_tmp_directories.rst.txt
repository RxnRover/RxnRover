.. _rxnrover-tmp-directories:

Temporary Directories
=====================

When is data written to a temporary directory?
----------------------------------------------

When Rxn Rover is used with the "Continue without Experiment" option, some 
files, like plugin data logs, are written in a unique directory generated in a 
temporary directory. This helps to prevent data loss if the temporary data 
logs must be referenced at a prior date.

Starting without an experiment file is a feature primarily added to aid in 
rapid testing and debugging during software development. Test runs during 
development are usually short, so the files are small and should not noticably 
affect system performance. However, new plugins should be tested on the scale 
of days to ensure robustness, which can cause the log files to become quite 
large. Therefore, it is recommended to 
:ref:`create an Experiment <create-new-experiment>` for long test runs.

There are also valid use cases during routine usage of Rxn Rover as well, such 
as testing newly downloaded plugins and troubleshooting hardware. If the 
"Continue without Experiment" option is used frequently and for long periods 
of time, many large files may be created in the temporary directory, which you 
may want to delete periodically to free space on your system.

.. _lv-tmp-directory:

Where is the temporary directory?
---------------------------------

The location of the temp directory used by LabVIEW varies by operating system. 
To find which temporary directory LabVIEW is using, or change this temporary 
directory, go to Tools > Options... > Paths and select "Temporary Directory" 
from the dropdown list. Common temp locations are listed below:

================  =============================================================
Operating System  Temporary Directory Location
================  =============================================================
Linux             /tmp
..                /var/tmp
Mac OS            ~/Library/Caches/TemporaryItems
Windows           %userprofile%\\AppData\\Local\\Temp
================  =============================================================

.. _which-rxnrover-tmp-directory:

Which directories are from Rxn Rover?
-------------------------------------

All Rxn Rover directories in the temporary directory take the form 
``<tmpdir>/lvtemporary_<random_number>.RxnRover``, where ``<tmpdir>`` is the
:ref:`temporary directory used by LabVIEW. <lv-tmp-directory>`

Recovering Temporary Rxn Rover Data
-----------------------------------

See :ref:`tutorial <recover-tmp-data>`.

Removing Temporary Rxn Rover Data
---------------------------------

See :ref:`tutorial <clean-tmp-data>`.