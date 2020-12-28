<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="OPCODE(2:0)" />
        <signal name="A(7:0)" />
        <signal name="B(7:0)" />
        <signal name="O(7:0)" />
        <signal name="XLXN_46(7:0)" />
        <signal name="XLXN_48(7:0)" />
        <signal name="XLXN_61(7:0)" />
        <signal name="XLXN_62(7:0)" />
        <signal name="XLXN_63(7:0)" />
        <signal name="XLXN_65(7:0)" />
        <signal name="XLXN_70(7:0)" />
        <port polarity="Input" name="OPCODE(2:0)" />
        <port polarity="Input" name="A(7:0)" />
        <port polarity="Input" name="B(7:0)" />
        <port polarity="Output" name="O(7:0)" />
        <blockdef name="EightBitSubtractor">
            <timestamp>2020-9-26T18:17:46</timestamp>
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="EightBitMux">
            <timestamp>2020-9-26T18:22:50</timestamp>
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="368" y="-556" height="24" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <rect width="304" x="64" y="-576" height="576" />
            <rect width="64" x="0" y="-108" height="24" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="EightBitXor">
            <timestamp>2020-9-26T19:14:28</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="EightBitOr">
            <timestamp>2020-9-26T19:27:22</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="EightBitAnd">
            <timestamp>2020-9-26T19:51:2</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="Shifter">
            <timestamp>2020-9-29T13:48:32</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="256" x="64" y="0" height="64" />
        </blockdef>
        <blockdef name="EightBitAdder">
            <timestamp>2020-10-6T0:47:20</timestamp>
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="EightBitMultiplier">
            <timestamp>2020-10-6T19:37:49</timestamp>
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="128" />
        </blockdef>
        <block symbolname="EightBitSubtractor" name="XLXI_9">
            <blockpin signalname="A(7:0)" name="A(7:0)" />
            <blockpin signalname="B(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_46(7:0)" name="Diff(7:0)" />
        </block>
        <block symbolname="EightBitMux" name="XLXI_10">
            <blockpin signalname="B(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_48(7:0)" name="B(7:0)" />
            <blockpin signalname="O(7:0)" name="MuxOut(7:0)" />
            <blockpin signalname="XLXN_61(7:0)" name="C(7:0)" />
            <blockpin signalname="XLXN_62(7:0)" name="D(7:0)" />
            <blockpin signalname="XLXN_63(7:0)" name="E(7:0)" />
            <blockpin signalname="XLXN_46(7:0)" name="F(7:0)" />
            <blockpin signalname="XLXN_65(7:0)" name="G(7:0)" />
            <blockpin signalname="XLXN_70(7:0)" name="H(7:0)" />
            <blockpin signalname="OPCODE(2:0)" name="OPCODE(2:0)" />
        </block>
        <block symbolname="EightBitXor" name="XLXI_11">
            <blockpin signalname="A(7:0)" name="A(7:0)" />
            <blockpin signalname="B(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_48(7:0)" name="XorOut(7:0)" />
        </block>
        <block symbolname="EightBitOr" name="XLXI_12">
            <blockpin signalname="A(7:0)" name="A(7:0)" />
            <blockpin signalname="B(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_62(7:0)" name="OrOut(7:0)" />
        </block>
        <block symbolname="EightBitAnd" name="XLXI_13">
            <blockpin signalname="A(7:0)" name="A(7:0)" />
            <blockpin signalname="B(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_61(7:0)" name="AndOut(7:0)" />
        </block>
        <block symbolname="Shifter" name="XLXI_16">
            <blockpin signalname="B(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_65(7:0)" name="Shift(7:0)" />
        </block>
        <block symbolname="EightBitAdder" name="XLXI_25">
            <blockpin signalname="A(7:0)" name="A(7:0)" />
            <blockpin signalname="B(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_63(7:0)" name="Sum(7:0)" />
            <blockpin name="Cout" />
        </block>
        <block symbolname="EightBitMultiplier" name="XLXI_26">
            <blockpin signalname="A(7:0)" name="A(7:0)" />
            <blockpin signalname="B(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_70(7:0)" name="Product(7:0)" />
            <blockpin name="Cout" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="1760">
        <branch name="A(7:0)">
            <wire x2="576" y1="176" y2="176" x1="192" />
            <wire x2="576" y1="176" y2="432" x1="576" />
            <wire x2="784" y1="432" y2="432" x1="576" />
            <wire x2="576" y1="432" y2="704" x1="576" />
            <wire x2="768" y1="704" y2="704" x1="576" />
            <wire x2="576" y1="704" y2="1008" x1="576" />
            <wire x2="576" y1="1008" y2="1216" x1="576" />
            <wire x2="784" y1="1216" y2="1216" x1="576" />
            <wire x2="576" y1="1216" y2="1584" x1="576" />
            <wire x2="784" y1="1584" y2="1584" x1="576" />
            <wire x2="784" y1="1008" y2="1008" x1="576" />
            <wire x2="784" y1="176" y2="176" x1="576" />
        </branch>
        <branch name="B(7:0)">
            <wire x2="336" y1="240" y2="240" x1="192" />
            <wire x2="336" y1="240" y2="496" x1="336" />
            <wire x2="784" y1="496" y2="496" x1="336" />
            <wire x2="336" y1="496" y2="768" x1="336" />
            <wire x2="336" y1="768" y2="880" x1="336" />
            <wire x2="1632" y1="880" y2="880" x1="336" />
            <wire x2="336" y1="880" y2="1072" x1="336" />
            <wire x2="336" y1="1072" y2="1280" x1="336" />
            <wire x2="784" y1="1280" y2="1280" x1="336" />
            <wire x2="336" y1="1280" y2="1424" x1="336" />
            <wire x2="784" y1="1424" y2="1424" x1="336" />
            <wire x2="336" y1="1424" y2="1648" x1="336" />
            <wire x2="784" y1="1648" y2="1648" x1="336" />
            <wire x2="784" y1="1072" y2="1072" x1="336" />
            <wire x2="768" y1="768" y2="768" x1="336" />
            <wire x2="784" y1="240" y2="240" x1="336" />
        </branch>
        <iomarker fontsize="28" x="192" y="176" name="A(7:0)" orien="R180" />
        <branch name="O(7:0)">
            <wire x2="2336" y1="880" y2="880" x1="2064" />
        </branch>
        <branch name="XLXN_46(7:0)">
            <wire x2="1296" y1="1216" y2="1216" x1="1168" />
            <wire x2="1632" y1="1200" y2="1200" x1="1296" />
            <wire x2="1296" y1="1200" y2="1216" x1="1296" />
        </branch>
        <branch name="XLXN_48(7:0)">
            <wire x2="1568" y1="176" y2="176" x1="1168" />
            <wire x2="1568" y1="176" y2="944" x1="1568" />
            <wire x2="1632" y1="944" y2="944" x1="1568" />
        </branch>
        <instance x="1632" y="1424" name="XLXI_10" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2336" y="880" name="O(7:0)" orien="R0" />
        <text style="fontsize:80;fontname:Arial" x="1924" y="96">Arithmetic Logic Unit</text>
        <instance x="768" y="800" name="XLXI_12" orien="R0">
        </instance>
        <instance x="784" y="1312" name="XLXI_9" orien="R0">
        </instance>
        <instance x="784" y="528" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_61(7:0)">
            <wire x2="1440" y1="432" y2="432" x1="1168" />
            <wire x2="1440" y1="432" y2="1008" x1="1440" />
            <wire x2="1632" y1="1008" y2="1008" x1="1440" />
        </branch>
        <branch name="XLXN_62(7:0)">
            <wire x2="1328" y1="704" y2="704" x1="1152" />
            <wire x2="1328" y1="704" y2="1072" x1="1328" />
            <wire x2="1632" y1="1072" y2="1072" x1="1328" />
        </branch>
        <branch name="XLXN_63(7:0)">
            <wire x2="1280" y1="1008" y2="1008" x1="1168" />
            <wire x2="1280" y1="1008" y2="1136" x1="1280" />
            <wire x2="1632" y1="1136" y2="1136" x1="1280" />
        </branch>
        <instance x="784" y="272" name="XLXI_11" orien="R0">
        </instance>
        <branch name="XLXN_65(7:0)">
            <wire x2="1280" y1="1424" y2="1424" x1="1168" />
            <wire x2="1280" y1="1264" y2="1424" x1="1280" />
            <wire x2="1632" y1="1264" y2="1264" x1="1280" />
        </branch>
        <branch name="OPCODE(2:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1664" type="branch" />
            <wire x2="1568" y1="1664" y2="1664" x1="1536" />
            <wire x2="1632" y1="1392" y2="1392" x1="1568" />
            <wire x2="1568" y1="1392" y2="1664" x1="1568" />
        </branch>
        <branch name="OPCODE(2:0)">
            <wire x2="368" y1="1680" y2="1680" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="1680" name="OPCODE(2:0)" orien="R180" />
        <instance x="784" y="1392" name="XLXI_16" orien="R0">
        </instance>
        <iomarker fontsize="28" x="192" y="240" name="B(7:0)" orien="R180" />
        <branch name="XLXN_70(7:0)">
            <wire x2="1408" y1="1584" y2="1584" x1="1168" />
            <wire x2="1408" y1="1328" y2="1584" x1="1408" />
            <wire x2="1632" y1="1328" y2="1328" x1="1408" />
        </branch>
        <instance x="784" y="1104" name="XLXI_25" orien="R0">
        </instance>
        <instance x="784" y="1680" name="XLXI_26" orien="R0">
        </instance>
    </sheet>
</drawing>