<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="aspartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="B" />
        <signal name="Cin" />
        <signal name="Sum" />
        <signal name="Cout" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="Cin" />
        <port polarity="Output" name="Sum" />
        <port polarity="Output" name="Cout" />
        <blockdef name="xor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="208" y1="-128" y2="-128" x1="256" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="64" ey="-176" sx="64" sy="-80" r="56" cx="32" cy="-128" />
            <arc ex="128" ey="-176" sx="208" sy="-128" r="88" cx="132" cy="-88" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="64" y1="-80" y2="-80" x1="128" />
            <line x2="64" y1="-176" y2="-176" x1="128" />
            <arc ex="208" ey="-128" sx="128" sy="-80" r="88" cx="132" cy="-168" />
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
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="xor3" name="XLXI_1">
            <blockpin signalname="Cin" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="Sum" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="Cin" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="Cin" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_5">
            <blockpin signalname="XLXN_24" name="I0" />
            <blockpin signalname="XLXN_23" name="I1" />
            <blockpin signalname="XLXN_22" name="I2" />
            <blockpin signalname="Cout" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A">
            <wire x2="912" y1="192" y2="192" x1="576" />
            <wire x2="912" y1="192" y2="688" x1="912" />
            <wire x2="1184" y1="688" y2="688" x1="912" />
            <wire x2="912" y1="688" y2="1312" x1="912" />
            <wire x2="1200" y1="1312" y2="1312" x1="912" />
            <wire x2="1568" y1="192" y2="192" x1="912" />
            <wire x2="1568" y1="192" y2="288" x1="1568" />
        </branch>
        <branch name="B">
            <wire x2="992" y1="352" y2="352" x1="592" />
            <wire x2="992" y1="352" y2="752" x1="992" />
            <wire x2="1104" y1="752" y2="752" x1="992" />
            <wire x2="1184" y1="752" y2="752" x1="1104" />
            <wire x2="1104" y1="752" y2="1024" x1="1104" />
            <wire x2="1200" y1="1024" y2="1024" x1="1104" />
            <wire x2="1568" y1="352" y2="352" x1="992" />
        </branch>
        <instance x="1200" y="1376" name="XLXI_4" orien="R0" />
        <branch name="Cin">
            <wire x2="736" y1="560" y2="560" x1="608" />
            <wire x2="736" y1="560" y2="960" x1="736" />
            <wire x2="1200" y1="960" y2="960" x1="736" />
            <wire x2="736" y1="960" y2="1248" x1="736" />
            <wire x2="1200" y1="1248" y2="1248" x1="736" />
            <wire x2="1568" y1="560" y2="560" x1="736" />
            <wire x2="1568" y1="416" y2="560" x1="1568" />
        </branch>
        <instance x="1184" y="816" name="XLXI_2" orien="R0" />
        <instance x="1200" y="1088" name="XLXI_3" orien="R0" />
        <branch name="Cout">
            <wire x2="2224" y1="992" y2="992" x1="2208" />
            <wire x2="2496" y1="992" y2="992" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="576" y="192" name="A" orien="R180" />
        <iomarker fontsize="28" x="608" y="560" name="Cin" orien="R180" />
        <iomarker fontsize="28" x="592" y="352" name="B" orien="R180" />
        <branch name="XLXN_22">
            <wire x2="1952" y1="720" y2="720" x1="1440" />
            <wire x2="1952" y1="720" y2="928" x1="1952" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="1952" y1="1280" y2="1280" x1="1456" />
            <wire x2="1952" y1="1056" y2="1280" x1="1952" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1952" y1="992" y2="992" x1="1456" />
        </branch>
        <instance x="1952" y="1120" name="XLXI_5" orien="R0" />
        <branch name="Sum">
            <wire x2="2448" y1="352" y2="352" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="2448" y="352" name="Sum" orien="R0" />
        <iomarker fontsize="28" x="2496" y="992" name="Cout" orien="R0" />
        <instance x="1568" y="480" name="XLXI_1" orien="R0" />
    </sheet>
</drawing>