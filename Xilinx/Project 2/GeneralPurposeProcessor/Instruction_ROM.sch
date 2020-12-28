<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Instruction_addr(3:0)" />
        <signal name="XLXN_2(8:0)" />
        <signal name="XLXN_3(8:0)" />
        <signal name="XLXN_4(8:0)" />
        <signal name="XLXN_5(8:0)" />
        <signal name="XLXN_6(8:0)" />
        <signal name="XLXN_7(8:0)" />
        <signal name="XLXN_8(8:0)" />
        <signal name="XLXN_9(8:0)" />
        <signal name="XLXN_10(8:0)" />
        <signal name="XLXN_11(8:0)" />
        <signal name="XLXN_12(8:0)" />
        <signal name="XLXN_13(8:0)" />
        <signal name="XLXN_14(8:0)" />
        <signal name="XLXN_15(8:0)" />
        <signal name="XLXN_16(8:0)" />
        <signal name="XLXN_17(8:0)" />
        <signal name="Instruction(8:0)" />
        <port polarity="Input" name="Instruction_addr(3:0)" />
        <port polarity="Output" name="Instruction(8:0)" />
        <blockdef name="Mux16_9">
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
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="Mux16_9" name="INSTRUCTION_SELECT">
            <blockpin signalname="XLXN_2(8:0)" name="i0(8:0)" />
            <blockpin signalname="XLXN_3(8:0)" name="i1(8:0)" />
            <blockpin signalname="XLXN_4(8:0)" name="i2(8:0)" />
            <blockpin signalname="XLXN_5(8:0)" name="i3(8:0)" />
            <blockpin signalname="XLXN_6(8:0)" name="i4(8:0)" />
            <blockpin signalname="XLXN_7(8:0)" name="i5(8:0)" />
            <blockpin signalname="XLXN_8(8:0)" name="i6(8:0)" />
            <blockpin signalname="XLXN_9(8:0)" name="i7(8:0)" />
            <blockpin signalname="XLXN_10(8:0)" name="i8(8:0)" />
            <blockpin signalname="XLXN_11(8:0)" name="i9(8:0)" />
            <blockpin signalname="XLXN_12(8:0)" name="i10(8:0)" />
            <blockpin signalname="XLXN_13(8:0)" name="i11(8:0)" />
            <blockpin signalname="XLXN_14(8:0)" name="i12(8:0)" />
            <blockpin signalname="XLXN_15(8:0)" name="i13(8:0)" />
            <blockpin signalname="XLXN_16(8:0)" name="i14(8:0)" />
            <blockpin signalname="XLXN_17(8:0)" name="i15(8:0)" />
            <blockpin signalname="Instruction_addr(3:0)" name="sel(3:0)" />
            <blockpin signalname="Instruction(8:0)" name="o(8:0)" />
        </block>
        <block symbolname="constant" name="XLXI_2">
            <attr value="100" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_2(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_4">
            <attr value="030" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_3(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_5">
            <attr value="0CF" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_4(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_6">
            <attr value="01F" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_5(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_7">
            <attr value="104" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_6(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_8">
            <attr value="035" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_7(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_9">
            <attr value="0E9" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_8(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_10">
            <attr value="01D" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_9(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_11">
            <attr value="08A" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_10(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_12">
            <attr value="05D" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_11(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_13">
            <attr value="007" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_12(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_14">
            <attr value="05C" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_13(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_15">
            <attr value="0DE" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_14(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_16">
            <attr value="001" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_15(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_17">
            <attr value="081" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_16(8:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_18">
            <attr value="08F" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_17(8:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <instance x="768" y="1216" name="INSTRUCTION_SELECT" orien="R0">
        </instance>
        <branch name="Instruction_addr(3:0)">
            <wire x2="800" y1="1280" y2="1280" x1="768" />
            <wire x2="816" y1="1168" y2="1168" x1="800" />
            <wire x2="800" y1="1168" y2="1280" x1="800" />
        </branch>
        <branch name="XLXN_2(8:0)">
            <wire x2="816" y1="144" y2="144" x1="784" />
        </branch>
        <instance x="640" y="112" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_3(8:0)">
            <wire x2="816" y1="208" y2="208" x1="784" />
        </branch>
        <instance x="640" y="176" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_4(8:0)">
            <wire x2="816" y1="272" y2="272" x1="784" />
        </branch>
        <instance x="640" y="240" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_5(8:0)">
            <wire x2="816" y1="336" y2="336" x1="784" />
        </branch>
        <instance x="640" y="304" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_6(8:0)">
            <wire x2="816" y1="400" y2="400" x1="784" />
        </branch>
        <instance x="640" y="368" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_7(8:0)">
            <wire x2="816" y1="464" y2="464" x1="784" />
        </branch>
        <instance x="640" y="432" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_8(8:0)">
            <wire x2="816" y1="528" y2="528" x1="784" />
        </branch>
        <instance x="640" y="496" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_9(8:0)">
            <wire x2="800" y1="592" y2="592" x1="784" />
            <wire x2="816" y1="592" y2="592" x1="800" />
        </branch>
        <instance x="640" y="560" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_10(8:0)">
            <wire x2="816" y1="656" y2="656" x1="784" />
        </branch>
        <instance x="640" y="624" name="XLXI_11" orien="R0">
        </instance>
        <branch name="XLXN_11(8:0)">
            <wire x2="816" y1="720" y2="720" x1="784" />
        </branch>
        <instance x="640" y="688" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_12(8:0)">
            <wire x2="816" y1="784" y2="784" x1="784" />
        </branch>
        <instance x="640" y="752" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_13(8:0)">
            <wire x2="816" y1="848" y2="848" x1="784" />
        </branch>
        <instance x="640" y="816" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_14(8:0)">
            <wire x2="816" y1="912" y2="912" x1="784" />
        </branch>
        <instance x="640" y="880" name="XLXI_15" orien="R0">
        </instance>
        <branch name="XLXN_15(8:0)">
            <wire x2="816" y1="976" y2="976" x1="784" />
        </branch>
        <instance x="640" y="944" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_16(8:0)">
            <wire x2="816" y1="1040" y2="1040" x1="784" />
        </branch>
        <instance x="640" y="1008" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_17(8:0)">
            <wire x2="816" y1="1104" y2="1104" x1="784" />
        </branch>
        <instance x="640" y="1072" name="XLXI_18" orien="R0">
        </instance>
        <iomarker fontsize="28" x="768" y="1280" name="Instruction_addr(3:0)" orien="R180" />
        <branch name="Instruction(8:0)">
            <wire x2="1168" y1="608" y2="608" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="608" name="Instruction(8:0)" orien="R0" />
        <text style="fontsize:28;fontname:Arial" x="1016" y="1288">Note that the ISE's constants are represented in hex. </text>
        <text style="fontsize:56;fontname:Arial" x="1264" y="76">Instruction ROM</text>
        <text style="fontsize:36;fontname:Arial" x="544" y="44">Program Instructions</text>
    </sheet>
</drawing>