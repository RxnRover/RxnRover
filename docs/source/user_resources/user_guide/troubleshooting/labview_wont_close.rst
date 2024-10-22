LabVIEW will not close
======================

Issue
-----

Rxn Rover exitted or crashed, and now either the Rxn Rover project or 
LabVIEW will not exit.

If Rxn Rover crashes, you may be left with a situation where Rxn Rover has 
closed, but either LabVIEW will not exit or some libraries are still locked 
as if Rxn Rover were running. This is also sometimes accompanied by LabVIEW 
using much more CPU % than it should be using.

Cause
-----

This error appears to occur when a plugin was not shut down properly and some
reentrant VIs are still running in the background.

Solutions
---------

End the LabVIEW process. For example, in Windows, open the Task Manager, find 
the LabVIEW process, and choose End Process. The next time Rxn Rover is 
opened, you will be asked to recover the project, which you should do.

.. warning::
   
   Forcing the LabVIEW process to end has the possibility of losing data and 
   should only be done as a last resort! However, LabVIEW makes frequent 
   backups of unsaved files, so the chance of losing data appears minimal.