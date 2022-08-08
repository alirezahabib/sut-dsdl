<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Enable" />
        <signal name="Clk" />
        <signal name="XLXN_80" />
        <signal name="q3" />
        <signal name="q0" />
        <signal name="q1" />
        <signal name="U" />
        <signal name="XLXN_148" />
        <signal name="XLXN_149" />
        <signal name="XLXN_151" />
        <signal name="XLXN_77" />
        <signal name="XLXN_162" />
        <signal name="XLXN_152" />
        <signal name="XLXN_95" />
        <signal name="Clr" />
        <signal name="q2" />
        <port polarity="Input" name="Enable" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="q3" />
        <port polarity="Output" name="q0" />
        <port polarity="Output" name="q1" />
        <port polarity="Input" name="U" />
        <port polarity="Input" name="Clr" />
        <port polarity="Output" name="q2" />
        <blockdef name="ftc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="ftc" name="XLXI_2">
            <blockpin signalname="XLXN_77" name="C" />
            <blockpin signalname="Clr" name="CLR" />
            <blockpin signalname="XLXN_149" name="T" />
            <blockpin signalname="q1" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_33">
            <blockpin signalname="XLXN_80" name="P" />
        </block>
        <block symbolname="ftc" name="XLXI_1">
            <blockpin signalname="XLXN_77" name="C" />
            <blockpin signalname="Clr" name="CLR" />
            <blockpin signalname="XLXN_80" name="T" />
            <blockpin signalname="q0" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="Enable" name="I0" />
            <blockpin signalname="Clk" name="I1" />
            <blockpin signalname="XLXN_77" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_50">
            <blockpin signalname="U" name="I" />
            <blockpin signalname="XLXN_148" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_51">
            <blockpin signalname="XLXN_148" name="I0" />
            <blockpin signalname="q0" name="I1" />
            <blockpin signalname="XLXN_149" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_49">
            <blockpin signalname="XLXN_148" name="I0" />
            <blockpin signalname="q1" name="I1" />
            <blockpin signalname="XLXN_151" name="O" />
        </block>
        <block symbolname="ftc" name="XLXI_3">
            <blockpin signalname="XLXN_77" name="C" />
            <blockpin signalname="Clr" name="CLR" />
            <blockpin signalname="XLXN_95" name="T" />
            <blockpin signalname="q2" name="Q" />
        </block>
        <block symbolname="and2" name="XLXI_52">
            <blockpin signalname="XLXN_151" name="I0" />
            <blockpin signalname="XLXN_149" name="I1" />
            <blockpin signalname="XLXN_95" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_55">
            <blockpin signalname="XLXN_148" name="I0" />
            <blockpin signalname="q2" name="I1" />
            <blockpin signalname="XLXN_162" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_54">
            <blockpin signalname="XLXN_162" name="I0" />
            <blockpin signalname="XLXN_95" name="I1" />
            <blockpin signalname="XLXN_152" name="O" />
        </block>
        <block symbolname="ftc" name="XLXI_4">
            <blockpin signalname="XLXN_77" name="C" />
            <blockpin signalname="Clr" name="CLR" />
            <blockpin signalname="XLXN_152" name="T" />
            <blockpin signalname="q3" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1296" y="1520" name="XLXI_2" orien="R0" />
        <branch name="Enable">
            <wire x2="272" y1="1824" y2="1824" x1="256" />
        </branch>
        <branch name="Clk">
            <wire x2="272" y1="1760" y2="1760" x1="256" />
        </branch>
        <instance x="464" y="1248" name="XLXI_33" orien="R0" />
        <branch name="XLXN_80">
            <wire x2="528" y1="1248" y2="1280" x1="528" />
            <wire x2="576" y1="1280" y2="1280" x1="528" />
        </branch>
        <instance x="576" y="1536" name="XLXI_1" orien="R0" />
        <branch name="q3">
            <wire x2="3408" y1="1040" y2="1056" x1="3408" />
            <wire x2="3424" y1="1056" y2="1056" x1="3408" />
            <wire x2="3424" y1="1056" y2="1296" x1="3424" />
            <wire x2="3424" y1="1296" y2="1296" x1="3408" />
        </branch>
        <instance x="272" y="1888" name="XLXI_20" orien="R0" />
        <branch name="q0">
            <wire x2="976" y1="1280" y2="1280" x1="960" />
            <wire x2="976" y1="1280" y2="1520" x1="976" />
            <wire x2="1040" y1="1520" y2="1520" x1="976" />
            <wire x2="976" y1="992" y2="1280" x1="976" />
            <wire x2="1040" y1="1488" y2="1520" x1="1040" />
        </branch>
        <branch name="q1">
            <wire x2="1696" y1="1264" y2="1264" x1="1680" />
            <wire x2="1696" y1="1264" y2="1488" x1="1696" />
            <wire x2="1744" y1="1488" y2="1488" x1="1696" />
            <wire x2="1696" y1="992" y2="1264" x1="1696" />
        </branch>
        <instance x="704" y="1696" name="XLXI_50" orien="R0" />
        <branch name="U">
            <wire x2="704" y1="1664" y2="1664" x1="384" />
        </branch>
        <instance x="1168" y="1488" name="XLXI_51" orien="R270" />
        <branch name="XLXN_148">
            <wire x2="1104" y1="1664" y2="1664" x1="928" />
            <wire x2="1808" y1="1664" y2="1664" x1="1104" />
            <wire x2="2720" y1="1664" y2="1664" x1="1808" />
            <wire x2="1104" y1="1488" y2="1664" x1="1104" />
            <wire x2="1808" y1="1488" y2="1664" x1="1808" />
            <wire x2="2720" y1="1504" y2="1664" x1="2720" />
        </branch>
        <branch name="XLXN_149">
            <wire x2="1072" y1="1168" y2="1200" x1="1072" />
            <wire x2="1072" y1="1200" y2="1232" x1="1072" />
            <wire x2="1296" y1="1200" y2="1200" x1="1072" />
            <wire x2="1296" y1="1200" y2="1264" x1="1296" />
            <wire x2="1888" y1="1168" y2="1168" x1="1072" />
            <wire x2="1888" y1="1168" y2="1248" x1="1888" />
            <wire x2="1904" y1="1248" y2="1248" x1="1888" />
        </branch>
        <instance x="1872" y="1488" name="XLXI_49" orien="R270" />
        <branch name="XLXN_151">
            <wire x2="1776" y1="1216" y2="1232" x1="1776" />
            <wire x2="1840" y1="1216" y2="1216" x1="1776" />
            <wire x2="1840" y1="1216" y2="1312" x1="1840" />
            <wire x2="1904" y1="1312" y2="1312" x1="1840" />
        </branch>
        <instance x="2208" y="1536" name="XLXI_3" orien="R0" />
        <branch name="XLXN_77">
            <wire x2="560" y1="1792" y2="1792" x1="528" />
            <wire x2="1280" y1="1792" y2="1792" x1="560" />
            <wire x2="2176" y1="1792" y2="1792" x1="1280" />
            <wire x2="2800" y1="1792" y2="1792" x1="2176" />
            <wire x2="576" y1="1408" y2="1408" x1="560" />
            <wire x2="560" y1="1408" y2="1792" x1="560" />
            <wire x2="1296" y1="1392" y2="1392" x1="1280" />
            <wire x2="1280" y1="1392" y2="1792" x1="1280" />
            <wire x2="2208" y1="1408" y2="1408" x1="2176" />
            <wire x2="2176" y1="1408" y2="1792" x1="2176" />
            <wire x2="2800" y1="1424" y2="1792" x1="2800" />
            <wire x2="3024" y1="1424" y2="1424" x1="2800" />
        </branch>
        <instance x="1904" y="1376" name="XLXI_52" orien="R0" />
        <instance x="2784" y="1504" name="XLXI_55" orien="R270" />
        <branch name="XLXN_162">
            <wire x2="2688" y1="1232" y2="1248" x1="2688" />
            <wire x2="2736" y1="1232" y2="1232" x1="2688" />
        </branch>
        <branch name="XLXN_152">
            <wire x2="3008" y1="1200" y2="1200" x1="2992" />
            <wire x2="3008" y1="1200" y2="1296" x1="3008" />
            <wire x2="3024" y1="1296" y2="1296" x1="3008" />
        </branch>
        <branch name="XLXN_95">
            <wire x2="2192" y1="1280" y2="1280" x1="2160" />
            <wire x2="2208" y1="1280" y2="1280" x1="2192" />
            <wire x2="2192" y1="1168" y2="1280" x1="2192" />
            <wire x2="2736" y1="1168" y2="1168" x1="2192" />
        </branch>
        <instance x="2736" y="1296" name="XLXI_54" orien="R0" />
        <branch name="Clr">
            <wire x2="576" y1="1568" y2="1568" x1="464" />
            <wire x2="1296" y1="1568" y2="1568" x1="576" />
            <wire x2="2208" y1="1568" y2="1568" x1="1296" />
            <wire x2="3024" y1="1568" y2="1568" x1="2208" />
            <wire x2="576" y1="1504" y2="1568" x1="576" />
            <wire x2="1296" y1="1488" y2="1568" x1="1296" />
            <wire x2="2208" y1="1504" y2="1568" x1="2208" />
            <wire x2="3024" y1="1520" y2="1568" x1="3024" />
        </branch>
        <instance x="3024" y="1552" name="XLXI_4" orien="R0" />
        <branch name="q2">
            <wire x2="2624" y1="1280" y2="1280" x1="2592" />
            <wire x2="2624" y1="1280" y2="1504" x1="2624" />
            <wire x2="2656" y1="1504" y2="1504" x1="2624" />
            <wire x2="2624" y1="1024" y2="1280" x1="2624" />
        </branch>
        <iomarker fontsize="28" x="976" y="992" name="q0" orien="R270" />
        <iomarker fontsize="28" x="1696" y="992" name="q1" orien="R270" />
        <iomarker fontsize="28" x="464" y="1568" name="Clr" orien="R180" />
        <iomarker fontsize="28" x="3408" y="1040" name="q3" orien="R270" />
        <iomarker fontsize="28" x="256" y="1824" name="Enable" orien="R180" />
        <iomarker fontsize="28" x="256" y="1760" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="384" y="1664" name="U" orien="R180" />
        <iomarker fontsize="28" x="2624" y="1024" name="q2" orien="R270" />
        <text style="fontsize:20;fontname:Courier New" x="68" y="2620">April 2022</text>
        <text style="fontsize:20;fontname:Courier New" x="68" y="2596">Digital Systems Design Lab - HW2</text>
        <text style="fontsize:28;fontname:Courier New" x="68" y="2568">Alireza Habibzadeh - 99109393</text>
    </sheet>
</drawing>