Changelog
=========

dev
---

**Features**

- Added logging library and logging messages to portions of the codebase.
- Log level option was added to user preferences.
  - **For existing user preference files**, the new entry will be added to the preferences file with a default value of ``INFO`` and a warning will be logged stating that this occurred.


**Fixes**

- Fixed dynamically loaded class paths to include executable name as directory in the absolute path.
- Updated standalone EXE build specification to not exclude unused VIs. This ensures that the plugin server LVClasses are still included without unnecessary extra code.
- Added ``LICENSE.txt`` to be installed alongside the EXE in the standalone EXE build specification.
