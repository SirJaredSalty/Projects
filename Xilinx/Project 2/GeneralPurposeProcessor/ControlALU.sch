<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="a(3:0)" />
        <signal name="B(3:0)" />
        <signal name="OPCODE(3:0)" />
        <signal name="O(3:0)" />
        <signal name="a_plus_one(3:0)" />
        <signal name="operation_9(3:0)" />
        <signal name="operation_10(3:0)" />
        <signal name="operation_11(3:0)" />
        <signal name="operation_12(3:0)" />
        <signal name="operation_13(3:0)" />
        <signal name="operation_14(3:0)" />
        <signal name="XLXN_35(3:0)" />
        <signal name="C" />
        <signal name="Z" />
        <signal name="XLXN_5(3:0)" />
        <signal name="N" />
        <port polarity="Input" name="a(3:0)" />
        <port polarity="Input" name="B(3:0)" />
        <port polarity="Input" name="OPCODE(3:0)" />
        <port polarity="Output" name="O(3:0)" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="Z" />
        <port polarity="Input" name="N" />
        <blockdef name="Mux16_4">
            <timestamp>2013-2-12T1:46:15</timestamp>
            <rect width="64" x="48" y="-1084" height="24" />
            <line x2="48" y1="-1072" y2="-1072" x1="112" />
            <rect width="64" x="48" y="-1020" height="24" />
            <line x2="48" y1="-1008" y2="-1008" x1="112" />
            <rect width="64" x="48" y="-956" height="24" />
            <line x2="48" y1="-944" y2="-944" x1="112" />
            <rect width="64" x="48" y="-892" height="24" />
            <line x2="48" y1="-880" y2="-880" x1="112" />
            <rect width="64" x="48" y="-828" height="24" />
            <line x2="48" y1="-816" y2="-816" x1="112" />
            <rect width="64" x="48" y="-764" height="24" />
            <line x2="48" y1="-752" y2="-752" x1="112" />
            <rect width="64" x="48" y="-700" height="24" />
            <line x2="48" y1="-688" y2="-688" x1="112" />
            <rect width="64" x="48" y="-636" height="24" />
            <line x2="48" y1="-624" y2="-624" x1="112" />
            <rect width="64" x="48" y="-572" height="24" />
            <line x2="48" y1="-560" y2="-560" x1="112" />
            <rect width="64" x="48" y="-508" height="24" />
            <line x2="48" y1="-496" y2="-496" x1="112" />
            <rect width="64" x="48" y="-444" height="24" />
            <line x2="48" y1="-432" y2="-432" x1="112" />
            <rect width="64" x="48" y="-380" height="24" />
            <line x2="48" y1="-368" y2="-368" x1="112" />
            <rect width="64" x="48" y="-316" height="24" />
            <line x2="48" y1="-304" y2="-304" x1="112" />
            <rect width="64" x="48" y="-252" height="24" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <rect width="64" x="48" y="-188" height="24" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <rect width="64" x="48" y="-124" height="24" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <rect width="64" x="48" y="-60" height="24" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="112" y1="-128" y2="-68" x1="304" />
            <line x2="304" y1="-1120" y2="-1040" x1="112" />
            <line x2="112" y1="-68" y2="-1120" x1="112" />
            <rect width="64" x="304" y="-620" height="24" />
            <line x2="368" y1="-608" y2="-608" x1="304" />
            <line x2="304" y1="-1040" y2="-128" x1="304" />
            <line x2="232" y1="-48" y2="-48" style="linewidth:W" x1="112" />
            <line x2="232" y1="-48" y2="-104" style="linewidth:W" x1="232" />
        </blockdef>
        <blockdef name="Adder_4">
            <timestamp>2013-2-12T1:46:15</timestamp>
            <rect style="linewidth:W" width="92" x="28" y="16" height="64" />
            <rect width="44" x="-16" y="56" height="16" />
            <line x2="-16" y1="64" y2="64" x1="28" />
            <rect width="44" x="-16" y="24" height="16" />
            <line x2="-16" y1="32" y2="32" x1="28" />
            <rect width="40" x="120" y="24" height="16" />
            <line x2="160" y1="32" y2="32" x1="120" />
            <line x2="160" y1="64" y2="64" x1="120" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="Mux2_4">
            <timestamp>2013-3-3T19:3:1</timestamp>
            <line x2="32" y1="-32" y2="-160" x1="32" />
            <line x2="80" y1="-32" y2="-48" x1="32" />
            <line x2="80" y1="-160" y2="-144" x1="32" />
            <line x2="56" y1="-40" y2="0" x1="56" />
            <line x2="0" y1="0" y2="0" x1="32" />
            <line x2="0" y1="-64" y2="-64" x1="32" />
            <line x2="0" y1="-128" y2="-128" x1="32" />
            <rect width="32" x="0" y="-136" height="16" />
            <rect width="32" x="0" y="-72" height="16" />
            <line x2="80" y1="-144" y2="-48" x1="80" />
            <line x2="116" y1="-96" y2="-96" x1="80" />
            <rect width="32" x="80" y="-104" height="16" />
            <line x2="56" y1="0" y2="0" x1="32" />
        </blockdef>
        <block symbolname="Mux16_4" name="XLXI_1">
            <blockpin signalname="a_plus_one(3:0)" name="i0(3:0)" />
            <blockpin signalname="a_plus_one(3:0)" name="i1(3:0)" />
            <blockpin signalname="a_plus_one(3:0)" name="i2(3:0)" />
            <blockpin signalname="a_plus_one(3:0)" name="i3(3:0)" />
            <blockpin signalname="a_plus_one(3:0)" name="i4(3:0)" />
            <blockpin signalname="a_plus_one(3:0)" name="i5(3:0)" />
            <blockpin signalname="a_plus_one(3:0)" name="i6(3:0)" />
            <blockpin signalname="a_plus_one(3:0)" name="i7(3:0)" />
            <blockpin signalname="B(3:0)" name="i8(3:0)" />
            <blockpin signalname="operation_9(3:0)" name="i9(3:0)" />
            <blockpin signalname="operation_10(3:0)" name="i10(3:0)" />
            <blockpin signalname="operation_11(3:0)" name="i11(3:0)" />
            <blockpin signalname="operation_12(3:0)" name="i12(3:0)" />
            <blockpin signalname="operation_13(3:0)" name="i13(3:0)" />
            <blockpin signalname="operation_14(3:0)" name="i14(3:0)" />
            <blockpin signalname="XLXN_35(3:0)" name="i15(3:0)" />
            <blockpin signalname="OPCODE(3:0)" name="sel(3:0)" />
            <blockpin signalname="O(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="constant" name="XLXI_18">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_35(3:0)" name="O" />
        </block>
        <block symbolname="Mux2_4" name="XLXI_25">
            <blockpin signalname="operation_14(3:0)" name="O(3:0)" />
            <blockpin signalname="a_plus_one(3:0)" name="D0(3:0)" />
            <blockpin signalname="B(3:0)" name="D1(3:0)" />
            <blockpin signalname="N" name="S" />
        </block>
        <block symbolname="Mux2_4" name="XLXI_26">
            <blockpin signalname="operation_13(3:0)" name="O(3:0)" />
            <blockpin signalname="B(3:0)" name="D0(3:0)" />
            <blockpin signalname="a_plus_one(3:0)" name="D1(3:0)" />
            <blockpin signalname="N" name="S" />
        </block>
        <block symbolname="Mux2_4" name="XLXI_27">
            <blockpin signalname="operation_12(3:0)" name="O(3:0)" />
            <blockpin signalname="a_plus_one(3:0)" name="D0(3:0)" />
            <blockpin signalname="B(3:0)" name="D1(3:0)" />
            <blockpin signalname="Z" name="S" />
        </block>
        <block symbolname="Mux2_4" name="XLXI_28">
            <blockpin signalname="operation_11(3:0)" name="O(3:0)" />
            <blockpin signalname="B(3:0)" name="D0(3:0)" />
            <blockpin signalname="a_plus_one(3:0)" name="D1(3:0)" />
            <blockpin signalname="Z" name="S" />
        </block>
        <block symbolname="Mux2_4" name="XLXI_30">
            <blockpin signalname="operation_10(3:0)" name="O(3:0)" />
            <blockpin signalname="a_plus_one(3:0)" name="D0(3:0)" />
            <blockpin signalname="B(3:0)" name="D1(3:0)" />
            <blockpin signalname="C" name="S" />
        </block>
        <block symbolname="Mux2_4" name="XLXI_31">
            <blockpin signalname="operation_9(3:0)" name="O(3:0)" />
            <blockpin signalname="B(3:0)" name="D0(3:0)" />
            <blockpin signalname="a_plus_one(3:0)" name="D1(3:0)" />
            <blockpin signalname="C" name="S" />
        </block>
        <block symbolname="Adder_4" name="XLXI_2">
            <blockpin signalname="a(3:0)" name="a(3:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="b(3:0)" />
            <blockpin signalname="a_plus_one(3:0)" name="sum(3:0)" />
            <blockpin name="carry" />
        </block>
        <block symbolname="constant" name="XLXI_3">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_5(3:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2368" y="1696" name="XLXI_1" orien="R0">
        </instance>
        <branch name="O(3:0)">
            <wire x2="2848" y1="1088" y2="1088" x1="2736" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="2416" y1="1136" y2="1136" x1="2288" />
        </branch>
        <branch name="operation_9(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="784" type="branch" />
            <wire x2="1792" y1="784" y2="784" x1="1616" />
            <wire x2="2064" y1="784" y2="784" x1="1792" />
            <wire x2="2064" y1="784" y2="1200" x1="2064" />
            <wire x2="2416" y1="1200" y2="1200" x1="2064" />
        </branch>
        <branch name="operation_10(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1008" type="branch" />
            <wire x2="1808" y1="1008" y2="1008" x1="1616" />
            <wire x2="2000" y1="1008" y2="1008" x1="1808" />
            <wire x2="2000" y1="1008" y2="1264" x1="2000" />
            <wire x2="2416" y1="1264" y2="1264" x1="2000" />
        </branch>
        <branch name="operation_11(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="1248" type="branch" />
            <wire x2="1808" y1="1248" y2="1248" x1="1616" />
            <wire x2="1936" y1="1248" y2="1248" x1="1808" />
            <wire x2="1936" y1="1248" y2="1328" x1="1936" />
            <wire x2="2416" y1="1328" y2="1328" x1="1936" />
        </branch>
        <branch name="operation_12(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1488" type="branch" />
            <wire x2="1792" y1="1488" y2="1488" x1="1616" />
            <wire x2="1936" y1="1488" y2="1488" x1="1792" />
            <wire x2="1936" y1="1392" y2="1488" x1="1936" />
            <wire x2="2416" y1="1392" y2="1392" x1="1936" />
        </branch>
        <branch name="operation_13(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1744" type="branch" />
            <wire x2="1792" y1="1744" y2="1744" x1="1616" />
            <wire x2="2000" y1="1744" y2="1744" x1="1792" />
            <wire x2="2000" y1="1456" y2="1744" x1="2000" />
            <wire x2="2416" y1="1456" y2="1456" x1="2000" />
        </branch>
        <branch name="operation_14(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1984" type="branch" />
            <wire x2="1792" y1="1984" y2="1984" x1="1616" />
            <wire x2="2048" y1="1984" y2="1984" x1="1792" />
            <wire x2="2048" y1="1520" y2="1984" x1="2048" />
            <wire x2="2416" y1="1520" y2="1520" x1="2048" />
        </branch>
        <branch name="XLXN_35(3:0)">
            <wire x2="2416" y1="1584" y2="1584" x1="2384" />
        </branch>
        <instance x="2240" y="1552" name="XLXI_18" orien="R0">
        </instance>
        <branch name="B(3:0)">
            <wire x2="1504" y1="752" y2="752" x1="1472" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="1504" y1="1040" y2="1040" x1="1472" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="1504" y1="1216" y2="1216" x1="1472" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="1504" y1="1520" y2="1520" x1="1472" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="1504" y1="1712" y2="1712" x1="1472" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="1504" y1="2016" y2="2016" x1="1472" />
        </branch>
        <branch name="C">
            <wire x2="1504" y1="880" y2="880" x1="1472" />
        </branch>
        <branch name="C">
            <wire x2="1504" y1="1104" y2="1104" x1="1472" />
        </branch>
        <branch name="Z">
            <wire x2="1504" y1="1344" y2="1344" x1="1472" />
        </branch>
        <branch name="Z">
            <wire x2="1504" y1="1584" y2="1584" x1="1472" />
        </branch>
        <branch name="N">
            <wire x2="1504" y1="1840" y2="1840" x1="1472" />
        </branch>
        <branch name="N">
            <wire x2="1504" y1="2080" y2="2080" x1="1472" />
        </branch>
        <branch name="a_plus_one(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="816" type="branch" />
            <wire x2="1504" y1="816" y2="816" x1="1328" />
        </branch>
        <branch name="a_plus_one(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="976" type="branch" />
            <wire x2="1504" y1="976" y2="976" x1="1328" />
        </branch>
        <branch name="a_plus_one(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1280" type="branch" />
            <wire x2="1504" y1="1280" y2="1280" x1="1312" />
        </branch>
        <branch name="a_plus_one(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1776" type="branch" />
            <wire x2="1504" y1="1776" y2="1776" x1="1312" />
        </branch>
        <branch name="a_plus_one(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1952" type="branch" />
            <wire x2="1504" y1="1952" y2="1952" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="1472" y="752" name="B(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1472" y="1040" name="B(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1472" y="1216" name="B(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1472" y="1520" name="B(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1472" y="1712" name="B(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1472" y="2016" name="B(3:0)" orien="R180" />
        <iomarker fontsize="28" x="1472" y="880" name="C" orien="R180" />
        <iomarker fontsize="28" x="1472" y="1104" name="C" orien="R180" />
        <iomarker fontsize="28" x="1472" y="1344" name="Z" orien="R180" />
        <iomarker fontsize="28" x="1472" y="1584" name="Z" orien="R180" />
        <iomarker fontsize="28" x="1472" y="1840" name="N" orien="R180" />
        <iomarker fontsize="28" x="1472" y="2080" name="N" orien="R180" />
        <instance x="1504" y="2080" name="XLXI_25" orien="R0">
        </instance>
        <instance x="1504" y="1840" name="XLXI_26" orien="R0">
        </instance>
        <instance x="1504" y="1584" name="XLXI_27" orien="R0">
        </instance>
        <instance x="1504" y="1344" name="XLXI_28" orien="R0">
        </instance>
        <instance x="1504" y="1104" name="XLXI_30" orien="R0">
        </instance>
        <instance x="1504" y="880" name="XLXI_31" orien="R0">
        </instance>
        <branch name="XLXN_5(3:0)">
            <wire x2="928" y1="368" y2="368" x1="832" />
            <wire x2="944" y1="288" y2="288" x1="928" />
            <wire x2="928" y1="288" y2="368" x1="928" />
        </branch>
        <branch name="a(3:0)">
            <wire x2="944" y1="256" y2="256" x1="832" />
        </branch>
        <instance x="960" y="224" name="XLXI_2" orien="R0">
        </instance>
        <instance x="688" y="336" name="XLXI_3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="832" y="256" name="a(3:0)" orien="R180" />
        <branch name="OPCODE(3:0)">
            <wire x2="2352" y1="2304" y2="2304" x1="2288" />
            <wire x2="2416" y1="1648" y2="1648" x1="2352" />
            <wire x2="2352" y1="1648" y2="2304" x1="2352" />
        </branch>
        <iomarker fontsize="28" x="2288" y="2304" name="OPCODE(3:0)" orien="R180" />
        <branch name="a_plus_one(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="256" type="branch" />
            <wire x2="1232" y1="256" y2="256" x1="1120" />
        </branch>
        <branch name="a_plus_one(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="624" type="branch" />
            <wire x2="2368" y1="624" y2="624" x1="2160" />
            <wire x2="2416" y1="624" y2="624" x1="2368" />
            <wire x2="2368" y1="624" y2="688" x1="2368" />
            <wire x2="2416" y1="688" y2="688" x1="2368" />
            <wire x2="2368" y1="688" y2="752" x1="2368" />
            <wire x2="2416" y1="752" y2="752" x1="2368" />
            <wire x2="2368" y1="752" y2="816" x1="2368" />
            <wire x2="2416" y1="816" y2="816" x1="2368" />
            <wire x2="2368" y1="816" y2="880" x1="2368" />
            <wire x2="2416" y1="880" y2="880" x1="2368" />
            <wire x2="2368" y1="880" y2="944" x1="2368" />
            <wire x2="2416" y1="944" y2="944" x1="2368" />
            <wire x2="2368" y1="944" y2="1008" x1="2368" />
            <wire x2="2416" y1="1008" y2="1008" x1="2368" />
            <wire x2="2368" y1="1008" y2="1072" x1="2368" />
            <wire x2="2416" y1="1072" y2="1072" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="2848" y="1088" name="O(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2288" y="1136" name="B(3:0)" orien="R180" />
        <branch name="a_plus_one(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1456" type="branch" />
            <wire x2="1504" y1="1456" y2="1456" x1="1312" />
        </branch>
    </sheet>
</drawing>