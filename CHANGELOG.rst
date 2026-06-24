Changelog
=========

v1.5.1
------

**Features**

- Multiple analyzer plugins can now be loaded simultaneously.

**Fixes**

- Updated status box message from "Submitting Yield" to "Submitting Results" when sending analyzer results to an optimizer
- Removed `docs/{venv,build}` directories from packaging

**Known Issues**

- Executable cannot load plugins and should not be used.
- Currently assumes single-objective optimizer and only sends first objective value in list

v1.5.0
------

**Features**

- Added logging library and logging messages to portions of the codebase.
- Log level option was added to user preferences.
  - **For existing user preference files**, the new entry will be added to the preferences file with a default value of ``INFO`` and a warning will be logged stating that this occurred.

**Fixes**

- Fixed dynamically loaded class paths to include executable name as directory in the absolute path.
- Updated standalone EXE build specification to not exclude unused VIs. This ensures that the plugin server LVClasses are still included without unnecessary extra code.
- Added ``LICENSE.txt`` to be installed alongside the EXE in the standalone EXE build specification.
- Changed existing plugin error logs to use new logging system.

**Known Issues**

- Executable cannot load plugins and should not be used.

Template (change to anticipated version)
----------------------------------------

Follows `semantic versioning <semver.org>`__.

**Breaking Changes**

- 

**Features**

- 

**Fixes**

- 

**Known Issues**

- 
