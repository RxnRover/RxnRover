<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="20008000">
	<Property Name="Instrument Driver" Type="Str">True</Property>
	<Property Name="NI.Lib.DefaultMenu" Type="Str">dir.mnu</Property>
	<Property Name="NI.Lib.Description" Type="Str">LabVIEW Plug and Play instrument driver for
Omega Platinum Series CS8DPT Universal Benchtop Digital Controller using the Serial Command Protocol detailed in document #M5452.</Property>
	<Property Name="NI.Lib.Icon" Type="Bin">)!#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(_!!!*Q(C=\&gt;4"=2J"%!81FMM(8]H!21K&gt;!CG11K@!V5&gt;3["2)A21["6,A[+P]7)V&gt;0EE8OWR6;6;.Y-`MT'.WW9CN@9HY(-^PN?_PNP@@([_WD`[0`P@&gt;`U9TZNO&lt;A`ZSCXD;J'J5KV+Z@&lt;PHE9^]Z#-@_=B&lt;XP+7N\TF,3^ZS5N?]J+80/5J4XH+5Z\S\:#(0/1BNSND]&lt;(1G(2--!;DR(A:HO%:HO(R-9:H?):H?)&lt;(E"C?Y2G?Y2E?J]8Q$-`Q$-`QG'K4T(&lt;)?9&lt;(^.%]T&gt;-]T&gt;-]FITG;9#W7*OY49)2L&lt;/^;:\G;2ZPIXG;JXG;JXFU2`-U4`-U4`-Y:&gt;O6XD301]ZDGCC?YCG?YCE?5U@R&amp;%`R&amp;%`R7#[+JXA+ICR9*E?)=F):5$Y54`(Y&amp;]640-640-7D;\N#N?X-1`-YZ$T*ETT*ETT*9YJ)HO2*HO2*(N.']C20]C20]FAKEC&gt;ZEC&gt;"UK+7DT2:/D%.3E(S_.POFNSO5G_3X)\VUXSZ570&gt;A,&amp;OL&amp;AX4+Q&lt;)&gt;9&amp;DH8B9FW17"M&gt;;Q.D&lt;5SM,RTLC]1#RFIYVI3R"M&lt;&gt;[UV&gt;V57&gt;V5E&gt;V5(NV?ZR[B]??,`@YX;\R@6[D=PF%O@T/5[H5RS0RTA=$L(@\W/XW`V[7HVVP,3HH]_F&lt;^\`CXJZ,PU0T]&lt;Y&amp;-_`0?&lt;NU1_[`-%`!!!!!!</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">536903680</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.0.0.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="Private" Type="Folder">
		<Property Name="NI.LibItem.Scope" Type="Int">2</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Item Name="Default Instrument Setup.vi" Type="VI" URL="../Private/Default Instrument Setup.vi"/>
	</Item>
	<Item Name="Public" Type="Folder">
		<Property Name="NI.LibItem.Scope" Type="Int">1</Property>
		<Property Name="NI.SortType" Type="Int">0</Property>
		<Item Name="Action-Status" Type="Folder">
			<Item Name="Action Run.vi" Type="VI" URL="../Public/Action-Status/Action Run.vi"/>
			<Item Name="Action Stop.vi" Type="VI" URL="../Public/Action-Status/Action Stop.vi"/>
			<Item Name="Action-Status.mnu" Type="Document" URL="/&lt;instrlib&gt;/Omega Platinum Series/Public/Action-Status/Action-Status.mnu"/>
			<Item Name="Status Display Configuration.vi" Type="VI" URL="../Public/Action-Status/Status Display Configuration.vi"/>
			<Item Name="Status Filter Constant.vi" Type="VI" URL="../Public/Action-Status/Status Filter Constant.vi"/>
			<Item Name="Status Get Temperature Units.vi" Type="VI" URL="../Public/Action-Status/Status Get Temperature Units.vi"/>
			<Item Name="Status Read Temperature.vi" Type="VI" URL="../Public/Action-Status/Status Read Temperature.vi"/>
			<Item Name="Status Setpoint 1.vi" Type="VI" URL="../Public/Action-Status/Status Setpoint 1.vi"/>
			<Item Name="Status Setpoint 2.vi" Type="VI" URL="../Public/Action-Status/Status Setpoint 2.vi"/>
			<Item Name="Status System State.vi" Type="VI" URL="../Public/Action-Status/Status System State.vi"/>
			<Item Name="Status USB Address.vi" Type="VI" URL="../Public/Action-Status/Status USB Address.vi"/>
		</Item>
		<Item Name="Configure" Type="Folder">
			<Item Name="Config System State.vi" Type="VI" URL="../Public/Configure/Config System State.vi"/>
			<Item Name="Configure Display.vi" Type="VI" URL="../Public/Configure/Configure Display.vi"/>
			<Item Name="Configure Filter Constant.vi" Type="VI" URL="../Public/Configure/Configure Filter Constant.vi"/>
			<Item Name="Configure Setpoint 1.vi" Type="VI" URL="../Public/Configure/Configure Setpoint 1.vi"/>
			<Item Name="Configure Setpoint 2.vi" Type="VI" URL="../Public/Configure/Configure Setpoint 2.vi"/>
			<Item Name="Configure Temperature Units.vi" Type="VI" URL="../Public/Configure/Configure Temperature Units.vi"/>
			<Item Name="Configure USB Address.vi" Type="VI" URL="../Public/Configure/Configure USB Address.vi"/>
			<Item Name="Configure.mnu" Type="Document" URL="/&lt;instrlib&gt;/Omega Platinum Series/Public/Configure/Configure.mnu"/>
		</Item>
		<Item Name="Data" Type="Folder">
			<Item Name="Data Read.vi" Type="VI" URL="../Public/Data/Data Read.vi"/>
			<Item Name="Data Write.vi" Type="VI" URL="../Public/Data/Data Write.vi"/>
			<Item Name="Data.mnu" Type="Document" URL="/&lt;instrlib&gt;/Omega Platinum Series/Public/Data/Data.mnu"/>
		</Item>
		<Item Name="Type Defs" Type="Folder">
			<Item Name="Display Brightness.ctl" Type="VI" URL="../Public/Type Defs/Display Brightness.ctl"/>
			<Item Name="Display Color.ctl" Type="VI" URL="../Public/Type Defs/Display Color.ctl"/>
			<Item Name="Display Decimal Point.ctl" Type="VI" URL="../Public/Type Defs/Display Decimal Point.ctl"/>
			<Item Name="Display Temperature Units.ctl" Type="VI" URL="../Public/Type Defs/Display Temperature Units.ctl"/>
			<Item Name="Filter Constant.ctl" Type="VI" URL="../Public/Type Defs/Filter Constant.ctl"/>
			<Item Name="Response.ctl" Type="VI" URL="../Public/Type Defs/Response.ctl"/>
			<Item Name="Setpoint Type.ctl" Type="VI" URL="../Public/Type Defs/Setpoint Type.ctl"/>
			<Item Name="System State.ctl" Type="VI" URL="../Public/Type Defs/System State.ctl"/>
		</Item>
		<Item Name="Utility" Type="Folder">
			<Item Name="Utility Check for Error Response.vi" Type="VI" URL="../Public/Utility/Utility Check for Error Response.vi"/>
			<Item Name="Utility Factory Reset.vi" Type="VI" URL="../Public/Utility/Utility Factory Reset.vi"/>
			<Item Name="Utility Firmware Version.vi" Type="VI" URL="../Public/Utility/Utility Firmware Version.vi"/>
			<Item Name="Utility Log to File.vi" Type="VI" URL="../Public/Utility/Utility Log to File.vi"/>
			<Item Name="Utility Parse Response.vi" Type="VI" URL="../Public/Utility/Utility Parse Response.vi"/>
			<Item Name="Utility Reset USB Communication Config.vi" Type="VI" URL="../Public/Configure/Utility Reset USB Communication Config.vi"/>
			<Item Name="Utility Reset.vi" Type="VI" URL="../Public/Utility/Utility Reset.vi"/>
		</Item>
		<Item Name="Close.vi" Type="VI" URL="../Public/Close.vi"/>
		<Item Name="dir.mnu" Type="Document" URL="/&lt;instrlib&gt;/Omega Platinum Series/Public/dir.mnu"/>
		<Item Name="Initialize.vi" Type="VI" URL="../Public/Initialize.vi"/>
		<Item Name="Manual Test.vi" Type="VI" URL="../Public/Manual Test.vi"/>
		<Item Name="VI Tree.vi" Type="VI" URL="../Public/VI Tree.vi"/>
		<Item Name="VISA Test.vi" Type="VI" URL="../Public/VISA Test.vi"/>
	</Item>
	<Item Name="Omega Platinum Series Readme.html" Type="Document" URL="/&lt;instrlib&gt;/Omega Platinum Series/Omega Platinum Series Readme.html"/>
</Library>
