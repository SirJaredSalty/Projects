<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="LED(7:0)" />
        <signal name="SW(7:0)" />
        <signal name="INPUT(7:0)" />
        <signal name="INPUT(3:0)" />
        <signal name="SW(3:0)" />
        <signal name="SW(7:5)" />
        <signal name="SW(4)" />
        <signal name="INPUT(7:4)" />
        <signal name="clk" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="btn_en" />
        <signal name="joy_select" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="joy_select" />
        <blockdef name="MPP">
            <timestamp>2014-1-13T16:32:36</timestamp>
            <line x2="0" y1="80" y2="80" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="4" height="24" />
            <line x2="384" y1="16" y2="16" x1="320" />
            <rect width="256" x="64" y="-256" height="360" />
        </blockdef>
        <blockdef name="Buf_4">
            <timestamp>2013-2-5T5:41:53</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <rect width="64" x="160" y="-44" height="24" />
            <line x2="160" y1="-32" y2="-32" style="linewidth:W" x1="128" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="synchronizer">
            <timestamp>2014-1-4T19:1:29</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="debouncer">
            <timestamp>2014-1-4T19:1:33</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="pulser">
            <timestamp>2014-1-1T21:50:28</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="MPP" name="MPP_1">
            <blockpin signalname="SW(4)" name="OPERAND" />
            <blockpin signalname="SW(7:5)" name="OPCODE(2:0)" />
            <blockpin signalname="INPUT(7:0)" name="INPUT(7:0)" />
            <blockpin signalname="clk" name="CLK" />
            <blockpin signalname="LED(7:0)" name="OUTPUT(7:0)" />
            <blockpin signalname="btn_en" name="EN" />
        </block>
        <block symbolname="Buf_4" name="bus_buf1">
            <blockpin signalname="SW(3:0)" name="I(3:0)" />
            <blockpin signalname="INPUT(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="constant" name="XLXI_6">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="INPUT(7:4)" name="O" />
        </block>
        <block symbolname="synchronizer" name="btn_sync">
            <blockpin signalname="joy_select" name="b_async" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_5" name="b_sync" />
        </block>
        <block symbolname="pulser" name="pulse1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_6" name="d" />
            <blockpin signalname="btn_en" name="q" />
        </block>
        <block symbolname="debouncer" name="dbnce1">
            <blockpin signalname="XLXN_5" name="b" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_6" name="b_debounced" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="1760">
        <text style="fontsize:60;fontname:Arial" x="308" y="1532">Test 'Reference' Circuit</text>
        <text style="fontsize:80;fontname:Arial" x="316" y="1600">Lab 2 Multi-Purpose Processor</text>
        <branch name="LED(7:0)">
            <wire x2="2032" y1="656" y2="656" x1="2000" />
        </branch>
        <branch name="SW(7:0)">
            <wire x2="624" y1="384" y2="480" x1="624" />
            <wire x2="624" y1="480" y2="544" x1="624" />
            <wire x2="624" y1="544" y2="656" x1="624" />
        </branch>
        <branch name="INPUT(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="416" type="branch" />
            <wire x2="1248" y1="256" y2="384" x1="1248" />
            <wire x2="1248" y1="384" y2="416" x1="1248" />
            <wire x2="1440" y1="416" y2="416" x1="1248" />
            <wire x2="1616" y1="416" y2="416" x1="1440" />
        </branch>
        <bustap x2="1152" y1="384" y2="384" x1="1248" />
        <branch name="INPUT(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="384" type="branch" />
            <wire x2="1088" y1="384" y2="384" x1="1040" />
            <wire x2="1152" y1="384" y2="384" x1="1088" />
        </branch>
        <bustap x2="720" y1="384" y2="384" x1="624" />
        <branch name="SW(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="736" y="384" type="branch" />
            <wire x2="736" y1="384" y2="384" x1="720" />
            <wire x2="816" y1="384" y2="384" x1="736" />
        </branch>
        <instance x="1616" y="640" name="MPP_1" orien="R0">
        </instance>
        <bustap x2="720" y1="480" y2="480" x1="624" />
        <bustap x2="720" y1="544" y2="544" x1="624" />
        <branch name="SW(7:5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="480" type="branch" />
            <wire x2="1168" y1="480" y2="480" x1="720" />
            <wire x2="1616" y1="480" y2="480" x1="1168" />
        </branch>
        <branch name="SW(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1184" y="544" type="branch" />
            <wire x2="1184" y1="544" y2="544" x1="720" />
            <wire x2="1616" y1="544" y2="544" x1="1184" />
        </branch>
        <instance x="816" y="416" name="bus_buf1" orien="R0">
        </instance>
        <bustap x2="1152" y1="256" y2="256" x1="1248" />
        <branch name="INPUT(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1056" y="256" type="branch" />
            <wire x2="1056" y1="256" y2="256" x1="944" />
            <wire x2="1152" y1="256" y2="256" x1="1056" />
        </branch>
        <instance x="800" y="224" name="XLXI_6" orien="R0">
        </instance>
        <text style="fontsize:64;fontname:Arial" x="1152" y="116">Processor</text>
        <iomarker fontsize="28" x="2032" y="656" name="LED(7:0)" orien="R0" />
        <iomarker fontsize="28" x="624" y="656" name="SW(7:0)" orien="R90" />
        <branch name="XLXN_5">
            <wire x2="1200" y1="1104" y2="1104" x1="1168" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1632" y1="1104" y2="1104" x1="1584" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="608" type="branch" />
            <wire x2="1616" y1="608" y2="608" x1="1600" />
        </branch>
        <branch name="btn_en">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1104" type="branch" />
            <wire x2="2032" y1="1104" y2="1104" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="672" y="1248" name="clk" orien="R180" />
        <instance x="784" y="1200" name="btn_sync" orien="R0">
        </instance>
        <instance x="1200" y="1200" name="dbnce1" orien="R0">
        </instance>
        <instance x="1632" y="1200" name="pulse1" orien="R0">
        </instance>
        <branch name="btn_en">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1600" y="720" type="branch" />
            <wire x2="1616" y1="720" y2="720" x1="1600" />
        </branch>
        <branch name="clk">
            <wire x2="736" y1="1248" y2="1248" x1="672" />
            <wire x2="1168" y1="1248" y2="1248" x1="736" />
            <wire x2="1584" y1="1248" y2="1248" x1="1168" />
            <wire x2="736" y1="1168" y2="1248" x1="736" />
            <wire x2="784" y1="1168" y2="1168" x1="736" />
            <wire x2="1200" y1="1168" y2="1168" x1="1168" />
            <wire x2="1168" y1="1168" y2="1248" x1="1168" />
            <wire x2="1632" y1="1168" y2="1168" x1="1584" />
            <wire x2="1584" y1="1168" y2="1248" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="528" y="1104" name="joy_select" orien="R180" />
        <branch name="joy_select">
            <wire x2="544" y1="1104" y2="1104" x1="528" />
            <wire x2="768" y1="1104" y2="1104" x1="544" />
            <wire x2="784" y1="1104" y2="1104" x1="768" />
        </branch>
        <text style="fontsize:64;fontname:Arial" x="900" y="924">Joystick Button Enable Circuit</text>
    </sheet>
</drawing>