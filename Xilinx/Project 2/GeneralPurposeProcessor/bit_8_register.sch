<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="O(7:0)" />
        <signal name="O(0)" />
        <signal name="D(0)" />
        <signal name="C" />
        <signal name="D(1)" />
        <signal name="D(2)" />
        <signal name="D(3)" />
        <signal name="O(1)" />
        <signal name="O(2)" />
        <signal name="O(3)" />
        <signal name="D(4)" />
        <signal name="D(5)" />
        <signal name="D(6)" />
        <signal name="O(4)" />
        <signal name="O(5)" />
        <signal name="O(6)" />
        <signal name="D(7)" />
        <signal name="O(7)" />
        <signal name="D(7:0)" />
        <signal name="E" />
        <port polarity="Output" name="O(7:0)" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="D(7:0)" />
        <port polarity="Input" name="E" />
        <blockdef name="fde">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <block symbolname="fde" name="XLXI_1">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="D(0)" name="D" />
            <blockpin signalname="O(0)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_4">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="D(3)" name="D" />
            <blockpin signalname="O(3)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_5">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="D(4)" name="D" />
            <blockpin signalname="O(4)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_6">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="D(5)" name="D" />
            <blockpin signalname="O(5)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_7">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="D(6)" name="D" />
            <blockpin signalname="O(6)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_8">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="D(7)" name="D" />
            <blockpin signalname="O(7)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_2">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="D(1)" name="D" />
            <blockpin signalname="O(1)" name="Q" />
        </block>
        <block symbolname="fde" name="XLXI_3">
            <blockpin signalname="C" name="C" />
            <blockpin signalname="E" name="CE" />
            <blockpin signalname="D(2)" name="D" />
            <blockpin signalname="O(2)" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="O(7:0)">
            <wire x2="3200" y1="224" y2="224" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="3200" y="224" name="O(7:0)" orien="R0" />
        <instance x="80" y="992" name="XLXI_1" orien="R90" />
        <branch name="O(0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="336" y="1424" type="branch" />
            <wire x2="336" y1="1376" y2="1408" x1="336" />
            <wire x2="336" y1="1408" y2="1424" x1="336" />
        </branch>
        <branch name="D(0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="336" y="944" type="branch" />
            <wire x2="336" y1="944" y2="960" x1="336" />
            <wire x2="336" y1="960" y2="992" x1="336" />
        </branch>
        <branch name="C">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="944" type="branch" />
            <wire x2="208" y1="944" y2="960" x1="208" />
            <wire x2="208" y1="960" y2="992" x1="208" />
        </branch>
        <branch name="E">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="848" type="branch" />
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3312" y="848" type="branch" />
            <wire x2="272" y1="848" y2="992" x1="272" />
            <wire x2="672" y1="848" y2="848" x1="272" />
            <wire x2="1056" y1="848" y2="848" x1="672" />
            <wire x2="1440" y1="848" y2="848" x1="1056" />
            <wire x2="1440" y1="848" y2="992" x1="1440" />
            <wire x2="1808" y1="848" y2="848" x1="1440" />
            <wire x2="2192" y1="848" y2="848" x1="1808" />
            <wire x2="2192" y1="848" y2="992" x1="2192" />
            <wire x2="2576" y1="848" y2="848" x1="2192" />
            <wire x2="2576" y1="848" y2="992" x1="2576" />
            <wire x2="2976" y1="848" y2="848" x1="2576" />
            <wire x2="3312" y1="848" y2="848" x1="2976" />
            <wire x2="2976" y1="848" y2="992" x1="2976" />
            <wire x2="1808" y1="848" y2="992" x1="1808" />
            <wire x2="1056" y1="848" y2="992" x1="1056" />
            <wire x2="672" y1="848" y2="992" x1="672" />
        </branch>
        <branch name="C">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="608" y="944" type="branch" />
            <wire x2="608" y1="944" y2="992" x1="608" />
        </branch>
        <branch name="D(1)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="960" type="branch" />
            <wire x2="736" y1="960" y2="992" x1="736" />
        </branch>
        <branch name="C">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="992" y="944" type="branch" />
            <wire x2="992" y1="944" y2="992" x1="992" />
        </branch>
        <branch name="D(2)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="960" type="branch" />
            <wire x2="1120" y1="960" y2="992" x1="1120" />
        </branch>
        <instance x="1248" y="992" name="XLXI_4" orien="R90" />
        <branch name="C">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="944" type="branch" />
            <wire x2="1376" y1="944" y2="992" x1="1376" />
        </branch>
        <branch name="D(3)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="944" type="branch" />
            <wire x2="1504" y1="944" y2="992" x1="1504" />
        </branch>
        <branch name="O(1)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="1440" type="branch" />
            <wire x2="736" y1="1376" y2="1440" x1="736" />
        </branch>
        <branch name="O(2)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1440" type="branch" />
            <wire x2="1120" y1="1376" y2="1440" x1="1120" />
        </branch>
        <branch name="O(3)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="1440" type="branch" />
            <wire x2="1504" y1="1376" y2="1440" x1="1504" />
        </branch>
        <instance x="1616" y="992" name="XLXI_5" orien="R90" />
        <instance x="2000" y="992" name="XLXI_6" orien="R90" />
        <instance x="2384" y="992" name="XLXI_7" orien="R90" />
        <branch name="C">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="928" type="branch" />
            <wire x2="1744" y1="928" y2="992" x1="1744" />
        </branch>
        <branch name="D(4)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="944" type="branch" />
            <wire x2="1872" y1="944" y2="992" x1="1872" />
        </branch>
        <branch name="C">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2128" y="928" type="branch" />
            <wire x2="2128" y1="928" y2="992" x1="2128" />
        </branch>
        <branch name="D(5)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="928" type="branch" />
            <wire x2="2256" y1="928" y2="992" x1="2256" />
        </branch>
        <branch name="C">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="928" type="branch" />
            <wire x2="2512" y1="928" y2="992" x1="2512" />
        </branch>
        <branch name="D(6)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="944" type="branch" />
            <wire x2="2640" y1="944" y2="992" x1="2640" />
        </branch>
        <branch name="O(4)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="1440" type="branch" />
            <wire x2="1872" y1="1376" y2="1440" x1="1872" />
        </branch>
        <branch name="O(5)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1408" type="branch" />
            <wire x2="2256" y1="1376" y2="1408" x1="2256" />
        </branch>
        <branch name="O(6)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1424" type="branch" />
            <wire x2="2640" y1="1376" y2="1424" x1="2640" />
        </branch>
        <instance x="2784" y="992" name="XLXI_8" orien="R90" />
        <branch name="D(7)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="944" type="branch" />
            <wire x2="3040" y1="944" y2="992" x1="3040" />
        </branch>
        <branch name="C">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="944" type="branch" />
            <wire x2="2912" y1="944" y2="992" x1="2912" />
        </branch>
        <branch name="O(7)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="1440" type="branch" />
            <wire x2="3040" y1="1376" y2="1440" x1="3040" />
        </branch>
        <instance x="480" y="992" name="XLXI_2" orien="R90" />
        <instance x="864" y="992" name="XLXI_3" orien="R90" />
        <branch name="D(7:0)">
            <wire x2="448" y1="176" y2="176" x1="224" />
        </branch>
        <branch name="E">
            <wire x2="448" y1="288" y2="288" x1="176" />
        </branch>
        <iomarker fontsize="28" x="224" y="176" name="D(7:0)" orien="R180" />
        <iomarker fontsize="28" x="176" y="288" name="E" orien="R180" />
        <iomarker fontsize="28" x="176" y="400" name="C" orien="R180" />
        <branch name="C">
            <wire x2="448" y1="400" y2="400" x1="176" />
        </branch>
    </sheet>
</drawing>