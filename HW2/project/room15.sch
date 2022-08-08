<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="close" />
        <signal name="q0_debug" />
        <signal name="q1_debug" />
        <signal name="q2_debug" />
        <signal name="q3_debug" />
        <signal name="XLXN_12" />
        <signal name="T" />
        <signal name="Ent" />
        <signal name="XLXN_15" />
        <signal name="XLXN_18" />
        <signal name="open1" />
        <signal name="clk" />
        <signal name="Enable_debug" />
        <signal name="XLXN_30" />
        <signal name="U_debug" />
        <signal name="out1" />
        <signal name="XLXN_33" />
        <signal name="in1" />
        <port polarity="Output" name="close" />
        <port polarity="Output" name="q0_debug" />
        <port polarity="Output" name="q1_debug" />
        <port polarity="Output" name="q2_debug" />
        <port polarity="Output" name="q3_debug" />
        <port polarity="Input" name="T" />
        <port polarity="Input" name="Ent" />
        <port polarity="Output" name="open1" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Enable_debug" />
        <port polarity="Output" name="U_debug" />
        <port polarity="Input" name="out1" />
        <port polarity="Input" name="in1" />
        <blockdef name="my_counter">
            <timestamp>2022-4-4T15:58:5</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="nor4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="216" y1="-160" y2="-160" x1="256" />
            <circle r="12" cx="204" cy="-160" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="nand4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="216" y1="-160" y2="-160" x1="256" />
            <circle r="12" cx="204" cy="-160" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="fdc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="my_counter" name="XLXI_1">
            <blockpin signalname="Enable_debug" name="Enable" />
            <blockpin signalname="clk" name="Clk" />
            <blockpin signalname="U_debug" name="U" />
            <blockpin signalname="XLXN_30" name="Clr" />
            <blockpin signalname="q0_debug" name="q0" />
            <blockpin signalname="q1_debug" name="q1" />
            <blockpin signalname="q2_debug" name="q2" />
            <blockpin signalname="q3_debug" name="q3" />
        </block>
        <block symbolname="nor4" name="XLXI_2">
            <blockpin signalname="q3_debug" name="I0" />
            <blockpin signalname="q2_debug" name="I1" />
            <blockpin signalname="q1_debug" name="I2" />
            <blockpin signalname="q0_debug" name="I3" />
            <blockpin signalname="close" name="O" />
        </block>
        <block symbolname="nand4" name="XLXI_3">
            <blockpin signalname="q3_debug" name="I0" />
            <blockpin signalname="q2_debug" name="I1" />
            <blockpin signalname="q1_debug" name="I2" />
            <blockpin signalname="q0_debug" name="I3" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_4">
            <blockpin signalname="Ent" name="I0" />
            <blockpin signalname="T" name="I1" />
            <blockpin signalname="XLXN_12" name="I2" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="fdc" name="XLXI_10">
            <blockpin signalname="XLXN_15" name="C" />
            <blockpin signalname="in1" name="CLR" />
            <blockpin signalname="XLXN_18" name="D" />
            <blockpin signalname="open1" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="XLXN_18" name="P" />
        </block>
        <block symbolname="xor2" name="XLXI_14">
            <blockpin signalname="in1" name="I0" />
            <blockpin signalname="out1" name="I1" />
            <blockpin signalname="Enable_debug" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_15">
            <blockpin signalname="XLXN_30" name="G" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="in1" name="I0" />
            <blockpin signalname="XLXN_33" name="I1" />
            <blockpin signalname="U_debug" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_13">
            <blockpin signalname="out1" name="I" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="1760">
        <instance x="848" y="912" name="XLXI_1" orien="R0">
        </instance>
        <branch name="close">
            <wire x2="1824" y1="784" y2="784" x1="1712" />
        </branch>
        <instance x="1456" y="944" name="XLXI_2" orien="R0" />
        <instance x="1456" y="1248" name="XLXI_3" orien="R0" />
        <branch name="q0_debug">
            <wire x2="1424" y1="688" y2="688" x1="1232" />
            <wire x2="1456" y1="688" y2="688" x1="1424" />
            <wire x2="1424" y1="688" y2="992" x1="1424" />
            <wire x2="1456" y1="992" y2="992" x1="1424" />
            <wire x2="1424" y1="416" y2="416" x1="1312" />
            <wire x2="1424" y1="416" y2="688" x1="1424" />
        </branch>
        <branch name="q1_debug">
            <wire x2="1392" y1="752" y2="752" x1="1232" />
            <wire x2="1456" y1="752" y2="752" x1="1392" />
            <wire x2="1392" y1="752" y2="1056" x1="1392" />
            <wire x2="1456" y1="1056" y2="1056" x1="1392" />
            <wire x2="1392" y1="464" y2="464" x1="1312" />
            <wire x2="1392" y1="464" y2="752" x1="1392" />
        </branch>
        <branch name="q2_debug">
            <wire x2="1360" y1="816" y2="816" x1="1232" />
            <wire x2="1456" y1="816" y2="816" x1="1360" />
            <wire x2="1360" y1="816" y2="1120" x1="1360" />
            <wire x2="1456" y1="1120" y2="1120" x1="1360" />
            <wire x2="1360" y1="512" y2="512" x1="1312" />
            <wire x2="1360" y1="512" y2="816" x1="1360" />
        </branch>
        <branch name="q3_debug">
            <wire x2="1328" y1="880" y2="880" x1="1232" />
            <wire x2="1456" y1="880" y2="880" x1="1328" />
            <wire x2="1328" y1="880" y2="1184" x1="1328" />
            <wire x2="1456" y1="1184" y2="1184" x1="1328" />
            <wire x2="1328" y1="560" y2="560" x1="1312" />
            <wire x2="1328" y1="560" y2="880" x1="1328" />
        </branch>
        <instance x="1840" y="1280" name="XLXI_4" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="1840" y1="1088" y2="1088" x1="1712" />
        </branch>
        <branch name="T">
            <wire x2="1840" y1="1152" y2="1152" x1="1808" />
        </branch>
        <branch name="Ent">
            <wire x2="1840" y1="1216" y2="1216" x1="1808" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2128" y1="1152" y2="1152" x1="2096" />
        </branch>
        <instance x="2128" y="1280" name="XLXI_10" orien="R0" />
        <instance x="1968" y="992" name="XLXI_11" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="2032" y1="992" y2="1024" x1="2032" />
            <wire x2="2128" y1="1024" y2="1024" x1="2032" />
        </branch>
        <branch name="open1">
            <wire x2="2544" y1="1024" y2="1024" x1="2512" />
        </branch>
        <branch name="clk">
            <wire x2="832" y1="720" y2="720" x1="224" />
            <wire x2="832" y1="720" y2="752" x1="832" />
            <wire x2="848" y1="752" y2="752" x1="832" />
        </branch>
        <instance x="560" y="736" name="XLXI_14" orien="R0" />
        <branch name="Enable_debug">
            <wire x2="832" y1="640" y2="640" x1="816" />
            <wire x2="832" y1="640" y2="688" x1="832" />
            <wire x2="848" y1="688" y2="688" x1="832" />
            <wire x2="832" y1="480" y2="640" x1="832" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="848" y1="880" y2="912" x1="848" />
        </branch>
        <instance x="784" y="1040" name="XLXI_15" orien="R0" />
        <instance x="560" y="912" name="XLXI_12" orien="R0" />
        <branch name="U_debug">
            <wire x2="768" y1="880" y2="928" x1="768" />
            <wire x2="832" y1="880" y2="880" x1="768" />
            <wire x2="832" y1="816" y2="816" x1="816" />
            <wire x2="848" y1="816" y2="816" x1="832" />
            <wire x2="832" y1="816" y2="880" x1="832" />
        </branch>
        <branch name="out1">
            <wire x2="304" y1="784" y2="784" x1="224" />
            <wire x2="320" y1="784" y2="784" x1="304" />
            <wire x2="560" y1="608" y2="608" x1="304" />
            <wire x2="304" y1="608" y2="784" x1="304" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="560" y1="784" y2="784" x1="544" />
        </branch>
        <instance x="320" y="816" name="XLXI_13" orien="R0" />
        <branch name="in1">
            <wire x2="272" y1="848" y2="848" x1="224" />
            <wire x2="560" y1="848" y2="848" x1="272" />
            <wire x2="272" y1="848" y2="1312" x1="272" />
            <wire x2="2128" y1="1312" y2="1312" x1="272" />
            <wire x2="560" y1="672" y2="672" x1="272" />
            <wire x2="272" y1="672" y2="848" x1="272" />
            <wire x2="2128" y1="1248" y2="1312" x1="2128" />
        </branch>
        <iomarker fontsize="28" x="1824" y="784" name="close" orien="R0" />
        <iomarker fontsize="28" x="1808" y="1152" name="T" orien="R180" />
        <iomarker fontsize="28" x="1808" y="1216" name="Ent" orien="R180" />
        <iomarker fontsize="28" x="2544" y="1024" name="open1" orien="R0" />
        <iomarker fontsize="28" x="1312" y="560" name="q3_debug" orien="R180" />
        <iomarker fontsize="28" x="1312" y="512" name="q2_debug" orien="R180" />
        <iomarker fontsize="28" x="1312" y="464" name="q1_debug" orien="R180" />
        <iomarker fontsize="28" x="1312" y="416" name="q0_debug" orien="R180" />
        <iomarker fontsize="28" x="832" y="480" name="Enable_debug" orien="R270" />
        <iomarker fontsize="28" x="768" y="928" name="U_debug" orien="R90" />
        <iomarker fontsize="28" x="224" y="784" name="out1" orien="R180" />
        <iomarker fontsize="28" x="224" y="848" name="in1" orien="R180" />
        <iomarker fontsize="28" x="224" y="720" name="clk" orien="R180" />
        <text style="fontsize:20;fontname:Courier New" x="68" y="1676">April 2022</text>
        <text style="fontsize:20;fontname:Courier New" x="68" y="1652">Digital Systems Design Lab - HW2</text>
        <text style="fontsize:28;fontname:Courier New" x="68" y="1624">Alireza Habibzadeh - 99109393</text>
    </sheet>
</drawing>