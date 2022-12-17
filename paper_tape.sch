<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="FRAME_A_L">
<frame x1="0" y1="0" x2="279.4" y2="215.9" columns="6" rows="5" layer="94" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94" font="vector">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94" font="vector">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94" font="vector">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94" font="vector">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94" font="vector">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94" font="vector">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94" font="vector">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94" font="vector">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="FRAME_A_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt; A Size , 8 1/2 x 11 INCH, Landscape&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="FRAME_A_L" x="0" y="0" addlevel="always"/>
<gate name="G$2" symbol="DOCFIELD" x="172.72" y="0" addlevel="always"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="paper_tape">
<packages>
<package name="DIP28">
<pad name="2" x="-15.24" y="-7.62" drill="0.8"/>
<pad name="1" x="-17.78" y="-7.62" drill="0.8" shape="square"/>
<pad name="P$1" x="-12.7" y="-7.62" drill="0.8"/>
<pad name="3" x="-12.7" y="-7.62" drill="0.8"/>
<pad name="4" x="-10.16" y="-7.62" drill="0.8"/>
<pad name="5" x="-7.62" y="-7.62" drill="0.8"/>
<pad name="6" x="-5.08" y="-7.62" drill="0.8"/>
<pad name="7" x="-2.54" y="-7.62" drill="0.8"/>
<pad name="8" x="0" y="-7.62" drill="0.8"/>
<pad name="9" x="2.54" y="-7.62" drill="0.8"/>
<pad name="10" x="5.08" y="-7.62" drill="0.8"/>
<pad name="11" x="7.62" y="-7.62" drill="0.8"/>
<pad name="12" x="10.16" y="-7.62" drill="0.8"/>
<pad name="13" x="12.7" y="-7.62" drill="0.8"/>
<pad name="14" x="15.24" y="-7.62" drill="0.8"/>
<pad name="15" x="15.24" y="7.62" drill="0.8"/>
<pad name="16" x="12.7" y="7.62" drill="0.8"/>
<pad name="17" x="10.16" y="7.62" drill="0.8"/>
<pad name="18" x="7.62" y="7.62" drill="0.8"/>
<pad name="19" x="5.08" y="7.62" drill="0.8"/>
<pad name="20" x="2.54" y="7.62" drill="0.8"/>
<pad name="21" x="0" y="7.62" drill="0.8"/>
<pad name="22" x="-2.54" y="7.62" drill="0.8"/>
<pad name="23" x="-5.08" y="7.62" drill="0.8"/>
<pad name="24" x="-7.62" y="7.62" drill="0.8"/>
<pad name="25" x="-10.16" y="7.62" drill="0.8"/>
<pad name="26" x="-12.7" y="7.62" drill="0.8"/>
<pad name="27" x="-15.24" y="7.62" drill="0.8"/>
<pad name="28" x="-17.78" y="7.62" drill="0.8"/>
<hole x="-17.78" y="-7.62" drill="0.6"/>
<hole x="-15.24" y="-7.62" drill="0.6"/>
<hole x="-12.7" y="-7.62" drill="0.6"/>
<hole x="-10.16" y="-7.62" drill="0.6"/>
<hole x="-7.62" y="-7.62" drill="0.6"/>
<hole x="-5.08" y="-7.62" drill="0.6"/>
<hole x="-2.54" y="-7.62" drill="0.6"/>
<hole x="0" y="-7.62" drill="0.6"/>
<hole x="2.54" y="-7.62" drill="0.6"/>
<hole x="5.08" y="-7.62" drill="0.6"/>
<hole x="7.62" y="-7.62" drill="0.6"/>
<hole x="10.16" y="-7.62" drill="0.6"/>
<hole x="12.7" y="-7.62" drill="0.6"/>
<hole x="15.24" y="-7.62" drill="0.6"/>
<hole x="15.24" y="7.62" drill="0.6"/>
<hole x="12.7" y="7.62" drill="0.6"/>
<hole x="10.16" y="7.62" drill="0.6"/>
<hole x="7.62" y="7.62" drill="0.6"/>
<hole x="5.08" y="7.62" drill="0.6"/>
<hole x="2.54" y="7.62" drill="0.6"/>
<hole x="0" y="7.62" drill="0.6"/>
<hole x="-2.54" y="7.62" drill="0.6"/>
<hole x="-5.08" y="7.62" drill="0.6"/>
<hole x="-7.62" y="7.62" drill="0.6"/>
<hole x="-10.16" y="7.62" drill="0.6"/>
<hole x="-12.7" y="7.62" drill="0.6"/>
<hole x="-15.24" y="7.62" drill="0.6"/>
<hole x="-17.78" y="7.62" drill="0.6"/>
<wire x1="-20.32" y1="10.16" x2="17.78" y2="10.16" width="0.127" layer="21"/>
<wire x1="17.78" y1="10.16" x2="17.78" y2="-10.16" width="0.127" layer="21"/>
<wire x1="17.78" y1="-10.16" x2="-20.32" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-20.32" y1="-10.16" x2="-20.32" y2="10.16" width="0.127" layer="21"/>
<text x="-3.81" y="11.43" size="1.27" layer="21">&gt;NAME</text>
</package>
<package name="SIP10">
<pad name="5" x="0" y="0" drill="0.8"/>
<pad name="4" x="-2.54" y="0" drill="0.8"/>
<pad name="3" x="-5.08" y="0" drill="0.8"/>
<pad name="2" x="-7.62" y="0" drill="0.8"/>
<pad name="1" x="-10.16" y="0" drill="0.8" shape="square"/>
<pad name="6" x="2.54" y="0" drill="0.8"/>
<pad name="7" x="5.08" y="0" drill="0.8"/>
<pad name="8" x="7.62" y="0" drill="0.8"/>
<pad name="9" x="10.16" y="0" drill="0.8"/>
<pad name="10" x="12.7" y="0" drill="0.8"/>
<hole x="-10.16" y="0" drill="0.6"/>
<hole x="-7.62" y="0" drill="0.6"/>
<hole x="-5.08" y="0" drill="0.6"/>
<hole x="-2.54" y="0" drill="0.6"/>
<hole x="0" y="0" drill="0.6"/>
<hole x="2.54" y="0" drill="0.6"/>
<hole x="5.08" y="0" drill="0.6"/>
<hole x="7.62" y="0" drill="0.6"/>
<hole x="10.16" y="0" drill="0.6"/>
<hole x="12.7" y="0" drill="0.6"/>
<wire x1="-12.7" y1="2.54" x2="15.24" y2="2.54" width="0.127" layer="21"/>
<wire x1="15.24" y1="2.54" x2="15.24" y2="-2.54" width="0.127" layer="21"/>
<wire x1="15.24" y1="-2.54" x2="-12.7" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-12.7" y1="-2.54" x2="-12.7" y2="2.54" width="0.127" layer="21"/>
<text x="-1.27" y="3.81" size="1.27" layer="21" font="vector">&gt;NAME</text>
</package>
<package name="DIP18N">
<description>Narrow DIP18</description>
<frame x1="-10.16" y1="-1.27" x2="10.16" y2="1.27" columns="8" rows="5" layer="21"/>
<hole x="0" y="1.27" drill="0.6"/>
<hole x="-2.54" y="1.27" drill="0.6"/>
<hole x="-5.08" y="1.27" drill="0.6"/>
<hole x="-7.62" y="1.27" drill="0.6"/>
<hole x="-10.16" y="1.27" drill="0.6"/>
<hole x="-10.16" y="-1.27" drill="0.6"/>
<hole x="-7.62" y="-1.27" drill="0.6"/>
<hole x="-5.08" y="-1.27" drill="0.6"/>
<hole x="-2.54" y="-1.27" drill="0.6"/>
<hole x="0" y="-1.27" drill="0.6"/>
<hole x="2.54" y="-1.27" drill="0.6"/>
<hole x="2.54" y="1.27" drill="0.6"/>
<hole x="5.08" y="1.27" drill="0.6"/>
<hole x="7.62" y="1.27" drill="0.6"/>
<hole x="10.16" y="1.27" drill="0.6"/>
<hole x="10.16" y="-1.27" drill="0.6"/>
<hole x="7.62" y="-1.27" drill="0.6"/>
<hole x="5.08" y="-1.27" drill="0.6"/>
<pad name="P18" x="-10.16" y="1.27" drill="0.8" shape="square"/>
<pad name="P17" x="-7.62" y="1.27" drill="0.8" shape="square"/>
<pad name="P16" x="-5.08" y="1.27" drill="0.8" shape="square"/>
<pad name="P15" x="-2.54" y="1.27" drill="0.8" shape="square"/>
<pad name="P14" x="0" y="1.27" drill="0.8" shape="square"/>
<pad name="P13" x="2.54" y="1.27" drill="0.8" shape="square"/>
<pad name="P12" x="5.08" y="1.27" drill="0.8" shape="square"/>
<pad name="P11" x="7.62" y="1.27" drill="0.8" shape="square"/>
<pad name="P10" x="10.16" y="1.27" drill="0.8" shape="square"/>
<pad name="P9" x="10.16" y="-1.27" drill="0.8" shape="square"/>
<pad name="P8" x="7.62" y="-1.27" drill="0.8" shape="square"/>
<pad name="P7" x="5.08" y="-1.27" drill="0.8" shape="square"/>
<pad name="P6" x="2.54" y="-1.27" drill="0.8" shape="square"/>
<pad name="P5" x="0" y="-1.27" drill="0.8" shape="square"/>
<pad name="P4" x="-2.54" y="-1.27" drill="0.8" shape="square"/>
<pad name="P3" x="-5.08" y="-1.27" drill="0.8" shape="square"/>
<pad name="P2" x="-7.62" y="-1.27" drill="0.8" shape="square"/>
<pad name="P1" x="-10.16" y="-1.27" drill="0.8" shape="square"/>
</package>
<package name="SIP11">
<pad name="1" x="-12.7" y="0" drill="0.8" shape="square"/>
<pad name="2" x="-10.16" y="0" drill="0.8"/>
<pad name="3" x="-7.62" y="0" drill="0.8"/>
<pad name="4" x="-5.08" y="0" drill="0.8"/>
<pad name="5" x="-2.54" y="0" drill="0.8"/>
<pad name="6" x="0" y="0" drill="0.8"/>
<pad name="7" x="2.54" y="0" drill="0.8"/>
<pad name="8" x="5.08" y="0" drill="0.8"/>
<pad name="9" x="7.62" y="0" drill="0.8"/>
<pad name="10" x="10.16" y="0" drill="0.8"/>
<pad name="11" x="12.7" y="0" drill="0.8"/>
<hole x="-12.7" y="0" drill="0.6"/>
<hole x="-10.16" y="0" drill="0.6"/>
<hole x="-7.62" y="0" drill="0.6"/>
<hole x="-5.08" y="0" drill="0.6"/>
<hole x="-2.54" y="0" drill="0.6"/>
<hole x="0" y="0" drill="0.6"/>
<hole x="2.54" y="0" drill="0.6"/>
<hole x="5.08" y="0" drill="0.6"/>
<hole x="7.62" y="0" drill="0.6"/>
<hole x="10.16" y="0" drill="0.6"/>
<hole x="12.7" y="0" drill="0.6"/>
<wire x1="-15.24" y1="2.54" x2="15.24" y2="2.54" width="0.127" layer="21"/>
<wire x1="15.24" y1="2.54" x2="15.24" y2="-2.54" width="0.127" layer="21"/>
<wire x1="15.24" y1="-2.54" x2="-15.24" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-15.24" y1="-2.54" x2="-15.24" y2="2.54" width="0.127" layer="21"/>
<text x="-2.54" y="3.81" size="1.27" layer="21">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="METROMINI">
<pin name="VIN" x="-17.78" y="0" length="middle"/>
<pin name="GND2" x="-17.78" y="2.54" length="middle"/>
<pin name="GND1" x="-17.78" y="5.08" length="middle"/>
<pin name="P5V" x="-17.78" y="7.62" length="middle"/>
<pin name="P3V" x="-17.78" y="10.16" length="middle"/>
<pin name="RST" x="-17.78" y="12.7" length="middle"/>
<pin name="USB" x="-17.78" y="15.24" length="middle"/>
<pin name="AREF" x="-17.78" y="-2.54" length="middle"/>
<pin name="A0" x="-17.78" y="-5.08" length="middle"/>
<pin name="A1" x="-17.78" y="-7.62" length="middle"/>
<pin name="A2" x="-17.78" y="-10.16" length="middle"/>
<pin name="A3" x="-17.78" y="-12.7" length="middle"/>
<pin name="A4" x="-17.78" y="-15.24" length="middle"/>
<pin name="A5" x="-17.78" y="-17.78" length="middle"/>
<pin name="D7" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="D8" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="D9" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="D10" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="D11" x="17.78" y="10.16" length="middle" rot="R180"/>
<pin name="D12" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="D13" x="17.78" y="15.24" length="middle" rot="R180"/>
<pin name="D6" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="D5" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="D4" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="D3" x="17.78" y="-10.16" length="middle" rot="R180"/>
<pin name="D2" x="17.78" y="-12.7" length="middle" rot="R180"/>
<pin name="D1" x="17.78" y="-15.24" length="middle" rot="R180"/>
<pin name="D0" x="17.78" y="-17.78" length="middle" rot="R180"/>
<wire x1="-12.7" y1="-20.32" x2="12.7" y2="-20.32" width="0.254" layer="94"/>
<wire x1="12.7" y1="-20.32" x2="12.7" y2="17.78" width="0.254" layer="94"/>
<wire x1="12.7" y1="17.78" x2="-12.7" y2="17.78" width="0.254" layer="94"/>
<wire x1="-12.7" y1="17.78" x2="-12.7" y2="-20.32" width="0.254" layer="94"/>
<text x="-2.54" y="20.32" size="1.27" layer="94">&gt;NAME</text>
</symbol>
<symbol name="RNET">
<description>resistor network</description>
<pin name="R5" x="5.08" y="0" length="middle" rot="R180"/>
<pin name="R4" x="5.08" y="2.54" length="middle" rot="R180"/>
<pin name="R3" x="5.08" y="5.08" length="middle" rot="R180"/>
<pin name="R2" x="5.08" y="7.62" length="middle" rot="R180"/>
<pin name="R1" x="5.08" y="10.16" length="middle" rot="R180"/>
<pin name="R6" x="5.08" y="-2.54" length="middle" rot="R180"/>
<pin name="R7" x="5.08" y="-5.08" length="middle" rot="R180"/>
<pin name="R8" x="5.08" y="-7.62" length="middle" rot="R180"/>
<pin name="R9" x="5.08" y="-10.16" length="middle" rot="R180"/>
<pin name="COM" x="-12.7" y="17.78" length="middle" rot="R270"/>
<wire x1="0" y1="-10.16" x2="-12.7" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-10.16" x2="-12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-7.62" x2="-12.7" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-5.08" x2="-12.7" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-2.54" x2="-12.7" y2="0" width="0.254" layer="94"/>
<wire x1="-12.7" y1="0" x2="-12.7" y2="2.54" width="0.254" layer="94"/>
<wire x1="-12.7" y1="2.54" x2="-12.7" y2="5.08" width="0.254" layer="94"/>
<wire x1="-12.7" y1="5.08" x2="-12.7" y2="7.62" width="0.254" layer="94"/>
<wire x1="-12.7" y1="7.62" x2="-12.7" y2="10.16" width="0.254" layer="94"/>
<wire x1="-12.7" y1="10.16" x2="-12.7" y2="12.7" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="-12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="-12.7" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-12.7" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-12.7" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-12.7" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="-12.7" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="-12.7" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="10.16" x2="-12.7" y2="10.16" width="0.254" layer="94"/>
</symbol>
<symbol name="BPX89">
<description>9-element photodiode array</description>
<pin name="C5" x="-12.7" y="0" length="middle"/>
<pin name="C6" x="-12.7" y="-2.54" length="middle"/>
<pin name="C7" x="-12.7" y="-5.08" length="middle"/>
<pin name="C8" x="-12.7" y="-7.62" length="middle"/>
<pin name="C9" x="-12.7" y="-10.16" length="middle"/>
<pin name="C4" x="-12.7" y="2.54" length="middle"/>
<pin name="C3" x="-12.7" y="5.08" length="middle"/>
<pin name="C2" x="-12.7" y="7.62" length="middle"/>
<pin name="C1" x="-12.7" y="10.16" length="middle"/>
<pin name="A5" x="12.7" y="0" length="middle" rot="R180"/>
<pin name="A6" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="A7" x="12.7" y="-5.08" length="middle" rot="R180"/>
<pin name="A8" x="12.7" y="-7.62" length="middle" rot="R180"/>
<pin name="A9" x="12.7" y="-10.16" length="middle" rot="R180"/>
<pin name="A4" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="A3" x="12.7" y="5.08" length="middle" rot="R180"/>
<pin name="A2" x="12.7" y="7.62" length="middle" rot="R180"/>
<pin name="A1" x="12.7" y="10.16" length="middle" rot="R180"/>
<wire x1="-7.62" y1="-12.7" x2="7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="7.62" y1="12.7" x2="-7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="-7.62" y1="12.7" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<text x="-2.54" y="15.24" size="1.27" layer="94">&gt;NAME</text>
</symbol>
<symbol name="HDR">
<pin name="6" x="-5.08" y="0" length="middle"/>
<pin name="5" x="-5.08" y="2.54" length="middle"/>
<pin name="4" x="-5.08" y="5.08" length="middle"/>
<pin name="3" x="-5.08" y="7.62" length="middle"/>
<pin name="2" x="-5.08" y="10.16" length="middle"/>
<pin name="1" x="-5.08" y="12.7" length="middle"/>
<pin name="7" x="-5.08" y="-2.54" length="middle"/>
<pin name="8" x="-5.08" y="-5.08" length="middle"/>
<pin name="9" x="-5.08" y="-7.62" length="middle"/>
<pin name="10" x="-5.08" y="-10.16" length="middle"/>
<pin name="11" x="-5.08" y="-12.7" length="middle"/>
<text x="-2.54" y="17.78" size="1.27" layer="94">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="METRO_MINI" prefix="MM">
<description>Adafruit Metro Mini Arduino.
ATmega328 + FTDI USB Serial</description>
<gates>
<gate name="G$1" symbol="METROMINI" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIP28">
<connects>
<connect gate="G$1" pin="A0" pad="9"/>
<connect gate="G$1" pin="A1" pad="10"/>
<connect gate="G$1" pin="A2" pad="11"/>
<connect gate="G$1" pin="A3" pad="12"/>
<connect gate="G$1" pin="A4" pad="13"/>
<connect gate="G$1" pin="A5" pad="14"/>
<connect gate="G$1" pin="AREF" pad="8"/>
<connect gate="G$1" pin="D0" pad="15"/>
<connect gate="G$1" pin="D1" pad="16"/>
<connect gate="G$1" pin="D10" pad="25"/>
<connect gate="G$1" pin="D11" pad="26"/>
<connect gate="G$1" pin="D12" pad="27"/>
<connect gate="G$1" pin="D13" pad="28"/>
<connect gate="G$1" pin="D2" pad="17"/>
<connect gate="G$1" pin="D3" pad="18"/>
<connect gate="G$1" pin="D4" pad="19"/>
<connect gate="G$1" pin="D5" pad="20"/>
<connect gate="G$1" pin="D6" pad="21"/>
<connect gate="G$1" pin="D7" pad="22"/>
<connect gate="G$1" pin="D8" pad="23"/>
<connect gate="G$1" pin="D9" pad="24"/>
<connect gate="G$1" pin="GND1" pad="5"/>
<connect gate="G$1" pin="GND2" pad="6"/>
<connect gate="G$1" pin="P3V" pad="3"/>
<connect gate="G$1" pin="P5V" pad="4"/>
<connect gate="G$1" pin="RST" pad="2"/>
<connect gate="G$1" pin="USB" pad="1"/>
<connect gate="G$1" pin="VIN" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RNET" prefix="RN" uservalue="yes">
<description>Resistor Network</description>
<gates>
<gate name="G$1" symbol="RNET" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SIP10">
<connects>
<connect gate="G$1" pin="COM" pad="1"/>
<connect gate="G$1" pin="R1" pad="2"/>
<connect gate="G$1" pin="R2" pad="3"/>
<connect gate="G$1" pin="R3" pad="4"/>
<connect gate="G$1" pin="R4" pad="5"/>
<connect gate="G$1" pin="R5" pad="6"/>
<connect gate="G$1" pin="R6" pad="7"/>
<connect gate="G$1" pin="R7" pad="8"/>
<connect gate="G$1" pin="R8" pad="9"/>
<connect gate="G$1" pin="R9" pad="10"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PBX89" prefix="PTNET">
<description>PBX89 - 9 Photodiode Array</description>
<gates>
<gate name="G$1" symbol="BPX89" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIP18N">
<connects>
<connect gate="G$1" pin="A1" pad="P18"/>
<connect gate="G$1" pin="A2" pad="P17"/>
<connect gate="G$1" pin="A3" pad="P16"/>
<connect gate="G$1" pin="A4" pad="P15"/>
<connect gate="G$1" pin="A5" pad="P14"/>
<connect gate="G$1" pin="A6" pad="P13"/>
<connect gate="G$1" pin="A7" pad="P12"/>
<connect gate="G$1" pin="A8" pad="P11"/>
<connect gate="G$1" pin="A9" pad="P10"/>
<connect gate="G$1" pin="C1" pad="P1"/>
<connect gate="G$1" pin="C2" pad="P2"/>
<connect gate="G$1" pin="C3" pad="P3"/>
<connect gate="G$1" pin="C4" pad="P4"/>
<connect gate="G$1" pin="C5" pad="P5"/>
<connect gate="G$1" pin="C6" pad="P6"/>
<connect gate="G$1" pin="C7" pad="P7"/>
<connect gate="G$1" pin="C8" pad="P8"/>
<connect gate="G$1" pin="C9" pad="P9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HEADER" prefix="HDR">
<description>11-pin header</description>
<gates>
<gate name="G$1" symbol="HDR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SIP11">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" deviceset="FRAME_A_L" device=""/>
<part name="MM1" library="paper_tape" deviceset="METRO_MINI" device=""/>
<part name="RN1" library="paper_tape" deviceset="RNET" device="" value="1k"/>
<part name="PTNET1" library="paper_tape" deviceset="PBX89" device=""/>
<part name="HDR1" library="paper_tape" deviceset="HEADER" device=""/>
<part name="HDR2" library="paper_tape" deviceset="HEADER" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="185.42" y="27.94" size="5.08" layer="96">Paper Tape Reader</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="FRAME1" gate="G$2" x="172.72" y="0"/>
<instance part="MM1" gate="G$1" x="96.52" y="96.52"/>
<instance part="RN1" gate="G$1" x="180.34" y="83.82" rot="R90"/>
<instance part="PTNET1" gate="G$1" x="180.34" y="144.78" rot="R270"/>
<instance part="HDR1" gate="G$1" x="144.78" y="109.22"/>
<instance part="HDR2" gate="G$1" x="154.94" y="109.22" rot="MR0"/>
</instances>
<busses>
</busses>
<nets>
<net name="PT_D0" class="0">
<segment>
<pinref part="RN1" gate="G$1" pin="R1"/>
<pinref part="PTNET1" gate="G$1" pin="A9"/>
<wire x1="170.18" y1="132.08" x2="170.18" y2="99.06" width="0.1524" layer="91"/>
<pinref part="HDR2" gate="G$1" pin="10"/>
<wire x1="170.18" y1="99.06" x2="170.18" y2="88.9" width="0.1524" layer="91"/>
<wire x1="160.02" y1="99.06" x2="170.18" y2="99.06" width="0.1524" layer="91"/>
<junction x="170.18" y="99.06"/>
</segment>
</net>
<net name="PT_D1" class="0">
<segment>
<pinref part="RN1" gate="G$1" pin="R2"/>
<pinref part="PTNET1" gate="G$1" pin="A8"/>
<wire x1="172.72" y1="132.08" x2="172.72" y2="101.6" width="0.1524" layer="91"/>
<pinref part="HDR2" gate="G$1" pin="9"/>
<wire x1="172.72" y1="101.6" x2="172.72" y2="88.9" width="0.1524" layer="91"/>
<wire x1="160.02" y1="101.6" x2="172.72" y2="101.6" width="0.1524" layer="91"/>
<junction x="172.72" y="101.6"/>
</segment>
</net>
<net name="PT_D2" class="0">
<segment>
<pinref part="RN1" gate="G$1" pin="R3"/>
<pinref part="PTNET1" gate="G$1" pin="A7"/>
<wire x1="175.26" y1="132.08" x2="175.26" y2="104.14" width="0.1524" layer="91"/>
<pinref part="HDR2" gate="G$1" pin="8"/>
<wire x1="175.26" y1="104.14" x2="175.26" y2="88.9" width="0.1524" layer="91"/>
<wire x1="160.02" y1="104.14" x2="175.26" y2="104.14" width="0.1524" layer="91"/>
<junction x="175.26" y="104.14"/>
</segment>
</net>
<net name="PT_STROBE" class="0">
<segment>
<pinref part="RN1" gate="G$1" pin="R4"/>
<pinref part="PTNET1" gate="G$1" pin="A6"/>
<wire x1="177.8" y1="132.08" x2="177.8" y2="106.68" width="0.1524" layer="91"/>
<pinref part="HDR2" gate="G$1" pin="7"/>
<wire x1="177.8" y1="106.68" x2="177.8" y2="88.9" width="0.1524" layer="91"/>
<wire x1="160.02" y1="106.68" x2="177.8" y2="106.68" width="0.1524" layer="91"/>
<junction x="177.8" y="106.68"/>
</segment>
</net>
<net name="PT_D3" class="0">
<segment>
<pinref part="RN1" gate="G$1" pin="R5"/>
<pinref part="PTNET1" gate="G$1" pin="A5"/>
<wire x1="180.34" y1="132.08" x2="180.34" y2="109.22" width="0.1524" layer="91"/>
<pinref part="HDR2" gate="G$1" pin="6"/>
<wire x1="180.34" y1="109.22" x2="180.34" y2="88.9" width="0.1524" layer="91"/>
<wire x1="160.02" y1="109.22" x2="180.34" y2="109.22" width="0.1524" layer="91"/>
<junction x="180.34" y="109.22"/>
</segment>
</net>
<net name="PT_D4" class="0">
<segment>
<pinref part="RN1" gate="G$1" pin="R6"/>
<wire x1="182.88" y1="88.9" x2="182.88" y2="111.76" width="0.1524" layer="91"/>
<pinref part="PTNET1" gate="G$1" pin="A4"/>
<pinref part="HDR2" gate="G$1" pin="5"/>
<wire x1="182.88" y1="111.76" x2="182.88" y2="132.08" width="0.1524" layer="91"/>
<wire x1="160.02" y1="111.76" x2="182.88" y2="111.76" width="0.1524" layer="91"/>
<junction x="182.88" y="111.76"/>
</segment>
</net>
<net name="PT_D5" class="0">
<segment>
<pinref part="RN1" gate="G$1" pin="R7"/>
<wire x1="185.42" y1="88.9" x2="185.42" y2="114.3" width="0.1524" layer="91"/>
<pinref part="PTNET1" gate="G$1" pin="A3"/>
<pinref part="HDR2" gate="G$1" pin="4"/>
<wire x1="185.42" y1="114.3" x2="185.42" y2="132.08" width="0.1524" layer="91"/>
<wire x1="160.02" y1="114.3" x2="185.42" y2="114.3" width="0.1524" layer="91"/>
<junction x="185.42" y="114.3"/>
</segment>
</net>
<net name="PT_D6" class="0">
<segment>
<pinref part="RN1" gate="G$1" pin="R8"/>
<wire x1="187.96" y1="88.9" x2="187.96" y2="116.84" width="0.1524" layer="91"/>
<pinref part="PTNET1" gate="G$1" pin="A2"/>
<pinref part="HDR2" gate="G$1" pin="3"/>
<wire x1="187.96" y1="116.84" x2="187.96" y2="132.08" width="0.1524" layer="91"/>
<wire x1="160.02" y1="116.84" x2="187.96" y2="116.84" width="0.1524" layer="91"/>
<junction x="187.96" y="116.84"/>
</segment>
</net>
<net name="PT_D7" class="0">
<segment>
<pinref part="RN1" gate="G$1" pin="R9"/>
<wire x1="190.5" y1="88.9" x2="190.5" y2="119.38" width="0.1524" layer="91"/>
<pinref part="PTNET1" gate="G$1" pin="A1"/>
<pinref part="HDR2" gate="G$1" pin="2"/>
<wire x1="190.5" y1="119.38" x2="190.5" y2="132.08" width="0.1524" layer="91"/>
<wire x1="160.02" y1="119.38" x2="190.5" y2="119.38" width="0.1524" layer="91"/>
<junction x="190.5" y="119.38"/>
</segment>
</net>
<net name="P5V" class="0">
<segment>
<pinref part="PTNET1" gate="G$1" pin="C1"/>
<wire x1="190.5" y1="157.48" x2="190.5" y2="162.56" width="0.1524" layer="91"/>
<wire x1="190.5" y1="162.56" x2="187.96" y2="162.56" width="0.1524" layer="91"/>
<wire x1="187.96" y1="162.56" x2="185.42" y2="162.56" width="0.1524" layer="91"/>
<wire x1="185.42" y1="162.56" x2="182.88" y2="162.56" width="0.1524" layer="91"/>
<wire x1="182.88" y1="162.56" x2="180.34" y2="162.56" width="0.1524" layer="91"/>
<wire x1="180.34" y1="162.56" x2="177.8" y2="162.56" width="0.1524" layer="91"/>
<wire x1="177.8" y1="162.56" x2="175.26" y2="162.56" width="0.1524" layer="91"/>
<wire x1="175.26" y1="162.56" x2="172.72" y2="162.56" width="0.1524" layer="91"/>
<wire x1="172.72" y1="162.56" x2="170.18" y2="162.56" width="0.1524" layer="91"/>
<wire x1="170.18" y1="162.56" x2="162.56" y2="162.56" width="0.1524" layer="91"/>
<wire x1="162.56" y1="162.56" x2="162.56" y2="121.92" width="0.1524" layer="91"/>
<pinref part="PTNET1" gate="G$1" pin="C2"/>
<wire x1="187.96" y1="157.48" x2="187.96" y2="162.56" width="0.1524" layer="91"/>
<junction x="187.96" y="162.56"/>
<pinref part="PTNET1" gate="G$1" pin="C3"/>
<wire x1="185.42" y1="157.48" x2="185.42" y2="162.56" width="0.1524" layer="91"/>
<junction x="185.42" y="162.56"/>
<pinref part="PTNET1" gate="G$1" pin="C4"/>
<wire x1="182.88" y1="157.48" x2="182.88" y2="162.56" width="0.1524" layer="91"/>
<junction x="182.88" y="162.56"/>
<pinref part="PTNET1" gate="G$1" pin="C5"/>
<wire x1="180.34" y1="157.48" x2="180.34" y2="162.56" width="0.1524" layer="91"/>
<junction x="180.34" y="162.56"/>
<pinref part="PTNET1" gate="G$1" pin="C6"/>
<wire x1="177.8" y1="157.48" x2="177.8" y2="162.56" width="0.1524" layer="91"/>
<junction x="177.8" y="162.56"/>
<pinref part="PTNET1" gate="G$1" pin="C7"/>
<wire x1="175.26" y1="157.48" x2="175.26" y2="162.56" width="0.1524" layer="91"/>
<junction x="175.26" y="162.56"/>
<pinref part="PTNET1" gate="G$1" pin="C8"/>
<wire x1="172.72" y1="157.48" x2="172.72" y2="162.56" width="0.1524" layer="91"/>
<junction x="172.72" y="162.56"/>
<pinref part="PTNET1" gate="G$1" pin="C9"/>
<wire x1="170.18" y1="157.48" x2="170.18" y2="162.56" width="0.1524" layer="91"/>
<junction x="170.18" y="162.56"/>
<pinref part="HDR2" gate="G$1" pin="1"/>
<wire x1="162.56" y1="121.92" x2="160.02" y2="121.92" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="144.78" y1="121.92" x2="154.94" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="MM1" gate="G$1" pin="GND1"/>
<wire x1="78.74" y1="101.6" x2="76.2" y2="101.6" width="0.1524" layer="91"/>
<wire x1="76.2" y1="101.6" x2="76.2" y2="71.12" width="0.1524" layer="91"/>
<wire x1="76.2" y1="71.12" x2="134.62" y2="71.12" width="0.1524" layer="91"/>
<wire x1="134.62" y1="71.12" x2="134.62" y2="96.52" width="0.1524" layer="91"/>
<pinref part="HDR1" gate="G$1" pin="11"/>
<wire x1="134.62" y1="96.52" x2="139.7" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="RN1" gate="G$1" pin="COM"/>
<wire x1="162.56" y1="71.12" x2="162.56" y2="96.52" width="0.1524" layer="91"/>
<pinref part="HDR2" gate="G$1" pin="11"/>
<wire x1="162.56" y1="96.52" x2="160.02" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="132.08" y1="83.82" x2="132.08" y2="106.68" width="0.1524" layer="91"/>
<pinref part="MM1" gate="G$1" pin="D2"/>
<wire x1="114.3" y1="83.82" x2="132.08" y2="83.82" width="0.1524" layer="91"/>
<pinref part="HDR1" gate="G$1" pin="7"/>
<wire x1="132.08" y1="106.68" x2="139.7" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="129.54" y1="106.68" x2="129.54" y2="109.22" width="0.1524" layer="91"/>
<pinref part="MM1" gate="G$1" pin="D11"/>
<wire x1="114.3" y1="106.68" x2="129.54" y2="106.68" width="0.1524" layer="91"/>
<pinref part="HDR1" gate="G$1" pin="6"/>
<wire x1="129.54" y1="109.22" x2="139.7" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<wire x1="127" y1="109.22" x2="127" y2="111.76" width="0.1524" layer="91"/>
<pinref part="MM1" gate="G$1" pin="D12"/>
<wire x1="114.3" y1="109.22" x2="127" y2="109.22" width="0.1524" layer="91"/>
<pinref part="HDR1" gate="G$1" pin="5"/>
<wire x1="127" y1="111.76" x2="139.7" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<wire x1="124.46" y1="91.44" x2="124.46" y2="114.3" width="0.1524" layer="91"/>
<pinref part="MM1" gate="G$1" pin="D5"/>
<wire x1="114.3" y1="91.44" x2="124.46" y2="91.44" width="0.1524" layer="91"/>
<pinref part="HDR1" gate="G$1" pin="4"/>
<wire x1="124.46" y1="114.3" x2="139.7" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="121.92" y1="93.98" x2="121.92" y2="116.84" width="0.1524" layer="91"/>
<pinref part="MM1" gate="G$1" pin="D6"/>
<wire x1="114.3" y1="93.98" x2="121.92" y2="93.98" width="0.1524" layer="91"/>
<pinref part="HDR1" gate="G$1" pin="3"/>
<wire x1="121.92" y1="116.84" x2="139.7" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="119.38" y1="96.52" x2="119.38" y2="119.38" width="0.1524" layer="91"/>
<pinref part="MM1" gate="G$1" pin="D7"/>
<wire x1="114.3" y1="96.52" x2="119.38" y2="96.52" width="0.1524" layer="91"/>
<pinref part="HDR1" gate="G$1" pin="2"/>
<wire x1="119.38" y1="119.38" x2="139.7" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="MM1" gate="G$1" pin="P5V"/>
<wire x1="78.74" y1="104.14" x2="76.2" y2="104.14" width="0.1524" layer="91"/>
<wire x1="76.2" y1="104.14" x2="76.2" y2="121.92" width="0.1524" layer="91"/>
<pinref part="HDR1" gate="G$1" pin="1"/>
<wire x1="76.2" y1="121.92" x2="139.7" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="MM1" gate="G$1" pin="D10"/>
<pinref part="HDR1" gate="G$1" pin="8"/>
<wire x1="114.3" y1="104.14" x2="139.7" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="MM1" gate="G$1" pin="D9"/>
<pinref part="HDR1" gate="G$1" pin="9"/>
<wire x1="114.3" y1="101.6" x2="139.7" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="MM1" gate="G$1" pin="D8"/>
<pinref part="HDR1" gate="G$1" pin="10"/>
<wire x1="114.3" y1="99.06" x2="139.7" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<wire x1="144.78" y1="96.52" x2="154.94" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
