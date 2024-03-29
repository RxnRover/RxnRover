﻿<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str">Rxn Rover (pronounced Reaction Rover) is an open-source, general reaction automation software. Similarly, Rxn Rover connects an optimization algorithm - machine learning or non-machine learning - with a reactor and analysis instrumentation to create a self-optimizing system. This system allows the optimizer to control and change the reaction parameters, perform the reaction, analyze the desired results, and choose the next search step with or without human intervention. Designed knowing that each research laboratory and experiment presents different challenges, Rxn Rover supports various optimization algorithms, an array of analysis tools, and a customizable, modular reactor setup to allow for arbitrary reactor designs using provided or user-created plugins. Rxn Rover and its plugins are designed to be easy to use, understand, and modify with little to no programming experience, but complex enough to support intricate, multi-step reactions.</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="assets" Type="Folder">
			<Item Name="full_color_logo_3600x3600.ico" Type="Document" URL="../assets/full_color_logo_3600x3600.ico"/>
		</Item>
		<Item Name="Config" Type="Folder">
			<Item Name="DefaultUserSettings.ini" Type="Document" URL="../Config/DefaultUserSettings.ini"/>
		</Item>
		<Item Name="Display VIs" Type="Folder">
			<Item Name="Hardware Subpanels.vi" Type="VI" URL="../Display VIs/Hardware Subpanels.vi"/>
			<Item Name="Ready Status.vi" Type="VI" URL="../Display VIs/Ready Status.vi"/>
			<Item Name="Remove Control Panel.vi" Type="VI" URL="../Sub VIs/Remove Control Panel.vi"/>
			<Item Name="Remove Entry.vi" Type="VI" URL="../Sub VIs/Remove Entry.vi"/>
			<Item Name="Set Unsaved Changes in Title.vi" Type="VI" URL="../Display VIs/Set Unsaved Changes in Title.vi"/>
			<Item Name="Update Status Event.vi" Type="VI" URL="../events/Update Status Event.vi"/>
			<Item Name="Update Status.vi" Type="VI" URL="../Display VIs/Update Status.vi"/>
			<Item Name="Update VI List.vi" Type="VI" URL="../Display VIs/Update VI List.vi"/>
			<Item Name="Update Window Title.vi" Type="VI" URL="../Display VIs/Update Window Title.vi"/>
		</Item>
		<Item Name="events" Type="Folder">
			<Item Name="Generate New Log Path Event.vi" Type="VI" URL="../Display VIs/Generate New Log Path Event.vi"/>
			<Item Name="Hardware List Updated.vi" Type="VI" URL="../events/Hardware List Updated.vi"/>
			<Item Name="Hardware Update Event Data.ctl" Type="VI" URL="../events/Hardware Update Event Data.ctl"/>
			<Item Name="Hardware Updated Event.vi" Type="VI" URL="../events/Hardware Updated Event.vi"/>
			<Item Name="Message Received Event.vi" Type="VI" URL="../events/Message Received Event.vi"/>
			<Item Name="New Hardware Selected Event.vi" Type="VI" URL="../events/New Hardware Selected Event.vi"/>
			<Item Name="New Hardware Selected.vi" Type="VI" URL="../events/New Hardware Selected.vi"/>
			<Item Name="New Log Path Event.vi" Type="VI" URL="../events/New Log Path Event.vi"/>
			<Item Name="New Parameters Event.vi" Type="VI" URL="../events/New Parameters Event.vi"/>
			<Item Name="New Yield Event.vi" Type="VI" URL="../events/New Yield Event.vi"/>
			<Item Name="Process Stopped Cluster.ctl" Type="VI" URL="../events/Process Stopped Cluster.ctl"/>
			<Item Name="Process Stopped Event.vi" Type="VI" URL="../events/Process Stopped Event.vi"/>
			<Item Name="Stop Event.vi" Type="VI" URL="../Plugin Servers/Stop Event.vi"/>
			<Item Name="Submit Goal Event.vi" Type="VI" URL="../events/Submit Goal Event.vi"/>
			<Item Name="VI List Event.vi" Type="VI" URL="../Plugin Servers/VI List Event.vi"/>
		</Item>
		<Item Name="Experiment" Type="Folder">
			<Item Name="Experiment File.lvlib" Type="Library" URL="../Experiment/Experiment File/Experiment File.lvlib"/>
			<Item Name="Experiment Manager.lvlib" Type="Library" URL="../Experiment/Experiment Manager/Experiment Manager.lvlib"/>
		</Item>
		<Item Name="File IO" Type="Folder">
			<Item Name="File IO.lvlib" Type="Library" URL="../File IO/File IO.lvlib"/>
		</Item>
		<Item Name="Plugin Manager" Type="Folder">
			<Item Name="Filter Plugins.vi" Type="VI" URL="../Sub VIs/Initialization/Filter Plugins.vi"/>
			<Item Name="Load Plugins.vi" Type="VI" URL="../Sub VIs/Initialization/Load Plugins.vi"/>
			<Item Name="Plugin Manager.lvlib" Type="Library" URL="../Plugin Manager/Plugin Manager.lvlib"/>
		</Item>
		<Item Name="Plugin Servers" Type="Folder">
			<Item Name="Add Analyzer.vi" Type="VI" URL="../Plugin Servers/Add Analyzer.vi"/>
			<Item Name="Add Hardware.vi" Type="VI" URL="../Plugin Servers/Add Hardware.vi"/>
			<Item Name="Add Optimizer.vi" Type="VI" URL="../Plugin Servers/Add Optimizer.vi"/>
			<Item Name="Assign Parameters to Hardware Dialog.vi" Type="VI" URL="../Sub VIs/Assign Parameters to Hardware Dialog.vi"/>
			<Item Name="Controller Array.lvclass" Type="LVClass" URL="../Plugin Servers/Controller Array/Controller Array.lvclass"/>
			<Item Name="Generic Optimizer.lvclass" Type="LVClass" URL="../Plugin Servers/Generic Optimizer/Generic Optimizer.lvclass"/>
			<Item Name="Generic Plugin.lvclass" Type="LVClass" URL="../Plugin Servers/Controller/Generic Plugin.lvclass"/>
			<Item Name="Initialize Plugin.vi" Type="VI" URL="../Plugin Servers/Initialize Plugin.vi"/>
			<Item Name="LC Parser.lvclass" Type="LVClass" URL="../Plugin Servers/LC Parser/LC Parser.lvclass"/>
			<Item Name="Load Plugin Dialog.vi" Type="VI" URL="../Plugin Servers/Load Plugin Dialog.vi"/>
			<Item Name="Parameter to Hardware Map.lvclass" Type="LVClass" URL="../Plugin Servers/Parameter to Hardware Map/Parameter to Hardware Map.lvclass"/>
			<Item Name="Pump Controller.lvclass" Type="LVClass" URL="../Plugin Servers/Pump Controller/Pump Controller.lvclass"/>
			<Item Name="Stop Analyzer VI.vi" Type="VI" URL="../Sub VIs/Stop Analyzer VI.vi"/>
			<Item Name="Stop Optimizer VI.vi" Type="VI" URL="../Sub VIs/Stop Optimizer VI.vi"/>
			<Item Name="Stop Process VI.vi" Type="VI" URL="../Sub VIs/Stop Process VI.vi"/>
			<Item Name="Temperature Controller.lvclass" Type="LVClass" URL="../Plugin Servers/Temperature Controller/Temperature Controller.lvclass"/>
		</Item>
		<Item Name="Post-Build" Type="Folder">
			<Item Name="Add VIs to Search Path.vi" Type="VI" URL="../Post Build/Add VIs to Search Path.vi"/>
		</Item>
		<Item Name="Sub VIs" Type="Folder">
			<Item Name="Initialization" Type="Folder">
				<Item Name="Initialize Analyzer from Experiment Cluster.vi" Type="VI" URL="../Sub VIs/Initialization/Initialize Analyzer from Experiment Cluster.vi"/>
				<Item Name="Initialize Hardware from Experiment Cluster.vi" Type="VI" URL="../Sub VIs/Initialization/Initialize Hardware from Experiment Cluster.vi"/>
				<Item Name="Initialize Optimizer from Experiment Cluster.vi" Type="VI" URL="../Sub VIs/Initialization/Initialize Optimizer from Experiment Cluster.vi"/>
				<Item Name="Initialize Parameter to Hardware Map from Experiment Cluster.vi" Type="VI" URL="../Sub VIs/Initialization/Initialize Parameter to Hardware Map from Experiment Cluster.vi"/>
			</Item>
			<Item Name="Add Process Queue Reference.vi" Type="VI" URL="../Sub VIs/Add Process Queue Reference.vi"/>
			<Item Name="Add VI to Tab Control.vi" Type="VI" URL="../Sub VIs/Add VI to Tab Control.vi"/>
			<Item Name="Cache Message.vi" Type="VI" URL="../Sub VIs/Cache Message.vi"/>
			<Item Name="Check Loop Error.vi" Type="VI" URL="../Sub VIs/Check Loop Error.vi"/>
			<Item Name="Choose Idle or Error State.vi" Type="VI" URL="../Sub VIs/Choose Idle or Error State.vi"/>
			<Item Name="Error Handler - Main VI State Machine.vi" Type="VI" URL="../Sub VIs/Error Handler - Main VI State Machine.vi"/>
			<Item Name="Find Available Queue.vi" Type="VI" URL="../dynamic/Find Available Queue.vi"/>
			<Item Name="Find Subpanel on Page.vi" Type="VI" URL="../Sub VIs/Find Subpanel on Page.vi"/>
			<Item Name="Load Plugin Front Panel.vi" Type="VI" URL="../Sub VIs/Load Plugin Front Panel.vi"/>
			<Item Name="Queue Message.vi" Type="VI" URL="../Sub VIs/Queue Message.vi"/>
			<Item Name="Save Reaction Rover Data to Experiment File.vi" Type="VI" URL="../Sub VIs/Save Reaction Rover Data to Experiment File.vi"/>
			<Item Name="Split Name and Message.vi" Type="VI" URL="../Sub VIs/Split Name and Message.vi"/>
			<Item Name="test Message Queue.lvlib" Type="Library" URL="../Sub VIs/Message Queue/test Message Queue.lvlib"/>
			<Item Name="Variant to Data String.vi" Type="VI" URL="../Sub VIs/Variant to Data String.vi"/>
		</Item>
		<Item Name="Type Definitions" Type="Folder">
			<Item Name="Data.ctl" Type="VI" URL="../Type Definitions/Data.ctl"/>
			<Item Name="Error Levels.ctl" Type="VI" URL="../Type Definitions/Error Levels.ctl"/>
			<Item Name="Response Commands.ctl" Type="VI" URL="../Type Definitions/Response Commands.ctl"/>
			<Item Name="State.ctl" Type="VI" URL="../Type Definitions/State.ctl"/>
		</Item>
		<Item Name="User Preferences" Type="Folder">
			<Item Name="User Preferences File.lvclass" Type="LVClass" URL="../User Preferences/User Preferences File.lvclass"/>
		</Item>
		<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="Dynamic Reentrant.lvlib" Type="Library" URL="/&lt;userlib&gt;/Dynamic Reentrant/Dynamic Reentrant.lvlib"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Compare Two Paths.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Compare Two Paths.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Equal Comparable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Comparison/Equal/Equal Comparable/Equal Comparable.lvclass"/>
				<Item Name="Equal Functor.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Comparison/Equal/Equal Functor/Equal Functor.lvclass"/>
				<Item Name="Equals.vim" Type="VI" URL="/&lt;vilib&gt;/Comparison/Equals.vim"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Generate Temporary File Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Generate Temporary File Path.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get LV Class Default Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value.vi"/>
				<Item Name="Get LV Class Path.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Path.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVPositionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPositionTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Search Unsorted 1D Array Core.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Helpers/Search Unsorted 1D Array Core.vim"/>
				<Item Name="Search Unsorted 1D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Search Unsorted 1D Array.vim"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Rxn Rover" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{B511CD8F-BE21-4470-A7C4-3ACBADFC72C8}</Property>
				<Property Name="App_INI_GUID" Type="Str">{78EABFCD-5B97-4F87-AF3F-FF129EE73305}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{2CE40C4E-446A-4350-9E11-C85D8BAE8F13}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Rxn Rover</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../build/Rxn Rover</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_postActionVIID" Type="Ref">/My Computer/Post-Build/Add VIs to Search Path.vi</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{09FD23A0-93D2-46A2-B12D-FA02255F97C6}</Property>
				<Property Name="Bld_userLogFile" Type="Path">../build/Reaction Rover/build_log.txt</Property>
				<Property Name="Bld_userLogFile.pathType" Type="Str">relativeToProject</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Rxn Rover.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../build/Rxn Rover/Rxn Rover.exe</Property>
				<Property Name="Destination[0].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../build/Rxn Rover/data</Property>
				<Property Name="Destination[1].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[10].destName" Type="Str">LC Parser</Property>
				<Property Name="Destination[10].path" Type="Path">../build/Rxn Rover/Plugin Servers/LC Parser</Property>
				<Property Name="Destination[10].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[2].destName" Type="Str">Config</Property>
				<Property Name="Destination[2].path" Type="Path">../build/Rxn Rover/Config</Property>
				<Property Name="Destination[2].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[3].destName" Type="Str">documentation</Property>
				<Property Name="Destination[3].path" Type="Path">../build/Rxn Rover/documentation</Property>
				<Property Name="Destination[3].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[4].destName" Type="Str">plugins</Property>
				<Property Name="Destination[4].path" Type="Path">../build/Rxn Rover/plugins</Property>
				<Property Name="Destination[4].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[5].destName" Type="Str">Plugin Servers</Property>
				<Property Name="Destination[5].path" Type="Path">../build/Rxn Rover/Plugin Servers</Property>
				<Property Name="Destination[5].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[6].destName" Type="Str">Generic Controller</Property>
				<Property Name="Destination[6].path" Type="Path">../build/Rxn Rover/Plugin Servers/Generic Controller</Property>
				<Property Name="Destination[6].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[7].destName" Type="Str">Pump Controller</Property>
				<Property Name="Destination[7].path" Type="Path">../build/Rxn Rover/Plugin Servers/Pump Controller</Property>
				<Property Name="Destination[7].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[8].destName" Type="Str">Temperature Controller</Property>
				<Property Name="Destination[8].path" Type="Path">../build/Rxn Rover/Plugin Servers/Temperature Controller</Property>
				<Property Name="Destination[8].path.type" Type="Str">relativeToProject</Property>
				<Property Name="Destination[9].destName" Type="Str">Generic Optimizer</Property>
				<Property Name="Destination[9].path" Type="Path">../build/Rxn Rover/Plugin Servers/Generic Optimizer</Property>
				<Property Name="Destination[9].path.type" Type="Str">relativeToProject</Property>
				<Property Name="DestinationCount" Type="Int">11</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/assets/full_color_logo_3600x3600.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{20145443-B87B-4B36-8D58-B714A83C8BFC}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[10].destinationIndex" Type="Int">8</Property>
				<Property Name="Source[10].itemID" Type="Ref">/My Computer/Plugin Servers/Temperature Controller.lvclass</Property>
				<Property Name="Source[10].type" Type="Str">Library</Property>
				<Property Name="Source[11].destinationIndex" Type="Int">7</Property>
				<Property Name="Source[11].itemID" Type="Ref">/My Computer/Plugin Servers/Pump Controller.lvclass</Property>
				<Property Name="Source[11].type" Type="Str">Library</Property>
				<Property Name="Source[12].destinationIndex" Type="Int">9</Property>
				<Property Name="Source[12].itemID" Type="Ref">/My Computer/Plugin Servers/Generic Optimizer.lvclass</Property>
				<Property Name="Source[12].type" Type="Str">Library</Property>
				<Property Name="Source[13].destinationIndex" Type="Int">10</Property>
				<Property Name="Source[13].itemID" Type="Ref">/My Computer/Plugin Servers/LC Parser.lvclass</Property>
				<Property Name="Source[13].type" Type="Str">Library</Property>
				<Property Name="Source[14].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[14].itemID" Type="Ref">/My Computer/events/Hardware List Updated.vi</Property>
				<Property Name="Source[14].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[14].type" Type="Str">VI</Property>
				<Property Name="Source[15].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[15].itemID" Type="Ref">/My Computer/events/Hardware Updated Event.vi</Property>
				<Property Name="Source[15].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[15].type" Type="Str">VI</Property>
				<Property Name="Source[16].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[16].itemID" Type="Ref">/My Computer/events/Hardware Update Event Data.ctl</Property>
				<Property Name="Source[16].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[16].type" Type="Str">VI</Property>
				<Property Name="Source[17].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[17].itemID" Type="Ref">/My Computer/events/New Hardware Selected.vi</Property>
				<Property Name="Source[17].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[17].type" Type="Str">VI</Property>
				<Property Name="Source[18].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[18].itemID" Type="Ref">/My Computer/events/New Hardware Selected Event.vi</Property>
				<Property Name="Source[18].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[18].type" Type="Str">VI</Property>
				<Property Name="Source[19].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[19].itemID" Type="Ref">/My Computer/events/New Log Path Event.vi</Property>
				<Property Name="Source[19].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[19].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Display VIs</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="Source[20].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[20].itemID" Type="Ref">/My Computer/events/Generate New Log Path Event.vi</Property>
				<Property Name="Source[20].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[20].type" Type="Str">VI</Property>
				<Property Name="Source[21].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[21].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[21].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[21].itemID" Type="Ref">/My Computer/File IO</Property>
				<Property Name="Source[21].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[21].type" Type="Str">Container</Property>
				<Property Name="Source[22].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[22].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[22].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[22].itemID" Type="Ref">/My Computer/User Preferences</Property>
				<Property Name="Source[22].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[22].type" Type="Str">Container</Property>
				<Property Name="Source[3].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[3].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Experiment</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">Container</Property>
				<Property Name="Source[4].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[4].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Plugin Servers</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[4].type" Type="Str">Container</Property>
				<Property Name="Source[5].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[5].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[5].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[5].itemID" Type="Ref">/My Computer/Sub VIs</Property>
				<Property Name="Source[5].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[5].type" Type="Str">Container</Property>
				<Property Name="Source[6].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[6].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[6].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[6].itemID" Type="Ref">/My Computer/Type Definitions</Property>
				<Property Name="Source[6].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[6].type" Type="Str">Container</Property>
				<Property Name="Source[7].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[7].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[7].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[7].itemID" Type="Ref">/My Computer/Plugin Manager</Property>
				<Property Name="Source[7].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[7].type" Type="Str">Container</Property>
				<Property Name="Source[8].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[8].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[8].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[8].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[8].itemID" Type="Ref">/My Computer/Config</Property>
				<Property Name="Source[8].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[8].type" Type="Str">Container</Property>
				<Property Name="Source[9].destinationIndex" Type="Int">6</Property>
				<Property Name="Source[9].itemID" Type="Ref">/My Computer/Plugin Servers/Generic Plugin.lvclass</Property>
				<Property Name="Source[9].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">23</Property>
				<Property Name="TgtF_companyName" Type="Str">Iowa State University</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Rxn Rover</Property>
				<Property Name="TgtF_internalName" Type="Str">Rxn Rover</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021</Property>
				<Property Name="TgtF_productName" Type="Str">Rxn Rover</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{A9B9C488-ADD7-40F6-AAC2-547427E5CB24}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Rxn Rover.exe</Property>
			</Item>
			<Item Name="Rxn Rover Installer" Type="Installer">
				<Property Name="Destination[0].name" Type="Str">Rxn Rover</Property>
				<Property Name="Destination[0].parent" Type="Str">{3912416A-D2E5-411B-AFEE-B63654D690C0}</Property>
				<Property Name="Destination[0].tag" Type="Str">{E900022A-0109-41DA-A00A-423EC44A52F4}</Property>
				<Property Name="Destination[0].type" Type="Str">userFolder</Property>
				<Property Name="DestinationCount" Type="Int">1</Property>
				<Property Name="DistPart[0].flavorID" Type="Str">DefaultFull</Property>
				<Property Name="DistPart[0].productID" Type="Str">{6B440D80-3B0D-43B2-8A06-E2E939AA1006}</Property>
				<Property Name="DistPart[0].productName" Type="Str">NI LabVIEW Runtime 2020 SP1</Property>
				<Property Name="DistPart[0].SoftDep[0].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[0].productName" Type="Str">NI ActiveX Container</Property>
				<Property Name="DistPart[0].SoftDep[0].upgradeCode" Type="Str">{1038A887-23E1-4289-B0BD-0C4B83C6BA21}</Property>
				<Property Name="DistPart[0].SoftDep[1].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[1].productName" Type="Str">NI Deployment Framework 2020</Property>
				<Property Name="DistPart[0].SoftDep[1].upgradeCode" Type="Str">{838942E4-B73C-492E-81A3-AA1E291FD0DC}</Property>
				<Property Name="DistPart[0].SoftDep[10].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[10].productName" Type="Str">NI VC2015 Runtime</Property>
				<Property Name="DistPart[0].SoftDep[10].upgradeCode" Type="Str">{D42E7BAE-6589-4570-B6A3-3E28889392E7}</Property>
				<Property Name="DistPart[0].SoftDep[11].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[11].productName" Type="Str">NI TDM Streaming 19.0</Property>
				<Property Name="DistPart[0].SoftDep[11].upgradeCode" Type="Str">{4CD11BE6-6BB7-4082-8A27-C13771BC309B}</Property>
				<Property Name="DistPart[0].SoftDep[2].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[2].productName" Type="Str">NI Error Reporting 2020</Property>
				<Property Name="DistPart[0].SoftDep[2].upgradeCode" Type="Str">{42E818C6-2B08-4DE7-BD91-B0FD704C119A}</Property>
				<Property Name="DistPart[0].SoftDep[3].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[3].productName" Type="Str">NI LabVIEW Real-Time NBFifo 2020</Property>
				<Property Name="DistPart[0].SoftDep[3].upgradeCode" Type="Str">{00D0B680-F876-4E42-A25F-52B65418C2A6}</Property>
				<Property Name="DistPart[0].SoftDep[4].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[4].productName" Type="Str">NI LabVIEW Runtime 2020 SP1 Non-English Support.</Property>
				<Property Name="DistPart[0].SoftDep[4].upgradeCode" Type="Str">{61FCC73D-8092-457D-8905-27C0060D88E1}</Property>
				<Property Name="DistPart[0].SoftDep[5].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[5].productName" Type="Str">NI Logos 20.0</Property>
				<Property Name="DistPart[0].SoftDep[5].upgradeCode" Type="Str">{5E4A4CE3-4D06-11D4-8B22-006008C16337}</Property>
				<Property Name="DistPart[0].SoftDep[6].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[6].productName" Type="Str">NI LabVIEW Web Server 2020</Property>
				<Property Name="DistPart[0].SoftDep[6].upgradeCode" Type="Str">{0960380B-EA86-4E0C-8B57-14CD8CCF2C15}</Property>
				<Property Name="DistPart[0].SoftDep[7].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[7].productName" Type="Str">NI mDNS Responder 19.0</Property>
				<Property Name="DistPart[0].SoftDep[7].upgradeCode" Type="Str">{9607874B-4BB3-42CB-B450-A2F5EF60BA3B}</Property>
				<Property Name="DistPart[0].SoftDep[8].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[8].productName" Type="Str">Math Kernel Libraries 2017</Property>
				<Property Name="DistPart[0].SoftDep[8].upgradeCode" Type="Str">{699C1AC5-2CF2-4745-9674-B19536EBA8A3}</Property>
				<Property Name="DistPart[0].SoftDep[9].exclude" Type="Bool">false</Property>
				<Property Name="DistPart[0].SoftDep[9].productName" Type="Str">Math Kernel Libraries 2020</Property>
				<Property Name="DistPart[0].SoftDep[9].upgradeCode" Type="Str">{9872BBBA-FB96-42A4-80A2-9605AC5CBCF1}</Property>
				<Property Name="DistPart[0].SoftDepCount" Type="Int">12</Property>
				<Property Name="DistPart[0].upgradeCode" Type="Str">{D84FC73F-D1E0-4C05-A30C-DB882CD1ABD8}</Property>
				<Property Name="DistPartCount" Type="Int">1</Property>
				<Property Name="INST_author" Type="Str">Iowa State University</Property>
				<Property Name="INST_autoIncrement" Type="Bool">true</Property>
				<Property Name="INST_buildLocation" Type="Path">../build/Rxn Rover Installer</Property>
				<Property Name="INST_buildLocation.type" Type="Str">relativeToProject</Property>
				<Property Name="INST_buildSpecName" Type="Str">Rxn Rover Installer</Property>
				<Property Name="INST_defaultDir" Type="Str">{E900022A-0109-41DA-A00A-423EC44A52F4}</Property>
				<Property Name="INST_installerName" Type="Str">install_rxn_rover.exe</Property>
				<Property Name="INST_productName" Type="Str">Rxn Rover</Property>
				<Property Name="INST_productVersion" Type="Str">1.0.2</Property>
				<Property Name="InstSpecBitness" Type="Str">32-bit</Property>
				<Property Name="InstSpecVersion" Type="Str">20018000</Property>
				<Property Name="MSI_arpCompany" Type="Str">Iowa State University</Property>
				<Property Name="MSI_autoselectDrivers" Type="Bool">true</Property>
				<Property Name="MSI_distID" Type="Str">{F86A3199-9C98-4FAF-AA24-9195790F23A9}</Property>
				<Property Name="MSI_hideNonRuntimes" Type="Bool">true</Property>
				<Property Name="MSI_osCheck" Type="Int">0</Property>
				<Property Name="MSI_upgradeCode" Type="Str">{1AC2C4C0-14E6-4064-A887-97454C3489DF}</Property>
				<Property Name="RegDest[0].dirName" Type="Str">Software</Property>
				<Property Name="RegDest[0].dirTag" Type="Str">{DDFAFC8B-E728-4AC8-96DE-B920EBB97A86}</Property>
				<Property Name="RegDest[0].parentTag" Type="Str">2</Property>
				<Property Name="RegDestCount" Type="Int">1</Property>
				<Property Name="Source[0].dest" Type="Str">{E900022A-0109-41DA-A00A-423EC44A52F4}</Property>
				<Property Name="Source[0].name" Type="Str">Main.vi</Property>
				<Property Name="Source[0].tag" Type="Ref">/My Computer/Main.vi</Property>
				<Property Name="Source[0].type" Type="Str">File</Property>
				<Property Name="SourceCount" Type="Int">1</Property>
			</Item>
		</Item>
	</Item>
</Project>
