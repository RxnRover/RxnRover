<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="20008000">
	<Property Name="Instrument Driver" Type="Str">True</Property>
	<Property Name="NI.Lib.DefaultMenu" Type="Str">dir.mnu</Property>
	<Property Name="NI.Lib.Description" Type="Str">LabVIEW Plug and Play instrument driver for

&lt;fill in information about manufacturer, model, and type of the instrument&gt;.</Property>
	<Property Name="NI.Lib.Icon" Type="Bin">)!#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(_!!!*Q(C=\&gt;8"&lt;2MR%!81=:"$LOIA5!P4AFJ1#^/#LD[[B7F",;C&amp;;5%NK!8H;5U%/6EZR%!-G'P+UC&gt;X_-2&gt;LS/W^C0C?\Q_;C`PNM]`(O_WL`'P]=]^`K#:]`RQUA?XC+&gt;.KI`??OGZ@&lt;P8E9^]Z#-@_=B&lt;XP+7N\TF,3^ZS5N?]J+80/5J4XH+5Z\S\:#(0/1BNSND]&lt;(1+$I+D-EI-6[':XC':XB]D/%:HO%:HO%R*9:H?):H?)&lt;(;4%]QT-]QT-]3GW3W1YZT`!I(]X40-X40-VDS7C?"GC,N=+N#%;UQ@;G?:KH?&lt;S.ZGG?ZGG?ZD%=T&gt;-]T&gt;-]T?/5&lt;6&gt;[U^Q0/9]S54T&amp;5TT&amp;5TR+2`%54`%54`&amp;9,IKH?!KC,&amp;C+)U1ZK5QI(YKH?0S+YCG?YCG?YD'U8;(;&gt;O;OO2^SHO2*HO2*HO22)J)H?:)H?:*(W5C?Z%G?Z%E?3U8S*%`S*%B;V0+2CK54U[15*)_@\7\*\3LV*MHN7(_;&lt;T&gt;KL"MQVIU6[Y;*&gt;30%OM#R,FSM#R*LIW.N9+S.C@7&amp;9XW27-"9#]=K''NCX,R?^9N_VF`UEX\5$`J?X^V0`==4&lt;\&gt;&lt;8+`8O&amp;QO=4[@QT`=/*V/=4Q?YX!YR([`D^VO^`NJ^&gt;0RVJ\_ZLHU&lt;.Z(^&lt;@HUP`Q&lt;)RP]@L(9^Y?`1+)N8^A!!!!!!</Property>
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
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Item Name="Action-Status" Type="Folder">
			<Item Name="Action-Status.mnu" Type="Document" URL="/&lt;instrlib&gt;/ChromTech Series III Pump/Public/Action-Status/Action-Status.mnu"/>
			<Item Name="Action Set Fault.vi" Type="VI" URL="../Public/Action-Status/Action Set Fault.vi"/>
			<Item Name="Action Start Pump.vi" Type="VI" URL="../Public/Action-Status/Action Start Pump.vi"/>
			<Item Name="Action Stop Pump.vi" Type="VI" URL="../Public/Action-Status/Action Stop Pump.vi"/>
			<Item Name="Status Current Status.vi" Type="VI" URL="../Public/Action-Status/Status Current Status.vi"/>
			<Item Name="Status Get Head Type.vi" Type="VI" URL="../Public/Action-Status/Status Get Head Type.vi"/>
			<Item Name="Status Get Fault Status.vi" Type="VI" URL="../Public/Action-Status/Status Get Fault Status.vi"/>
			<Item Name="Status Get Flow Rate.vi" Type="VI" URL="../Public/Action-Status/Status Get Flow Rate.vi"/>
			<Item Name="Status Get Pressure.vi" Type="VI" URL="../Public/Action-Status/Status Get Pressure.vi"/>
			<Item Name="Status Get Pressure and Flow Rate.vi" Type="VI" URL="../Public/Action-Status/Status Get Pressure and Flow Rate.vi"/>
			<Item Name="Status Get Pressure Compensation.vi" Type="VI" URL="../Public/Action-Status/Status Get Pressure Compensation.vi"/>
			<Item Name="Status Pressure Limits.vi" Type="VI" URL="../Public/Action-Status/Status Pressure Limits.vi"/>
			<Item Name="Status Pressure Units.vi" Type="VI" URL="../Public/Action-Status/Status Pressure Units.vi"/>
			<Item Name="Status Pump Status.vi" Type="VI" URL="../Public/Action-Status/Status Pump Status.vi"/>
			<Item Name="Status Run State.vi" Type="VI" URL="../Public/Action-Status/Status Run State.vi"/>
		</Item>
		<Item Name="Configure" Type="Folder">
			<Item Name="Configure Disable Keypad.vi" Type="VI" URL="../Public/Configure/Configure Disable Keypad.vi"/>
			<Item Name="Configure Enable Keypad.vi" Type="VI" URL="../Public/Configure/Configure Enable Keypad.vi"/>
			<Item Name="Configure Flow Rate.vi" Type="VI" URL="../Public/Configure/Configure Flow Rate.vi"/>
			<Item Name="Configure Head Type.vi" Type="VI" URL="../Public/Configure/Configure Head Type.vi"/>
			<Item Name="Configure Lower Pressure Limit.vi" Type="VI" URL="../Public/Configure/Configure Lower Pressure Limit.vi"/>
			<Item Name="Configure Pressure Compensation.vi" Type="VI" URL="../Public/Configure/Configure Pressure Compensation.vi"/>
			<Item Name="Configure Upper Pressure Limit.vi" Type="VI" URL="../Public/Configure/Configure Upper Pressure Limit.vi"/>
			<Item Name="Configure.mnu" Type="Document" URL="/&lt;instrlib&gt;/ChromTech Series III Pump/Public/Configure/Configure.mnu"/>
		</Item>
		<Item Name="Data" Type="Folder">
			<Item Name="Data.mnu" Type="Document" URL="/&lt;instrlib&gt;/ChromTech Series III Pump/Public/Data/Data.mnu"/>
			<Item Name="Data Read.vi" Type="VI" URL="../Public/Data/Data Read.vi"/>
			<Item Name="Data Write.vi" Type="VI" URL="../Public/Data/Data Write.vi"/>
		</Item>
		<Item Name="Utility" Type="Folder">
			<Item Name="Utility Clear Buffer.vi" Type="VI" URL="../Public/Utility/Utility Clear Buffer.vi"/>
			<Item Name="Utility Check for More to Read.vi" Type="VI" URL="../Public/Utility/Utility Check for More to Read.vi"/>
			<Item Name="Utility Firmware Info.vi" Type="VI" URL="../Public/Utility/Utility Firmware Info.vi"/>
			<Item Name="Utility Format Flow Rate.vi" Type="VI" URL="../Public/Utility/Utility Format Flow Rate.vi"/>
			<Item Name="Utility Format Head Type.vi" Type="VI" URL="../Public/Utility/Utility Format Head Type.vi"/>
			<Item Name="Utility Format Pressure Compensation.vi" Type="VI" URL="../Public/Utility/Utility Format Pressure Compensation.vi"/>
			<Item Name="Utility Format Pressure Limit.vi" Type="VI" URL="../Public/Utility/Utility Format Pressure Limit.vi"/>
			<Item Name="Utility Parse Fault Status.vi" Type="VI" URL="../Public/Utility/Utility Parse Fault Status.vi"/>
			<Item Name="Utility Parse Flow Rate.vi" Type="VI" URL="../Public/Utility/Utility Parse Flow Rate.vi"/>
			<Item Name="Utility Parse Pressure Compensation.vi" Type="VI" URL="../Public/Utility/Utility Parse Pressure Compensation.vi"/>
			<Item Name="Utility Reset.vi" Type="VI" URL="../Public/Utility/Utility Reset.vi"/>
			<Item Name="Utility.mnu" Type="Document" URL="/&lt;instrlib&gt;/ChromTech Series III Pump/Public/Utility/Utility.mnu"/>
			<Item Name="Utility Log to File.vi" Type="VI" URL="../Public/Utility/Utility Log to File.vi"/>
		</Item>
		<Item Name="dir.mnu" Type="Document" URL="/&lt;instrlib&gt;/ChromTech Series III Pump/Public/dir.mnu"/>
		<Item Name="Close.vi" Type="VI" URL="../Public/Close.vi"/>
		<Item Name="Initialize.vi" Type="VI" URL="../Public/Initialize.vi"/>
		<Item Name="VI Tree.vi" Type="VI" URL="../Public/VI Tree.vi"/>
		<Item Name="VISA Test.vi" Type="VI" URL="../Public/VISA Test.vi"/>
		<Item Name="Manual Test.vi" Type="VI" URL="../Public/Manual Test.vi"/>
	</Item>
	<Item Name="ChromTech Series III Pump Readme.html" Type="Document" URL="/&lt;instrlib&gt;/ChromTech Series III Pump/ChromTech Series III Pump Readme.html"/>
</Library>
