<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <attr value="Always|BaseDashIndex" name="RenameBusIO" />
    <netlist>
        <signal name="Cout" />
        <signal name="XLXN_31" />
        <signal name="XLXN_27" />
        <signal name="XLXN_23" />
        <signal name="XLXN_9" />
        <signal name="XLXN_8" />
        <signal name="Sum7" />
        <signal name="B6" />
        <signal name="A6" />
        <signal name="A7" />
        <signal name="B7" />
        <signal name="Sum5" />
        <signal name="B5" />
        <signal name="A5" />
        <signal name="Sum6" />
        <signal name="Sum4" />
        <signal name="B4" />
        <signal name="A4" />
        <signal name="Sum3" />
        <signal name="B3" />
        <signal name="A3" />
        <signal name="Sum2" />
        <signal name="B2" />
        <signal name="A2" />
        <signal name="XLXN_7" />
        <signal name="Sum1" />
        <signal name="B1" />
        <signal name="A1" />
        <signal name="Sum0" />
        <signal name="A0" />
        <signal name="B0" />
        <signal name="XLXN_10" />
        <signal name="XLXN_147" />
        <port polarity="Output" name="Cout" />
        <port polarity="Output" name="Sum7" />
        <port polarity="Input" name="B6" />
        <port polarity="Input" name="A6" />
        <port polarity="Input" name="A7" />
        <port polarity="Input" name="B7" />
        <port polarity="Output" name="Sum5" />
        <port polarity="Input" name="B5" />
        <port polarity="Input" name="A5" />
        <port polarity="Output" name="Sum6" />
        <port polarity="Output" name="Sum4" />
        <port polarity="Input" name="B4" />
        <port polarity="Input" name="A4" />
        <port polarity="Output" name="Sum3" />
        <port polarity="Input" name="B3" />
        <port polarity="Input" name="A3" />
        <port polarity="Output" name="Sum2" />
        <port polarity="Input" name="B2" />
        <port polarity="Input" name="A2" />
        <port polarity="Output" name="Sum1" />
        <port polarity="Input" name="B1" />
        <port polarity="Input" name="A1" />
        <port polarity="Output" name="Sum0" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="B0" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="FullAdder">
            <timestamp>2020-9-22T18:41:34</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="FullAdder" name="XLXI_25">
            <blockpin signalname="A7" name="A" />
            <blockpin signalname="B7" name="B" />
            <blockpin signalname="XLXN_31" name="Cin" />
            <blockpin signalname="Sum7" name="Sum" />
            <blockpin signalname="Cout" name="Cout" />
        </block>
        <block symbolname="FullAdder" name="XLXI_26">
            <blockpin signalname="A6" name="A" />
            <blockpin signalname="B6" name="B" />
            <blockpin signalname="XLXN_27" name="Cin" />
            <blockpin signalname="Sum6" name="Sum" />
            <blockpin signalname="XLXN_31" name="Cout" />
        </block>
        <block symbolname="FullAdder" name="XLXI_27">
            <blockpin signalname="A5" name="A" />
            <blockpin signalname="B5" name="B" />
            <blockpin signalname="XLXN_23" name="Cin" />
            <blockpin signalname="Sum5" name="Sum" />
            <blockpin signalname="XLXN_27" name="Cout" />
        </block>
        <block symbolname="FullAdder" name="XLXI_29">
            <blockpin signalname="A4" name="A" />
            <blockpin signalname="B4" name="B" />
            <blockpin signalname="XLXN_147" name="Cin" />
            <blockpin signalname="Sum4" name="Sum" />
            <blockpin signalname="XLXN_23" name="Cout" />
        </block>
        <block symbolname="FullAdder" name="XLXI_30">
            <blockpin signalname="A3" name="A" />
            <blockpin signalname="B3" name="B" />
            <blockpin signalname="XLXN_9" name="Cin" />
            <blockpin signalname="Sum3" name="Sum" />
            <blockpin signalname="XLXN_147" name="Cout" />
        </block>
        <block symbolname="FullAdder" name="XLXI_32">
            <blockpin signalname="A2" name="A" />
            <blockpin signalname="B2" name="B" />
            <blockpin signalname="XLXN_8" name="Cin" />
            <blockpin signalname="Sum2" name="Sum" />
            <blockpin signalname="XLXN_9" name="Cout" />
        </block>
        <block symbolname="FullAdder" name="XLXI_33">
            <blockpin signalname="A1" name="A" />
            <blockpin signalname="B1" name="B" />
            <blockpin signalname="XLXN_7" name="Cin" />
            <blockpin signalname="Sum1" name="Sum" />
            <blockpin signalname="XLXN_8" name="Cout" />
        </block>
        <block symbolname="gnd" name="XLXI_11">
            <blockpin signalname="XLXN_10" name="G" />
        </block>
        <block symbolname="FullAdder" name="XLXI_34">
            <blockpin signalname="A0" name="A" />
            <blockpin signalname="B0" name="B" />
            <blockpin signalname="XLXN_10" name="Cin" />
            <blockpin signalname="Sum0" name="Sum" />
            <blockpin signalname="XLXN_7" name="Cout" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="Cout">
            <wire x2="2144" y1="3280" y2="3280" x1="1648" />
        </branch>
        <branch name="Sum7">
            <wire x2="2176" y1="3152" y2="3152" x1="1648" />
        </branch>
        <instance x="1264" y="3312" name="XLXI_25" orien="R0">
        </instance>
        <branch name="XLXN_31">
            <wire x2="1200" y1="2960" y2="3280" x1="1200" />
            <wire x2="1264" y1="3280" y2="3280" x1="1200" />
            <wire x2="1744" y1="2960" y2="2960" x1="1200" />
            <wire x2="1744" y1="2816" y2="2816" x1="1664" />
            <wire x2="1744" y1="2816" y2="2960" x1="1744" />
        </branch>
        <branch name="B6">
            <wire x2="1280" y1="2752" y2="2752" x1="768" />
        </branch>
        <branch name="A6">
            <wire x2="1280" y1="2688" y2="2688" x1="768" />
        </branch>
        <instance x="1280" y="2848" name="XLXI_26" orien="R0">
        </instance>
        <branch name="XLXN_27">
            <wire x2="1200" y1="2528" y2="2816" x1="1200" />
            <wire x2="1280" y1="2816" y2="2816" x1="1200" />
            <wire x2="1728" y1="2528" y2="2528" x1="1200" />
            <wire x2="1728" y1="2368" y2="2368" x1="1648" />
            <wire x2="1728" y1="2368" y2="2528" x1="1728" />
        </branch>
        <branch name="A7">
            <wire x2="1264" y1="3152" y2="3152" x1="768" />
        </branch>
        <branch name="B7">
            <wire x2="1264" y1="3216" y2="3216" x1="768" />
        </branch>
        <instance x="1264" y="2400" name="XLXI_27" orien="R0">
        </instance>
        <branch name="Sum5">
            <wire x2="2112" y1="2240" y2="2240" x1="1648" />
        </branch>
        <branch name="B5">
            <wire x2="1264" y1="2304" y2="2304" x1="752" />
        </branch>
        <branch name="A5">
            <wire x2="1264" y1="2240" y2="2240" x1="752" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1184" y1="2064" y2="2368" x1="1184" />
            <wire x2="1264" y1="2368" y2="2368" x1="1184" />
            <wire x2="1712" y1="2064" y2="2064" x1="1184" />
            <wire x2="1712" y1="1952" y2="1952" x1="1632" />
            <wire x2="1712" y1="1952" y2="2064" x1="1712" />
        </branch>
        <branch name="Sum6">
            <wire x2="2160" y1="2688" y2="2688" x1="1664" />
        </branch>
        <branch name="Sum4">
            <wire x2="2112" y1="1824" y2="1824" x1="1632" />
        </branch>
        <branch name="B4">
            <wire x2="1248" y1="1888" y2="1888" x1="752" />
        </branch>
        <branch name="A4">
            <wire x2="1248" y1="1824" y2="1824" x1="752" />
        </branch>
        <instance x="1248" y="1984" name="XLXI_29" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2160" y="2688" name="Sum6" orien="R0" />
        <iomarker fontsize="28" x="2176" y="3152" name="Sum7" orien="R0" />
        <iomarker fontsize="28" x="2144" y="3280" name="Cout" orien="R0" />
        <iomarker fontsize="28" x="2112" y="2240" name="Sum5" orien="R0" />
        <iomarker fontsize="28" x="752" y="1888" name="B4" orien="R180" />
        <iomarker fontsize="28" x="752" y="1824" name="A4" orien="R180" />
        <branch name="Sum3">
            <wire x2="2144" y1="1424" y2="1424" x1="1632" />
        </branch>
        <branch name="B3">
            <wire x2="1248" y1="1488" y2="1488" x1="752" />
        </branch>
        <branch name="A3">
            <wire x2="1248" y1="1424" y2="1424" x1="752" />
        </branch>
        <instance x="1248" y="1584" name="XLXI_30" orien="R0">
        </instance>
        <iomarker fontsize="28" x="752" y="1488" name="B3" orien="R180" />
        <iomarker fontsize="28" x="752" y="1424" name="A3" orien="R180" />
        <branch name="XLXN_9">
            <wire x2="1712" y1="1296" y2="1296" x1="1200" />
            <wire x2="1200" y1="1296" y2="1552" x1="1200" />
            <wire x2="1248" y1="1552" y2="1552" x1="1200" />
            <wire x2="1712" y1="1216" y2="1216" x1="1632" />
            <wire x2="1712" y1="1216" y2="1296" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="2144" y="1424" name="Sum3" orien="R0" />
        <iomarker fontsize="28" x="2112" y="1824" name="Sum4" orien="R0" />
        <branch name="Sum2">
            <wire x2="2128" y1="1088" y2="1088" x1="1632" />
        </branch>
        <branch name="B2">
            <wire x2="1248" y1="1152" y2="1152" x1="752" />
        </branch>
        <branch name="A2">
            <wire x2="1248" y1="1088" y2="1088" x1="752" />
        </branch>
        <instance x="1248" y="1248" name="XLXI_32" orien="R0">
        </instance>
        <iomarker fontsize="28" x="752" y="1152" name="B2" orien="R180" />
        <iomarker fontsize="28" x="752" y="1088" name="A2" orien="R180" />
        <iomarker fontsize="28" x="2128" y="1088" name="Sum2" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1200" y1="944" y2="1216" x1="1200" />
            <wire x2="1248" y1="1216" y2="1216" x1="1200" />
            <wire x2="1728" y1="944" y2="944" x1="1200" />
            <wire x2="1728" y1="832" y2="832" x1="1648" />
            <wire x2="1728" y1="832" y2="944" x1="1728" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1200" y1="528" y2="832" x1="1200" />
            <wire x2="1264" y1="832" y2="832" x1="1200" />
            <wire x2="1728" y1="528" y2="528" x1="1200" />
            <wire x2="1728" y1="384" y2="384" x1="1648" />
            <wire x2="1728" y1="384" y2="528" x1="1728" />
        </branch>
        <instance x="1264" y="864" name="XLXI_33" orien="R0">
        </instance>
        <branch name="Sum1">
            <wire x2="2112" y1="704" y2="704" x1="1648" />
        </branch>
        <branch name="B1">
            <wire x2="1264" y1="768" y2="768" x1="752" />
        </branch>
        <branch name="A1">
            <wire x2="1264" y1="704" y2="704" x1="752" />
        </branch>
        <branch name="Sum0">
            <wire x2="2112" y1="256" y2="256" x1="1648" />
        </branch>
        <branch name="A0">
            <wire x2="1264" y1="256" y2="256" x1="752" />
        </branch>
        <branch name="B0">
            <wire x2="1264" y1="320" y2="320" x1="752" />
        </branch>
        <instance x="1264" y="416" name="XLXI_34" orien="R0">
        </instance>
        <iomarker fontsize="28" x="752" y="768" name="B1" orien="R180" />
        <iomarker fontsize="28" x="752" y="704" name="A1" orien="R180" />
        <iomarker fontsize="28" x="2112" y="704" name="Sum1" orien="R0" />
        <iomarker fontsize="28" x="752" y="256" name="A0" orien="R180" />
        <iomarker fontsize="28" x="752" y="320" name="B0" orien="R180" />
        <iomarker fontsize="28" x="2112" y="256" name="Sum0" orien="R0" />
        <iomarker fontsize="28" x="768" y="2752" name="B6" orien="R180" />
        <iomarker fontsize="28" x="768" y="2688" name="A6" orien="R180" />
        <iomarker fontsize="28" x="752" y="2304" name="B5" orien="R180" />
        <iomarker fontsize="28" x="752" y="2240" name="A5" orien="R180" />
        <iomarker fontsize="28" x="768" y="3152" name="A7" orien="R180" />
        <iomarker fontsize="28" x="768" y="3216" name="B7" orien="R180" />
        <branch name="XLXN_10">
            <wire x2="912" y1="384" y2="416" x1="912" />
            <wire x2="1264" y1="384" y2="384" x1="912" />
        </branch>
        <instance x="848" y="544" name="XLXI_11" orien="R0" />
        <branch name="XLXN_147">
            <wire x2="1696" y1="1664" y2="1664" x1="1184" />
            <wire x2="1184" y1="1664" y2="1952" x1="1184" />
            <wire x2="1248" y1="1952" y2="1952" x1="1184" />
            <wire x2="1696" y1="1552" y2="1552" x1="1632" />
            <wire x2="1696" y1="1552" y2="1664" x1="1696" />
        </branch>
    </sheet>
</drawing>