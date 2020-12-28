<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="OrOut(7:0)" />
        <signal name="A(0)" />
        <signal name="B(0)" />
        <signal name="A(1)" />
        <signal name="B(1)" />
        <signal name="A(2)" />
        <signal name="B(2)" />
        <signal name="A(3)" />
        <signal name="B(3)" />
        <signal name="A(4)" />
        <signal name="B(4)" />
        <signal name="A(5)" />
        <signal name="B(5)" />
        <signal name="A(6)" />
        <signal name="B(6)" />
        <signal name="A(7)" />
        <signal name="B(7)" />
        <signal name="OrOut(6)" />
        <signal name="OrOut(7)" />
        <signal name="OrOut(5)" />
        <signal name="OrOut(4)" />
        <signal name="OrOut(3)" />
        <signal name="OrOut(2)" />
        <signal name="OrOut(1)" />
        <signal name="OrOut(0)" />
        <signal name="A(7:0)" />
        <signal name="B(7:0)" />
        <port polarity="Output" name="OrOut(7:0)" />
        <port polarity="Input" name="A(7:0)" />
        <port polarity="Input" name="B(7:0)" />
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="or2" name="XLXI_11">
            <blockpin signalname="B(0)" name="I0" />
            <blockpin signalname="A(0)" name="I1" />
            <blockpin signalname="OrOut(0)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_12">
            <blockpin signalname="B(1)" name="I0" />
            <blockpin signalname="A(1)" name="I1" />
            <blockpin signalname="OrOut(1)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_13">
            <blockpin signalname="B(2)" name="I0" />
            <blockpin signalname="A(2)" name="I1" />
            <blockpin signalname="OrOut(2)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_14">
            <blockpin signalname="B(3)" name="I0" />
            <blockpin signalname="A(3)" name="I1" />
            <blockpin signalname="OrOut(3)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_15">
            <blockpin signalname="B(4)" name="I0" />
            <blockpin signalname="A(4)" name="I1" />
            <blockpin signalname="OrOut(4)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_16">
            <blockpin signalname="B(5)" name="I0" />
            <blockpin signalname="A(5)" name="I1" />
            <blockpin signalname="OrOut(5)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_17">
            <blockpin signalname="B(6)" name="I0" />
            <blockpin signalname="A(6)" name="I1" />
            <blockpin signalname="OrOut(6)" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_18">
            <blockpin signalname="B(7)" name="I0" />
            <blockpin signalname="A(7)" name="I1" />
            <blockpin signalname="OrOut(7)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="OrOut(7:0)">
            <wire x2="3136" y1="1456" y2="1456" x1="2448" />
        </branch>
        <branch name="A(0)">
            <wire x2="1264" y1="480" y2="480" x1="1136" />
        </branch>
        <branch name="B(0)">
            <wire x2="1264" y1="544" y2="544" x1="1136" />
        </branch>
        <branch name="A(1)">
            <wire x2="1264" y1="688" y2="688" x1="1152" />
        </branch>
        <branch name="B(1)">
            <wire x2="1264" y1="752" y2="752" x1="1152" />
        </branch>
        <branch name="A(2)">
            <wire x2="1264" y1="896" y2="896" x1="1152" />
        </branch>
        <branch name="B(2)">
            <wire x2="1264" y1="960" y2="960" x1="1152" />
        </branch>
        <branch name="A(3)">
            <wire x2="1264" y1="1088" y2="1088" x1="1168" />
        </branch>
        <branch name="B(3)">
            <wire x2="1264" y1="1152" y2="1152" x1="1168" />
        </branch>
        <branch name="A(4)">
            <wire x2="1264" y1="1296" y2="1296" x1="1168" />
        </branch>
        <branch name="B(4)">
            <wire x2="1264" y1="1360" y2="1360" x1="1168" />
        </branch>
        <branch name="A(5)">
            <wire x2="1264" y1="1504" y2="1504" x1="1184" />
        </branch>
        <branch name="B(5)">
            <wire x2="1264" y1="1568" y2="1568" x1="1184" />
        </branch>
        <branch name="A(6)">
            <wire x2="1264" y1="1728" y2="1728" x1="1168" />
        </branch>
        <branch name="B(6)">
            <wire x2="1264" y1="1792" y2="1792" x1="1184" />
        </branch>
        <branch name="A(7)">
            <wire x2="1264" y1="1984" y2="1984" x1="1168" />
        </branch>
        <branch name="B(7)">
            <wire x2="1264" y1="2048" y2="2048" x1="1168" />
        </branch>
        <branch name="OrOut(6)">
            <wire x2="1648" y1="1760" y2="1760" x1="1520" />
        </branch>
        <branch name="OrOut(7)">
            <wire x2="1632" y1="2016" y2="2016" x1="1520" />
        </branch>
        <branch name="OrOut(5)">
            <wire x2="1648" y1="1536" y2="1536" x1="1520" />
        </branch>
        <branch name="OrOut(4)">
            <wire x2="1648" y1="1328" y2="1328" x1="1520" />
        </branch>
        <branch name="OrOut(3)">
            <wire x2="1648" y1="1120" y2="1120" x1="1520" />
        </branch>
        <branch name="OrOut(2)">
            <wire x2="1648" y1="928" y2="928" x1="1520" />
        </branch>
        <branch name="OrOut(1)">
            <wire x2="1648" y1="720" y2="720" x1="1520" />
        </branch>
        <branch name="OrOut(0)">
            <wire x2="1648" y1="512" y2="512" x1="1520" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1456" name="OrOut(7:0)" orien="R0" />
        <instance x="1264" y="608" name="XLXI_11" orien="R0" />
        <instance x="1264" y="816" name="XLXI_12" orien="R0" />
        <instance x="1264" y="1024" name="XLXI_13" orien="R0" />
        <instance x="1264" y="1216" name="XLXI_14" orien="R0" />
        <instance x="1264" y="1424" name="XLXI_15" orien="R0" />
        <instance x="1264" y="1632" name="XLXI_16" orien="R0" />
        <instance x="1264" y="1856" name="XLXI_17" orien="R0" />
        <instance x="1264" y="2112" name="XLXI_18" orien="R0" />
        <branch name="A(7:0)">
            <wire x2="784" y1="1216" y2="1216" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="1216" name="A(7:0)" orien="R180" />
        <branch name="B(7:0)">
            <wire x2="768" y1="1408" y2="1408" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="1408" name="B(7:0)" orien="R180" />
    </sheet>
</drawing>