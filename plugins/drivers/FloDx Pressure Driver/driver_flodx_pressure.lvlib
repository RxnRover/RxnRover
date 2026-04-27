<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="20008000">
	<Property Name="NI.Lib.HelpPath" Type="Str"></Property>
	<Property Name="NI.Lib.Icon" Type="Bin">)!#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(]!!!*Q(C=\&gt;8"=&gt;MQ%!8143;(8.6"2CVM#WJ",7Q,SN&amp;(N&lt;!NK!7VM#WI"&lt;8A0$%94UZ2$P%E"Y.?G@I%A7=11U&gt;M\7P%FXB^VL\`NHV=@X&lt;^39O0^N(_&lt;8NZOEH@@=^_CM?,3)VK63LD-&gt;8LS%=_]J'0@/1N&lt;XH,7^\SFJ?]Z#5P?=F,HP+5JTTF+5`Z&gt;MB$(P+1)YX*RU2DU$(![)Q3YW.YBG&gt;YBM@8'*\B':\B'2Z&gt;9HC':XC':XD=&amp;M-T0--T0-.DK%USWS(H'2\$2`-U4`-U4`/9-JKH!&gt;JE&lt;?!W#%;UC_WE?:KH?:R']T20]T20]\A=T&gt;-]T&gt;-]T?/7&lt;66[UTQ//9^BIHC+JXC+JXA-(=640-640-6DOCC?YCG)-G%:(#(+4;6$_6)]R?.8&amp;%`R&amp;%`R&amp;)^,WR/K&lt;75?GM=BZUG?Z%G?Z%E?1U4S*%`S*%`S'$;3*XG3*XG3RV320-G40!G3*D6^J-(3D;F4#J,(T\:&lt;=HN+P5FS/S,7ZIWV+7.NNFC&lt;+.&lt;GC0819TX-7!]JVO,(7N29CR6L%7,^=&lt;(1M4#R*IFV][.DX(X?V&amp;6&gt;V&amp;G&gt;V&amp;%&gt;V&amp;\N(L@_Z9\X_TVONVN=L^?Y8#ZR0J`D&gt;$L&amp;]8C-Q_%1_`U_&gt;LP&gt;WWPAG_0NB@$TP@4C`%`KH@[8`A@PRPA=PYZLD8Y!#/7SO!!!!!!</Property>
	<Property Name="NI.Lib.LocalName" Type="Str">FloDx ph Probe</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">536903680</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.0.0.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="Private" Type="Folder"/>
	<Item Name="Public" Type="Folder">
		<Item Name="Action-Status" Type="Folder">
			<Item Name="ConfirmConnectionAndErrorStates.vi" Type="VI" URL="../Public/Action-Status/ConfirmConnectionAndErrorStates.vi"/>
			<Item Name="LoadFromEEPROM.vi" Type="VI" URL="../Public/Action-Status/LoadFromEEPROM.vi"/>
			<Item Name="PrintAbsolutePressure.vi" Type="VI" URL="../Public/Action-Status/PrintAbsolutePressure.vi"/>
			<Item Name="PrintAddress.vi" Type="VI" URL="../Public/Action-Status/PrintAddress.vi"/>
			<Item Name="PrintAmbientPressure.vi" Type="VI" URL="../Public/Action-Status/PrintAmbientPressure.vi"/>
			<Item Name="PrintDeviceType.vi" Type="VI" URL="../Public/Action-Status/PrintDeviceType.vi"/>
			<Item Name="PrintGaugePresssure.vi" Type="VI" URL="../Public/Action-Status/PrintGaugePresssure.vi"/>
			<Item Name="PrintTemperature.vi" Type="VI" URL="../Public/Action-Status/PrintTemperature.vi"/>
			<Item Name="PrintUnits.vi" Type="VI" URL="../Public/Action-Status/PrintUnits.vi"/>
			<Item Name="RestartSensor.vi" Type="VI" URL="../Public/Action-Status/RestartSensor.vi"/>
			<Item Name="SaveToEEPROM.vi" Type="VI" URL="../Public/Action-Status/SaveToEEPROM.vi"/>
			<Item Name="SetAmbientPressure.vi" Type="VI" URL="../Public/Action-Status/SetAmbientPressure.vi"/>
			<Item Name="SetAmbientToCurrentPressure.vi" Type="VI" URL="../Public/Action-Status/SetAmbientToCurrentPressure.vi"/>
			<Item Name="SetUnits.vi" Type="VI" URL="../Public/Action-Status/SetUnits.vi"/>
		</Item>
		<Item Name="Configure" Type="Folder">
			<Item Name="EnterCONFIGState.vi" Type="VI" URL="../Public/Configure/EnterCONFIGState.vi"/>
			<Item Name="ExitCONFIG.vi" Type="VI" URL="../Public/Configure/ExitCONFIG.vi"/>
			<Item Name="PrintMaxSensitivity.vi" Type="VI" URL="../Public/Configure/PrintMaxSensitivity.vi"/>
			<Item Name="ResetFactoryDefaults.vi" Type="VI" URL="../Public/Configure/ResetFactoryDefaults.vi"/>
			<Item Name="SetAddress.vi" Type="VI" URL="../Public/Configure/SetAddress.vi"/>
			<Item Name="SetExtendedScale.vi" Type="VI" URL="../Public/Configure/SetExtendedScale.vi"/>
			<Item Name="SetMaxSensitivity.vi" Type="VI" URL="../Public/Configure/SetMaxSensitivity.vi"/>
		</Item>
		<Item Name="Data" Type="Folder">
			<Item Name="ReceiveData.vi" Type="VI" URL="../Public/Data/ReceiveData.vi"/>
			<Item Name="SendCommand.vi" Type="VI" URL="../Public/Data/SendCommand.vi"/>
		</Item>
		<Item Name="Type-Defs" Type="Folder">
			<Item Name="ParsedData.ctl" Type="VI" URL="../Public/Type Defs/ParsedData.ctl"/>
			<Item Name="SerialConfig.ctl" Type="VI" URL="../Public/Type Defs/SerialConfig.ctl"/>
		</Item>
		<Item Name="Utility" Type="Folder">
			<Item Name="Parse Reponse.vi" Type="VI" URL="../Public/Utility/Parse Reponse.vi"/>
			<Item Name="SafeSendCommand.vi" Type="VI" URL="../Public/Utility/SafeSendCommand.vi"/>
			<Item Name="VerifyAddress.vi" Type="VI" URL="../Public/Utility/VerifyAddress.vi"/>
			<Item Name="VerifyCommandNumber.vi" Type="VI" URL="../Public/Utility/VerifyCommandNumber.vi"/>
			<Item Name="VerifyResponse.vi" Type="VI" URL="../Public/Utility/VerifyResponse.vi"/>
		</Item>
		<Item Name="Close.vi" Type="VI" URL="../Public/Close.vi"/>
		<Item Name="Initialize.vi" Type="VI" URL="../Public/Initialize.vi"/>
		<Item Name="Manual Test.vi" Type="VI" URL="../Public/Manual Test.vi"/>
	</Item>
</Library>
