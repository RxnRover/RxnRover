<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="20008000">
	<Property Name="NI.Lib.Icon" Type="Bin">)!#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(^!!!*Q(C=\&gt;8"&lt;2MR%!813:"$A*T51;!7JA7VI";G"6V^6!P4AFJ1#^/#7F!,TN/'-(++=IC2(-TVS+O`80+:3[QDNP9VYEO]0GP@@NM_LD_\`K4&amp;2`NI`\;^0.WE\\ZH0]8D2;2'N3K6]:DK&gt;?1D(`H)2T\SFL?]Z3VP?=N,8P+3F\TE*5^ZSF/?]J3H@$PE)1^ZS*('Z'/C-?A99(2'C@%R0--T0-0D;QT0]!T0]!S0,D%]QT-]QT-]&lt;IPB':\B':\B-&gt;1GG?W1]QS0Y;.ZGK&gt;ZGK&gt;Z4"H.UQ"NMD:Q'Q1DWM6WUDT.UTR/IXG;JXG;JXF=DO:JHO:JHO:RS\9KP7E?BZT(-&amp;%]R6-]R6-]BI\C+:\C+:\C-6U54`%52*GQ$)Y1Z;&lt;3I8QJHO,R+YKH?)KH?)L(J?U*V&lt;9S$]XDE0-E4`)E4`)EDS%C?:)H?:)H?1Q&lt;S:-]S:-]S7/K3*\E3:Y%3:/;0N*A[=&lt;5+18*YW@&lt;,&lt;E^J&gt;YEO2U2;`0'WJ3R.FOM422L=]2[[,%?:KS(&amp;'PR9SVKL-7+N1CR`LB9[&amp;C97*0%OPH2-?Y_&lt;_KK,OKM4OKI$GKP&gt;I^&lt;`X,(_`U?N^MNLN&gt;L8#[8/*`0=4K&gt;YHA]RO&amp;QC0V_(\P&gt;\OUV].XR^E,Y_6Z[=@YH^5\`3`_$&gt;W.]DF`(N59`!/&lt;!-PQ!!!!!</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">536903680</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.0.0.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Item Name="process loops" Type="Folder">
		<Item Name="Acquisition" Type="Folder">
			<Item Name="Acquisition.lvlib" Type="Library" URL="../process loops/Acquisition/Acquisition.lvlib"/>
		</Item>
		<Item Name="Event Handling" Type="Folder">
			<Item Name="support" Type="Folder"/>
			<Item Name="User Event - Stop" Type="Folder">
				<Item Name="User Event - Stop.lvlib" Type="Library" URL="../support/User Event - Stop/User Event - Stop.lvlib"/>
			</Item>
			<Item Name="Error Handler - Event Handling Loop.vi" Type="VI" URL="../process loops/Event Handler/Error Handler - Event Handling Loop.vi"/>
		</Item>
		<Item Name="Instrument Manager" Type="Folder">
			<Item Name="Instrument Manager.lvlib" Type="Library" URL="../process loops/Instrument Manager/Instrument Manager.lvlib"/>
		</Item>
		<Item Name="Logging" Type="Folder">
			<Item Name="Logging.lvlib" Type="Library" URL="../process loops/Logging/Logging.lvlib"/>
		</Item>
		<Item Name="Remote Connection Manager" Type="Folder">
			<Item Name="Remote Connection Manager.lvlib" Type="Library" URL="../process loops/Remote Connection Manager/Remote Connection Manager.lvlib"/>
		</Item>
		<Item Name="System Control" Type="Folder">
			<Item Name="support" Type="Folder">
				<Item Name="System Control Data.ctl" Type="VI" URL="../Typedefs/System Control Data.ctl"/>
			</Item>
			<Item Name="Error Handler - System Control Loop.vi" Type="VI" URL="../process loops/System Control/Error Handler - System Control Loop.vi"/>
		</Item>
		<Item Name="UI Manager" Type="Folder">
			<Item Name="Data Display Loop Data.ctl" Type="VI" URL="../process loops/UI Manager/Data Display Loop Data.ctl"/>
			<Item Name="Error Handler - UI Manager.vi" Type="VI" URL="../process loops/UI Manager/Error Handler - UI Manager.vi"/>
			<Item Name="UI Data.ctl" Type="VI" URL="../process loops/UI Manager/UI Data.ctl"/>
			<Item Name="UI Display State.ctl" Type="VI" URL="../process loops/UI Manager/UI Display State.ctl"/>
			<Item Name="Update Data Plot.vi" Type="VI" URL="../process loops/UI Manager/Update Data Plot.vi"/>
		</Item>
	</Item>
	<Item Name="SubVIs" Type="Folder">
		<Item Name="Convert Number to Fault String.vi" Type="VI" URL="../SubVIs/Convert Number to Fault String.vi"/>
		<Item Name="Convert Number to Fault.vi" Type="VI" URL="../SubVIs/Convert Number to Fault.vi"/>
		<Item Name="Error Cluster from Fault.vi" Type="VI" URL="../SubVIs/Error Cluster from Fault.vi"/>
	</Item>
	<Item Name="support" Type="Folder">
		<Item Name="Check Loop Error.vi" Type="VI" URL="../support/Check Loop Error.vi"/>
		<Item Name="Cluster to Variant Attributes.vi" Type="VI" URL="../support/Cluster to Variant Attributes.vi"/>
		<Item Name="Message Queue.lvlib" Type="Library" URL="../support/Message Queue/Message Queue.lvlib"/>
	</Item>
	<Item Name="Typedefs" Type="Folder">
		<Item Name="Faults.ctl" Type="VI" URL="../Typedefs/Faults.ctl"/>
		<Item Name="Init.vi States.ctl" Type="VI" URL="../Typedefs/Init.vi States.ctl"/>
		<Item Name="Pump Controller State.ctl" Type="VI" URL="../Typedefs/Pump Controller State.ctl"/>
	</Item>
	<Item Name="Init.vi" Type="VI" URL="../Init.vi"/>
	<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
</Library>
