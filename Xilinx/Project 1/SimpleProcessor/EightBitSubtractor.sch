<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="Diff(7:0)" />
        <signal name="A(7:0)" />
        <signal name="B(7:0)" />
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
        <signal name="Diff(7)" />
        <signal name="Diff(6)" />
        <signal name="Diff(5)" />
        <signal name="Diff(4)" />
        <signal name="Diff(2)" />
        <signal name="Diff(3)" />
        <signal name="Diff(1)" />
        <signal name="Diff(0)" />
        <signal name="Ground" />
        <port polarity="Output" name="Diff(7:0)" />
        <port polarity="Input" name="A(7:0)" />
        <port polarity="Input" name="B(7:0)" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="FullSubtractor">
            <timestamp>2020-9-26T16:57:22</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_16">
            <blockpin signalname="Ground" name="G" />
        </block>
        <block symbolname="FullSubtractor" name="XLXI_17">
            <blockpin signalname="A(0)" name="A" />
            <blockpin signalname="B(0)" name="B" />
            <blockpin signalname="Ground" name="Bin" />
            <blockpin signalname="Diff(0)" name="D" />
            <blockpin signalname="XLXN_1" name="Bout" />
        </block>
        <block symbolname="FullSubtractor" name="XLXI_18">
            <blockpin signalname="A(1)" name="A" />
            <blockpin signalname="B(1)" name="B" />
            <blockpin signalname="XLXN_1" name="Bin" />
            <blockpin signalname="Diff(1)" name="D" />
            <blockpin signalname="XLXN_3" name="Bout" />
        </block>
        <block symbolname="FullSubtractor" name="XLXI_20">
            <blockpin signalname="A(3)" name="A" />
            <blockpin signalname="B(3)" name="B" />
            <blockpin signalname="XLXN_2" name="Bin" />
            <blockpin signalname="Diff(3)" name="D" />
            <blockpin signalname="XLXN_9" name="Bout" />
        </block>
        <block symbolname="FullSubtractor" name="XLXI_21">
            <blockpin signalname="A(4)" name="A" />
            <blockpin signalname="B(4)" name="B" />
            <blockpin signalname="XLXN_9" name="Bin" />
            <blockpin signalname="Diff(4)" name="D" />
            <blockpin signalname="XLXN_6" name="Bout" />
        </block>
        <block symbolname="FullSubtractor" name="XLXI_22">
            <blockpin signalname="A(5)" name="A" />
            <blockpin signalname="B(5)" name="B" />
            <blockpin signalname="XLXN_6" name="Bin" />
            <blockpin signalname="Diff(5)" name="D" />
            <blockpin signalname="XLXN_7" name="Bout" />
        </block>
        <block symbolname="FullSubtractor" name="XLXI_23">
            <blockpin signalname="A(6)" name="A" />
            <blockpin signalname="B(6)" name="B" />
            <blockpin signalname="XLXN_7" name="Bin" />
            <blockpin signalname="Diff(6)" name="D" />
            <blockpin signalname="XLXN_8" name="Bout" />
        </block>
        <block symbolname="FullSubtractor" name="XLXI_24">
            <blockpin signalname="A(7)" name="A" />
            <blockpin signalname="B(7)" name="B" />
            <blockpin signalname="XLXN_8" name="Bin" />
            <blockpin signalname="Diff(7)" name="D" />
            <blockpin name="Bout" />
        </block>
        <block symbolname="FullSubtractor" name="XLXI_25">
            <blockpin signalname="A(2)" name="A" />
            <blockpin signalname="B(2)" name="B" />
            <blockpin signalname="XLXN_3" name="Bin" />
            <blockpin signalname="Diff(2)" name="D" />
            <blockpin signalname="XLXN_2" name="Bout" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1">
            <wire x2="2208" y1="368" y2="368" x1="1680" />
            <wire x2="1680" y1="368" y2="608" x1="1680" />
            <wire x2="1744" y1="608" y2="608" x1="1680" />
            <wire x2="2208" y1="272" y2="272" x1="2128" />
            <wire x2="2208" y1="272" y2="368" x1="2208" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="2192" y1="704" y2="704" x1="1664" />
            <wire x2="1664" y1="704" y2="960" x1="1664" />
            <wire x2="1744" y1="960" y2="960" x1="1664" />
            <wire x2="2192" y1="608" y2="608" x1="2128" />
            <wire x2="2192" y1="608" y2="704" x1="2192" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="2208" y1="1696" y2="1696" x1="1664" />
            <wire x2="1664" y1="1696" y2="1968" x1="1664" />
            <wire x2="1744" y1="1968" y2="1968" x1="1664" />
            <wire x2="2208" y1="1616" y2="1616" x1="2128" />
            <wire x2="2208" y1="1616" y2="1696" x1="2208" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2192" y1="2032" y2="2032" x1="1680" />
            <wire x2="1680" y1="2032" y2="2272" x1="1680" />
            <wire x2="1744" y1="2272" y2="2272" x1="1680" />
            <wire x2="2192" y1="1968" y2="1968" x1="2128" />
            <wire x2="2192" y1="1968" y2="2032" x1="2192" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2208" y1="2352" y2="2352" x1="1680" />
            <wire x2="1680" y1="2352" y2="2608" x1="1680" />
            <wire x2="1744" y1="2608" y2="2608" x1="1680" />
            <wire x2="2208" y1="2272" y2="2272" x1="2128" />
            <wire x2="2208" y1="2272" y2="2352" x1="2208" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="2208" y1="1376" y2="1376" x1="1680" />
            <wire x2="1680" y1="1376" y2="1616" x1="1680" />
            <wire x2="1744" y1="1616" y2="1616" x1="1680" />
            <wire x2="2208" y1="1296" y2="1296" x1="2128" />
            <wire x2="2208" y1="1296" y2="1376" x1="2208" />
        </branch>
        <branch name="Diff(7:0)">
            <wire x2="3152" y1="656" y2="656" x1="2656" />
        </branch>
        <iomarker fontsize="28" x="3152" y="656" name="Diff(7:0)" orien="R0" />
        <branch name="A(7:0)">
            <wire x2="864" y1="128" y2="128" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="128" name="A(7:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="224" name="B(7:0)" orien="R180" />
        <branch name="B(7:0)">
            <wire x2="864" y1="224" y2="224" x1="368" />
        </branch>
        <branch name="A(0)">
            <wire x2="1744" y1="144" y2="144" x1="1600" />
        </branch>
        <branch name="B(0)">
            <wire x2="1744" y1="208" y2="208" x1="1600" />
        </branch>
        <branch name="A(1)">
            <wire x2="1744" y1="480" y2="480" x1="1600" />
        </branch>
        <branch name="B(1)">
            <wire x2="1744" y1="544" y2="544" x1="1600" />
        </branch>
        <branch name="A(2)">
            <wire x2="1744" y1="832" y2="832" x1="1600" />
        </branch>
        <branch name="B(2)">
            <wire x2="1744" y1="896" y2="896" x1="1600" />
        </branch>
        <branch name="A(3)">
            <wire x2="1744" y1="1168" y2="1168" x1="1616" />
        </branch>
        <branch name="B(3)">
            <wire x2="1744" y1="1232" y2="1232" x1="1616" />
        </branch>
        <branch name="A(4)">
            <wire x2="1744" y1="1488" y2="1488" x1="1600" />
        </branch>
        <branch name="B(4)">
            <wire x2="1744" y1="1552" y2="1552" x1="1600" />
        </branch>
        <branch name="A(5)">
            <wire x2="1744" y1="1840" y2="1840" x1="1600" />
        </branch>
        <branch name="B(5)">
            <wire x2="1744" y1="1904" y2="1904" x1="1600" />
        </branch>
        <branch name="A(6)">
            <wire x2="1744" y1="2144" y2="2144" x1="1584" />
        </branch>
        <branch name="B(6)">
            <wire x2="1744" y1="2208" y2="2208" x1="1600" />
        </branch>
        <branch name="A(7)">
            <wire x2="1744" y1="2480" y2="2480" x1="1584" />
        </branch>
        <branch name="B(7)">
            <wire x2="1744" y1="2544" y2="2544" x1="1584" />
        </branch>
        <branch name="Diff(7)">
            <wire x2="2208" y1="2480" y2="2480" x1="2128" />
        </branch>
        <branch name="Diff(6)">
            <wire x2="2240" y1="2144" y2="2144" x1="2128" />
        </branch>
        <branch name="Diff(5)">
            <wire x2="2224" y1="1840" y2="1840" x1="2128" />
        </branch>
        <branch name="Diff(4)">
            <wire x2="2224" y1="1488" y2="1488" x1="2128" />
        </branch>
        <branch name="Diff(3)">
            <wire x2="2240" y1="1168" y2="1168" x1="2128" />
        </branch>
        <branch name="Diff(1)">
            <wire x2="2240" y1="480" y2="480" x1="2128" />
        </branch>
        <branch name="Diff(0)">
            <wire x2="2240" y1="144" y2="144" x1="2128" />
        </branch>
        <instance x="1456" y="416" name="XLXI_16" orien="R0" />
        <branch name="Ground">
            <wire x2="1744" y1="272" y2="272" x1="1520" />
            <wire x2="1520" y1="272" y2="288" x1="1520" />
        </branch>
        <instance x="1744" y="1328" name="XLXI_20" orien="R0">
        </instance>
        <instance x="1744" y="1648" name="XLXI_21" orien="R0">
        </instance>
        <instance x="1744" y="2000" name="XLXI_22" orien="R0">
        </instance>
        <instance x="1744" y="2304" name="XLXI_23" orien="R0">
        </instance>
        <instance x="1744" y="2640" name="XLXI_24" orien="R0">
        </instance>
        <instance x="1744" y="304" name="XLXI_17" orien="R0">
        </instance>
        <instance x="1744" y="640" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="2208" y1="1056" y2="1056" x1="1680" />
            <wire x2="1680" y1="1056" y2="1296" x1="1680" />
            <wire x2="1744" y1="1296" y2="1296" x1="1680" />
            <wire x2="2144" y1="960" y2="960" x1="2128" />
            <wire x2="2208" y1="960" y2="960" x1="2144" />
            <wire x2="2208" y1="960" y2="1056" x1="2208" />
        </branch>
        <branch name="Diff(2)">
            <wire x2="2144" y1="832" y2="832" x1="2128" />
            <wire x2="2256" y1="832" y2="832" x1="2144" />
        </branch>
        <instance x="1744" y="992" name="XLXI_25" orien="R0">
        </instance>
    </sheet>
</drawing>