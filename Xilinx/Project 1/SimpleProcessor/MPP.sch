<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="OPERAND" />
        <signal name="OPCODE(2:0)" />
        <signal name="INPUT(7:0)" />
        <signal name="XLXN_10(7:0)" />
        <signal name="XLXN_8(7:0)" />
        <signal name="OUTPUT(7:0)" />
        <signal name="EN" />
        <signal name="CLK" />
        <port polarity="Input" name="OPERAND" />
        <port polarity="Input" name="OPCODE(2:0)" />
        <port polarity="Input" name="INPUT(7:0)" />
        <port polarity="Output" name="OUTPUT(7:0)" />
        <port polarity="Input" name="EN" />
        <port polarity="Input" name="CLK" />
        <blockdef name="Mux2_8">
            <timestamp>2013-2-5T5:16:40</timestamp>
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
        <blockdef name="ALU">
            <timestamp>2013-2-5T6:14:29</timestamp>
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="224" y1="-80" y2="-168" x1="64" />
            <line x2="224" y1="-432" y2="-340" x1="64" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="0" y="-204" height="24" />
            <rect width="64" x="224" y="-268" height="24" />
            <line x2="224" y1="-256" y2="-256" x1="288" />
            <line x2="224" y1="-168" y2="-340" x1="224" />
            <line x2="160" y1="-132" y2="-48" style="linewidth:W" x1="160" />
            <line x2="64" y1="-48" y2="-48" style="linewidth:W" x1="160" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="64" y1="-48" y2="-48" x1="0" />
        </blockdef>
        <blockdef name="RegParallelLoad_8">
            <timestamp>2020-2-11T14:29:47</timestamp>
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <rect style="linewidth:W" width="256" x="64" y="-128" height="68" />
            <line x2="144" y1="-60" y2="-124" x1="144" />
            <line x2="224" y1="-60" y2="4" x1="224" />
            <rect width="28" x="208" y="-60" height="60" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="224" y1="-192" y2="-128" x1="224" />
            <rect width="32" x="208" y="-192" height="64" />
        </blockdef>
        <block symbolname="Mux2_8" name="OPERAND_SELECT">
            <blockpin signalname="XLXN_8(7:0)" name="O(7:0)" />
            <blockpin signalname="OUTPUT(7:0)" name="D0(7:0)" />
            <blockpin signalname="INPUT(7:0)" name="D1(7:0)" />
            <blockpin signalname="OPERAND" name="S" />
        </block>
        <block symbolname="ALU" name="CORE_ALU">
            <blockpin signalname="OUTPUT(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_8(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_10(7:0)" name="O(7:0)" />
            <blockpin signalname="OPCODE(2:0)" name="opcode(2:0)" />
        </block>
        <block symbolname="RegParallelLoad_8" name="Parallel_Load_Reg">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="OUTPUT(7:0)" name="q(7:0)" />
            <blockpin signalname="EN" name="load" />
            <blockpin signalname="XLXN_10(7:0)" name="d(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="2720">
        <branch name="OPERAND">
            <wire x2="720" y1="672" y2="720" x1="720" />
        </branch>
        <branch name="INPUT(7:0)">
            <wire x2="784" y1="688" y2="720" x1="784" />
        </branch>
        <branch name="OUTPUT(7:0)">
            <wire x2="944" y1="624" y2="624" x1="848" />
            <wire x2="1328" y1="624" y2="624" x1="944" />
            <wire x2="1328" y1="624" y2="1824" x1="1328" />
            <wire x2="944" y1="624" y2="896" x1="944" />
            <wire x2="848" y1="624" y2="720" x1="848" />
            <wire x2="880" y1="1504" y2="1696" x1="880" />
            <wire x2="880" y1="1696" y2="1824" x1="880" />
            <wire x2="880" y1="1824" y2="1968" x1="880" />
            <wire x2="1328" y1="1824" y2="1824" x1="880" />
        </branch>
        <instance x="720" y="720" name="OPERAND_SELECT" orien="R90">
        </instance>
        <iomarker fontsize="28" x="720" y="672" name="OPERAND" orien="R270" />
        <iomarker fontsize="28" x="784" y="688" name="INPUT(7:0)" orien="R270" />
        <iomarker fontsize="28" x="560" y="848" name="OPCODE(2:0)" orien="R270" />
        <text style="fontsize:60;fontname:Arial" x="120" y="2396">Top-Level Processor</text>
        <iomarker fontsize="28" x="880" y="1968" name="OUTPUT(7:0)" orien="R90" />
        <instance x="656" y="1504" name="Parallel_Load_Reg" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="288" y="-32" type="instance" />
        </instance>
        <branch name="XLXN_10(7:0)">
            <wire x2="880" y1="1184" y2="1296" x1="880" />
            <wire x2="880" y1="1296" y2="1312" x1="880" />
        </branch>
        <branch name="XLXN_8(7:0)">
            <wire x2="816" y1="832" y2="848" x1="816" />
            <wire x2="816" y1="848" y2="896" x1="816" />
        </branch>
        <branch name="OPCODE(2:0)">
            <wire x2="560" y1="848" y2="864" x1="560" />
            <wire x2="560" y1="864" y2="880" x1="560" />
            <wire x2="672" y1="880" y2="880" x1="560" />
            <wire x2="672" y1="880" y2="896" x1="672" />
        </branch>
        <instance x="624" y="896" name="CORE_ALU" orien="R90" />
        <branch name="EN">
            <wire x2="640" y1="1392" y2="1392" x1="592" />
            <wire x2="656" y1="1392" y2="1392" x1="640" />
        </branch>
        <iomarker fontsize="28" x="592" y="1392" name="EN" orien="R180" />
        <branch name="CLK">
            <wire x2="640" y1="1424" y2="1424" x1="608" />
            <wire x2="656" y1="1424" y2="1424" x1="640" />
        </branch>
        <iomarker fontsize="28" x="608" y="1424" name="CLK" orien="R180" />
    </sheet>
</drawing>