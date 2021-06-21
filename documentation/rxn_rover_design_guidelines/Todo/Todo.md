# Publishing Todos

\* Priority
- [ ] \*\*\* Read paper in its entirety as a reviewer.
- [x] \*\*\* Scheme for introduction and (possibly) TOC
    - [x] Rxn Rover logo
    - [x] Clipart computer
    - [x] LC image
    - [x] Clipart rxn flasks with color
    - [x] Optimization representation - a cycle?
- [x] Add figs
- [x] Fix references


---
## Documentation
- [x] User guide
    - [x] Installation
    - [x] Getting Started
        - [x] Overview of Rxn Rover UI
        - [x] How to install plugins
            - [x] Document possible plugin locations
        - [x] Basic workflow
    - [x] Tutorials
        - [x] Mock setup tutorial
    - [x] Troubleshooting
        - [x] Any warnings?
        - [x] Recovering data from a "No Experiment" run.
    - [x] About Us
        - [x] Blurb about the Rxn Rover organization
            - [x] part of Ames Lab and/or ISU?
        - [x] Contact Us
            - [x] Point to GitHub issues
- [ ] Dev guide
    - [ ] API Docs
        - [x] Get a build system working
        - [ ] Fix issues in rendering
        - [ ] Complete documentation where gaps exist
    - [ ] Contribution Guide
        - [ ] Figure out and document our process for pull requests from other users.
        - [x] Plugins
            - [x] Plugins repo will host links to other individual plugin repos.
            - [x] Super repo
            - [x] Third-party vs first-party plugin sections
            - [x] Form to fill in for pull requests
            - [ ] Maybe report downloads per week? Does GitHub have this capability?
    - [ ] Tutorials
        - [ ] How to add new plugin class
        - [ ] Plugin type
    - [ ] Design Decisions
        - [ ] Variant attributes between Rxn Rover and plugins. Allows the flexibility of child plugin servers to handle parent plugins and *vice versa*. This also makes it easier to generalize the packing and unpacking of state information. Handles missing or additional information gracefully.
        - [ ] Plugin server classes
        - [ ] Stand-alone plugins
        - [x] Logs with no experiment get stored in the temporary directory of your OS under a directory `lvtemporary_<number>.RxnRover`. This means you can still recover your data if you forgot to create an experiment (at least for a while).
- [ ] Add some example plugin names to the Plugin Catalog Submission Guide
- [ ] Twitter with release announcement
    - [ ] Talk to IT or group Gmail
- [ ] \* Cite ``<paper>`` if you use software


- [ ] \*\* The instrument state interfaces need to be very clearly documented since we are using variant attributes to send the information now.


---
## Programming

### Priority
- [x] \* Variant attributes
	- [x] Create proof-of-concept
		- [x] LVZMQ
		- [x] LabVIEW Queues (ended up being unnecessary)
		- [x] Cluster to Variant
	- [x] Implement and test with mock instrumentation
		- [x] Mock Pump
		- [x] Mock Temperature Controller
	- [x] Implement and test in real instrumentation
		- [x] SQSnobFit
		- [x] DRO
			- [x] for Reactions
			- [x] for Testing
		- [x] Waters UPLC (Average)
		- [x] ChromTech MX-Class
		- [x] ~~ChromTech Series I~~ (not worrying about this until it has been tested)
		- [x] ChromTech Series III
		- [x] Omega CS8DPt
- [x] \* Rename indicators
	- [x] Make sure the new name is saved between sessions in the Experiment file.
	- [x] Reset instance name to blank for each plugin loaded.
	- [x] Is it possible to rename the indicator after a plugin has been loaded? Not at the moment. It is not hard to restart and rename a plugin right now tho. Restarting a plugin has the drawback of making the status indicators out of order, so a reordering function would be useful.
- [x] \* Update Waters UPLC Averaging analyzer in Documents with most recent bug fixes
- [ ] \* Update plugin template.
	- [ ] Rename to "plugin template".
	- [ ] A bunch of other stuff will be here.
- [ ] \* Look at Dynamic Reentrant to decide distribution method

### Bugs
- [x] When loading from an experiment file, no experiment name is set.
- [x] Make saved vs unsaved experiment into asterisk by experiment name
- [x] What happens if two plugin instances are named the same? Rxn Rover does not complain and they appear to be kept separate. I think this behavior is fine.
- [x] \* Gracefully handle invalid plugin type given in Load Plugin VI.
	- [ ] List possible fixes. Fix spelling error, download all plugins, etc.
- [x] \* Gracefully handle when plugin resource selection is cancelled...
	- [x] I'm thinking of doing a retry/abort system like when shutting down, except ask if you'd like to keep waiting or abort. This isn't exactly graceful, but you don't have to kill the labview task anymore.
- [x] \* When no experiment is started, you keep getting prompted for where to output logs when you try to start the hardware.
	- [x] Send the logs to a temporary directory, where they can be recovered if needed.

### Icing
- [ ] Add ability to reorder plugins, and, more importantly, indicators.
	- [ ] Revisit how indicator panels are being loaded.
- [ ] Possibly a better serialization of plugins. Think about converting private data (a named cluster, I think) to JSON or a variant with attributes.
- [ ] Test the ChromTech Series I control panel.
- [ ]  \* ~~Warn about plugin opening active VISA resource (with option to suppress)~~
	- This would need to be done on a per-plugin basis. A check in the Init VI should suffice.
	- Exclusive locks do not appear to work. Not sure how else to do this.
- [ ] Simulate plugin failure with a user test to determine "right" amount of time to wait before asking to abort plugin.