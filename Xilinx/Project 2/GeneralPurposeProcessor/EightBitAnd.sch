<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="AndOut(7:0)" />
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
        <signal name="AndOut(6)" />
        <signal name="AndOut(7)" />
        <signal name="AndOut(5)" />
        <signal name="AndOut(4)" />
        <signal name="AndOut(3)" />
        <signal name="AndOut(2)" />
        <signal name="AndOut(1)" />
        <signal name="AndOut(0)" />
        <signal name="A(7:0)" />
        <signal name="B(7:0)" />
        <port polarity="Output" name="AndOut(7:0)" />
        <port polarity="Input" name="A(7:0)" />
        <port polarity="Input" name="B(7:0)" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="B(0)" name="I0" />
            <blockpin signalname="A(0)" name="I1" />
            <blockpin signalname="AndOut(0)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="B(1)" name="I0" />
            <blockpin signalname="A(1)" name="I1" />
            <blockpin signalname="AndOut(1)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="B(2)" name="I0" />
            <blockpin signalname="A(2)" name="I1" />
            <blockpin signalname="AndOut(2)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="B(3)" name="I0" />
            <blockpin signalname="A(3)" name="I1" />
            <blockpin signalname="AndOut(3)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="B(4)" name="I0" />
            <blockpin signalname="A(4)" name="I1" />
            <blockpin signalname="AndOut(4)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="B(5)" name="I0" />
            <blockpin signalname="A(5)" name="I1" />
            <blockpin signalname="AndOut(5)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="B(6)" name="I0" />
            <blockpin signalname="A(6)" name="I1" />
            <blockpin signalname="AndOut(6)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="B(7)" name="I0" />
            <blockpin signalname="A(7)" name="I1" />
            <blockpin signalname="AndOut(7)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1424" y="528" name="XLXI_1" orien="R0" />
        <instance x="1424" y="736" name="XLXI_2" orien="R0" />
        <instance x="1424" y="944" name="XLXI_3" orien="R0" />
        <instance x="1424" y="1136" name="XLXI_4" orien="R0" />
        <instance x="1424" y="1344" name="XLXI_5" orien="R0" />
        <instance x="1424" y="1552" name="XLXI_6" orien="R0" />
        <instance x="1424" y="1776" name="XLXI_9" orien="R0" />
        <instance x="1424" y="2032" name="XLXI_10" orien="R0" />
        <branch name="A(0)">
            <wire x2="1424" y1="400" y2="400" x1="1296" />
        </branch>
        <branch name="B(0)">
            <wire x2="1424" y1="464" y2="464" x1="1296" />
        </branch>
        <branch name="A(1)">
            <wire x2="1424" y1="608" y2="608" x1="1312" />
        </branch>
        <branch name="B(1)">
            <wire x2="1424" y1="672" y2="672" x1="1312" />
        </branch>
        <branch name="A(2)">
            <wire x2="1424" y1="816" y2="816" x1="1312" />
        </branch>
        <branch name="B(2)">
            <wire x2="1424" y1="880" y2="880" x1="1312" />
        </branch>
        <branch name="A(3)">
            <wire x2="1424" y1="1008" y2="1008" x1="1328" />
        </branch>
        <branch name="B(3)">
            <wire x2="1424" y1="1072" y2="1072" x1="1328" />
        </branch>
        <branch name="A(4)">
            <wire x2="1424" y1="1216" y2="1216" x1="1328" />
        </branch>
        <branch name="B(4)">
            <wire x2="1424" y1="1280" y2="1280" x1="1328" />
        </branch>
        <branch name="A(5)">
            <wire x2="1424" y1="1424" y2="1424" x1="1344" />
        </branch>
        <branch name="B(5)">
            <wire x2="1424" y1="1488" y2="1488" x1="1344" />
        </branch>
        <branch name="A(6)">
            <wire x2="1424" y1="1648" y2="1648" x1="1328" />
        </branch>
        <branch name="B(6)">
            <wire x2="1424" y1="1712" y2="1712" x1="1344" />
        </branch>
        <branch name="A(7)">
            <wire x2="1424" y1="1904" y2="1904" x1="1328" />
        </branch>
        <branch name="B(7)">
            <wire x2="1424" y1="1968" y2="1968" x1="1328" />
        </branch>
        <branch name="AndOut(6)">
            <wire x2="1808" y1="1680" y2="1680" x1="1680" />
        </branch>
        <branch name="AndOut(7)">
            <wire x2="1792" y1="1936" y2="1936" x1="1680" />
        </branch>
        <branch name="AndOut(5)">
            <wire x2="1808" y1="1456" y2="1456" x1="1680" />
        </branch>
        <branch name="AndOut(4)">
            <wire x2="1808" y1="1248" y2="1248" x1="1680" />
        </branch>
        <branch name="AndOut(3)">
            <wire x2="1808" y1="1040" y2="1040" x1="1680" />
        </branch>
        <branch name="AndOut(2)">
            <wire x2="1808" y1="848" y2="848" x1="1680" />
        </branch>
        <branch name="AndOut(1)">
            <wire x2="1808" y1="640" y2="640" x1="1680" />
        </branch>
        <branch name="AndOut(0)">
            <wire x2="1808" y1="432" y2="432" x1="1680" />
        </branch>
        <branch name="A(7:0)">
            <wire x2="912" y1="1136" y2="1136" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="1136" name="A(7:0)" orien="R180" />
        <branch name="B(7:0)">
            <wire x2="928" y1="1328" y2="1328" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="1328" name="B(7:0)" orien="R180" />
        <iomarker fontsize="28" x="3232" y="1376" name="AndOut(7:0)" orien="R0" />
        <branch name="AndOut(7:0)">
            <wire x2="3232" y1="1376" y2="1376" x1="2608" />
        </branch>
    </sheet>
</drawing>