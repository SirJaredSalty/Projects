<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="Instruction(7:4)" />
        <signal name="alu_C" />
        <signal name="alu_Z" />
        <signal name="alu_N" />
        <signal name="C" />
        <signal name="N" />
        <signal name="Z" />
        <signal name="capture_C" />
        <signal name="capture_N" />
        <signal name="Current_Instruction_Addr(3:0)" />
        <signal name="Instruction(3:0)" />
        <signal name="Instruction(8:0)" />
        <signal name="PC_NEXT(3:0)" />
        <signal name="Instruction(7)" />
        <signal name="Instruction(3:2)" />
        <signal name="Instruction(1:0)" />
        <signal name="write_enable_registers" />
        <signal name="ALU_RESULT(7:0)" />
        <signal name="Output_A(7:0)" />
        <signal name="Input(7:0)" />
        <signal name="Instruction(8)" />
        <signal name="Instruction(6:4)" />
        <signal name="XLXN_73(7:0)" />
        <signal name="Output_B(7:0)" />
        <signal name="capture_Z" />
        <signal name="XLXN_140" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="C" />
        <port polarity="Output" name="N" />
        <port polarity="Output" name="Z" />
        <port polarity="Output" name="Current_Instruction_Addr(3:0)" />
        <port polarity="Output" name="Instruction(8:0)" />
        <port polarity="Output" name="ALU_RESULT(7:0)" />
        <port polarity="Input" name="Input(7:0)" />
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
        <blockdef name="RegFile">
            <timestamp>2013-2-12T3:39:36</timestamp>
            <rect style="linewidth:W" width="272" x="48" y="12" height="316" />
            <rect width="48" x="0" y="72" height="16" />
            <line x2="48" y1="80" y2="80" x1="0" />
            <rect width="48" x="0" y="24" height="16" />
            <line x2="48" y1="32" y2="32" x1="0" />
            <line x2="48" y1="304" y2="304" x1="0" />
            <rect width="48" x="0" y="136" height="16" />
            <line x2="48" y1="144" y2="144" x1="0" />
            <rect width="48" x="0" y="184" height="16" />
            <line x2="48" y1="192" y2="192" x1="0" />
            <line x2="48" y1="240" y2="240" x1="0" />
            <rect width="48" x="320" y="24" height="16" />
            <line x2="368" y1="32" y2="32" x1="320" />
            <rect width="48" x="320" y="72" height="16" />
            <line x2="368" y1="80" y2="80" x1="320" />
            <line x2="176" y1="112" y2="112" x1="52" />
            <line x2="48" y1="272" y2="272" x1="176" />
            <line x2="176" y1="12" y2="328" x1="176" />
        </blockdef>
        <blockdef name="ControlALU">
            <timestamp>2013-3-3T19:51:42</timestamp>
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
            <line x2="96" y1="-412" y2="-512" x1="96" />
            <line x2="192" y1="-356" y2="-432" x1="192" />
            <line x2="144" y1="-384" y2="-512" x1="144" />
            <line x2="192" y1="-512" y2="-404" x1="192" />
        </blockdef>
        <blockdef name="RegParallelLoad_4">
            <timestamp>2019-11-7T18:5:5</timestamp>
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <rect style="linewidth:W" width="256" x="64" y="-128" height="68" />
            <line x2="144" y1="-60" y2="-124" x1="144" />
            <line x2="224" y1="-60" y2="4" x1="224" />
            <rect width="28" x="208" y="-60" height="60" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="224" y1="-192" y2="-128" x1="224" />
            <rect width="32" x="208" y="-192" height="64" />
        </blockdef>
        <blockdef name="Instruction_ROM">
            <timestamp>2013-2-25T3:28:7</timestamp>
            <rect width="384" x="64" y="-64" height="224" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="116" height="24" />
            <line x2="512" y1="128" y2="128" x1="448" />
        </blockdef>
        <blockdef name="RegParallelLoad_1">
            <timestamp>2013-3-3T20:32:38</timestamp>
            <line x2="32" y1="-80" y2="-80" x1="64" />
            <rect style="linewidth:W" width="112" x="64" y="-128" height="68" />
            <line x2="32" y1="-112" y2="-112" x1="64" />
            <line x2="112" y1="-60" y2="-128" x1="112" />
            <line x2="144" y1="-60" y2="-32" x1="144" />
            <line x2="144" y1="-128" y2="-160" x1="144" />
        </blockdef>
        <blockdef name="Instruction_Decoder">
            <timestamp>2019-11-8T17:5:25</timestamp>
            <rect width="384" x="64" y="-512" height="192" />
            <line x2="512" y1="-480" y2="-480" x1="448" />
            <line x2="512" y1="-416" y2="-416" x1="448" />
            <line x2="512" y1="-352" y2="-352" x1="448" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="60" x="4" y="-488" height="16" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2013-3-3T22:5:40</timestamp>
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="224" y1="-80" y2="-168" x1="64" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="224" y1="-168" y2="-340" x1="224" />
            <line x2="160" y1="-132" y2="-48" style="linewidth:W" x1="160" />
            <line x2="64" y1="-48" y2="-48" style="linewidth:W" x1="160" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="64" y1="-48" y2="-48" x1="0" />
            <line x2="224" y1="-432" y2="-340" x1="64" />
            <line x2="224" y1="-256" y2="-256" x1="288" />
            <line x2="224" y1="-224" y2="-224" x1="288" />
            <line x2="224" y1="-192" y2="-192" x1="288" />
            <rect width="64" x="224" y="-316" height="24" />
            <line x2="224" y1="-304" y2="-304" x1="288" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="RegParallelLoad_1" name="Z_FLAG">
            <blockpin signalname="capture_Z" name="LD" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="alu_Z" name="d" />
            <blockpin signalname="Z" name="q" />
        </block>
        <block symbolname="RegParallelLoad_1" name="C_FLAG">
            <blockpin signalname="capture_C" name="LD" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="alu_C" name="d" />
            <blockpin signalname="C" name="q" />
        </block>
        <block symbolname="RegParallelLoad_1" name="N_FLAG">
            <blockpin signalname="capture_N" name="LD" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="alu_N" name="d" />
            <blockpin signalname="N" name="q" />
        </block>
        <block symbolname="Instruction_Decoder" name="INSTR_DEC">
            <blockpin signalname="Instruction(7:4)" name="OPCODE(3:0)" />
            <blockpin signalname="capture_C" name="capture_C" />
            <blockpin signalname="capture_Z" name="capture_Z" />
            <blockpin signalname="capture_N" name="capture_N" />
        </block>
        <block symbolname="ControlALU" name="CONTROL_ALU">
            <blockpin signalname="Current_Instruction_Addr(3:0)" name="A(3:0)" />
            <blockpin signalname="Instruction(3:0)" name="B(3:0)" />
            <blockpin signalname="PC_NEXT(3:0)" name="O(3:0)" />
            <blockpin signalname="Instruction(7:4)" name="OPCODE(3:0)" />
            <blockpin signalname="N" name="N" />
            <blockpin signalname="Z" name="Z" />
            <blockpin signalname="C" name="C" />
        </block>
        <block symbolname="Instruction_ROM" name="INSTRUCTION_PROM">
            <blockpin signalname="Current_Instruction_Addr(3:0)" name="Instruction_addr(3:0)" />
            <blockpin signalname="Instruction(8:0)" name="Instruction(8:0)" />
        </block>
        <block symbolname="RegParallelLoad_4" name="PROGRAM_COUNTER">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_140" name="load" />
            <blockpin signalname="PC_NEXT(3:0)" name="d(3:0)" />
            <blockpin signalname="Current_Instruction_Addr(3:0)" name="q(3:0)" />
        </block>
        <block symbolname="RegFile" name="REG_FILE">
            <blockpin signalname="Instruction(1:0)" name="R_addr_b(1:0)" />
            <blockpin signalname="Instruction(3:2)" name="R_addr_a(1:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ALU_RESULT(7:0)" name="W_data(7:0)" />
            <blockpin signalname="Instruction(3:2)" name="W_addr(1:0)" />
            <blockpin signalname="write_enable_registers" name="W_enable" />
            <blockpin signalname="Output_A(7:0)" name="R_data_a(7:0)" />
            <blockpin signalname="Output_B(7:0)" name="R_data_b(7:0)" />
        </block>
        <block symbolname="ALU" name="DATA_ALU">
            <blockpin signalname="Output_A(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_73(7:0)" name="B(7:0)" />
            <blockpin signalname="Instruction(6:4)" name="OPCODE(2:0)" />
            <blockpin signalname="alu_C" name="C" />
            <blockpin signalname="alu_Z" name="Z" />
            <blockpin signalname="alu_N" name="N" />
            <blockpin signalname="ALU_RESULT(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="Mux2_8" name="INPUT_SEL">
            <blockpin signalname="XLXN_73(7:0)" name="O(7:0)" />
            <blockpin signalname="Output_B(7:0)" name="D0(7:0)" />
            <blockpin signalname="Input(7:0)" name="D1(7:0)" />
            <blockpin signalname="Instruction(8)" name="S" />
        </block>
        <block symbolname="inv" name="XLXI_52">
            <blockpin signalname="Instruction(7)" name="I" />
            <blockpin signalname="write_enable_registers" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_53">
            <blockpin signalname="XLXN_140" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="3" width="3520" height="2720">
        <rect style="linestyle:Dash" width="1024" x="2440" y="212" height="652" />
        <text style="fontsize:48;fontname:Arial" x="2464" y="820">Flags</text>
        <branch name="Z">
            <wire x2="3328" y1="576" y2="576" x1="3248" />
        </branch>
        <branch name="alu_Z">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3008" y="448" type="branch" />
            <wire x2="3248" y1="448" y2="448" x1="3008" />
        </branch>
        <branch name="clk">
            <wire x2="3120" y1="544" y2="544" x1="3104" />
            <wire x2="3136" y1="528" y2="528" x1="3120" />
            <wire x2="3120" y1="528" y2="544" x1="3120" />
        </branch>
        <branch name="C">
            <wire x2="3328" y1="400" y2="400" x1="3248" />
        </branch>
        <branch name="alu_C">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3008" y="272" type="branch" />
            <wire x2="3248" y1="272" y2="272" x1="3008" />
        </branch>
        <branch name="clk">
            <wire x2="3120" y1="368" y2="368" x1="3104" />
            <wire x2="3136" y1="352" y2="352" x1="3120" />
            <wire x2="3120" y1="352" y2="368" x1="3120" />
        </branch>
        <branch name="N">
            <wire x2="3328" y1="752" y2="752" x1="3248" />
        </branch>
        <branch name="alu_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3008" y="624" type="branch" />
            <wire x2="3248" y1="624" y2="624" x1="3008" />
        </branch>
        <branch name="clk">
            <wire x2="3120" y1="720" y2="720" x1="3104" />
            <wire x2="3136" y1="704" y2="704" x1="3120" />
            <wire x2="3120" y1="704" y2="720" x1="3120" />
        </branch>
        <instance x="3104" y="608" name="Z_FLAG" orien="R0">
        </instance>
        <instance x="3104" y="432" name="C_FLAG" orien="R0">
        </instance>
        <instance x="3104" y="784" name="N_FLAG" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3104" y="368" name="clk" orien="R180" />
        <iomarker fontsize="28" x="3104" y="544" name="clk" orien="R180" />
        <iomarker fontsize="28" x="3104" y="720" name="clk" orien="R180" />
        <iomarker fontsize="28" x="3328" y="400" name="C" orien="R0" />
        <iomarker fontsize="28" x="3328" y="576" name="Z" orien="R0" />
        <iomarker fontsize="28" x="3328" y="752" name="N" orien="R0" />
        <rect style="linestyle:Dash" width="768" x="2600" y="1088" height="504" />
        <instance x="2656" y="1728" name="INSTR_DEC" orien="R0">
        </instance>
        <text style="fontsize:48;fontname:Arial" x="2640" y="1540">Instruction Decoder</text>
        <branch name="Instruction(7:4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2560" y="1248" type="branch" />
            <wire x2="2656" y1="1248" y2="1248" x1="2560" />
        </branch>
        <branch name="capture_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3184" y="1376" type="branch" />
            <wire x2="3184" y1="1376" y2="1376" x1="3168" />
        </branch>
        <branch name="capture_Z">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3184" y="1312" type="branch" />
            <wire x2="3184" y1="1312" y2="1312" x1="3168" />
        </branch>
        <branch name="capture_C">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3184" y="1248" type="branch" />
            <wire x2="3184" y1="1248" y2="1248" x1="3168" />
        </branch>
        <text style="fontsize:48;fontname:Arial" x="848" y="1140">PC</text>
        <iomarker fontsize="28" x="912" y="1568" name="clk" orien="R0" />
        <iomarker fontsize="28" x="1760" y="1040" name="Instruction(8:0)" orien="R0" />
        <iomarker fontsize="28" x="1184" y="944" name="Current_Instruction_Addr(3:0)" orien="R0" />
        <text style="fontsize:48;fontname:Arial" x="1188" y="1624">Instruction</text>
        <text style="fontsize:48;fontname:Arial" x="1184" y="1680">Read-Only Memory (ROM)</text>
        <text style="fontsize:48;fontname:Arial" x="348" y="1672">Control Unit</text>
        <rect style="linestyle:Dash" width="796" x="304" y="916" height="800" />
        <rect style="linestyle:Dash" width="672" x="1156" y="1112" height="608" />
        <instance x="1200" y="1312" name="INSTRUCTION_PROM" orien="R0">
        </instance>
        <instance x="976" y="1504" name="PROGRAM_COUNTER" orien="R270">
        </instance>
        <branch name="Instruction(7:4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1488" type="branch" />
            <wire x2="256" y1="1488" y2="1488" x1="240" />
            <wire x2="448" y1="1488" y2="1488" x1="256" />
        </branch>
        <branch name="Current_Instruction_Addr(3:0)">
            <wire x2="1040" y1="944" y2="944" x1="368" />
            <wire x2="1040" y1="944" y2="1280" x1="1040" />
            <wire x2="1200" y1="1280" y2="1280" x1="1040" />
            <wire x2="1184" y1="944" y2="944" x1="1040" />
            <wire x2="368" y1="944" y2="1216" x1="368" />
            <wire x2="448" y1="1216" y2="1216" x1="368" />
            <wire x2="1040" y1="1280" y2="1280" x1="976" />
        </branch>
        <branch name="N">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1008" type="branch" />
            <wire x2="640" y1="1008" y2="1024" x1="640" />
        </branch>
        <branch name="Z">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="1008" type="branch" />
            <wire x2="592" y1="1008" y2="1024" x1="592" />
        </branch>
        <branch name="C">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1008" type="branch" />
            <wire x2="544" y1="1008" y2="1024" x1="544" />
        </branch>
        <branch name="Instruction(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="1344" type="branch" />
            <wire x2="256" y1="1344" y2="1344" x1="240" />
            <wire x2="448" y1="1344" y2="1344" x1="256" />
        </branch>
        <branch name="Instruction(8:0)">
            <wire x2="1728" y1="1440" y2="1440" x1="1712" />
            <wire x2="1760" y1="1040" y2="1040" x1="1728" />
            <wire x2="1728" y1="1040" y2="1440" x1="1728" />
        </branch>
        <branch name="clk">
            <wire x2="896" y1="1504" y2="1520" x1="896" />
            <wire x2="896" y1="1520" y2="1568" x1="896" />
            <wire x2="912" y1="1568" y2="1568" x1="896" />
        </branch>
        <branch name="PC_NEXT(3:0)">
            <wire x2="768" y1="1280" y2="1280" x1="736" />
            <wire x2="784" y1="1280" y2="1280" x1="768" />
        </branch>
        <text style="fontsize:64;fontname:Arial" x="204" y="132">Simple General-Purpose Processor</text>
        <iomarker fontsize="28" x="1632" y="672" name="clk" orien="R180" />
        <instance x="1776" y="368" name="REG_FILE" orien="R0">
        </instance>
        <instance x="640" y="816" name="DATA_ALU" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1328" y="288" name="ALU_RESULT(7:0)" orien="R0" />
        <instance x="480" y="720" name="INPUT_SEL" orien="R0">
        </instance>
        <iomarker fontsize="28" x="448" y="656" name="Input(7:0)" orien="R180" />
        <branch name="Instruction(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="640" type="branch" />
            <wire x2="1328" y1="640" y2="640" x1="1312" />
            <wire x2="1360" y1="640" y2="640" x1="1328" />
            <wire x2="1392" y1="608" y2="608" x1="1360" />
            <wire x2="1360" y1="608" y2="640" x1="1360" />
        </branch>
        <branch name="Instruction(3:2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="400" type="branch" />
            <wire x2="1760" y1="400" y2="400" x1="1744" />
            <wire x2="1776" y1="400" y2="400" x1="1760" />
        </branch>
        <branch name="Instruction(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="448" type="branch" />
            <wire x2="1760" y1="448" y2="448" x1="1744" />
            <wire x2="1776" y1="448" y2="448" x1="1760" />
        </branch>
        <branch name="Instruction(3:2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="560" type="branch" />
            <wire x2="1744" y1="560" y2="560" x1="1728" />
            <wire x2="1776" y1="560" y2="560" x1="1744" />
        </branch>
        <branch name="write_enable_registers">
            <wire x2="1632" y1="608" y2="608" x1="1616" />
            <wire x2="1712" y1="608" y2="608" x1="1632" />
            <wire x2="1760" y1="608" y2="608" x1="1712" />
            <wire x2="1776" y1="608" y2="608" x1="1760" />
        </branch>
        <branch name="clk">
            <wire x2="1648" y1="672" y2="672" x1="1632" />
            <wire x2="1776" y1="672" y2="672" x1="1648" />
        </branch>
        <branch name="ALU_RESULT(7:0)">
            <wire x2="1104" y1="512" y2="512" x1="928" />
            <wire x2="1776" y1="512" y2="512" x1="1104" />
            <wire x2="1104" y1="288" y2="512" x1="1104" />
            <wire x2="1328" y1="288" y2="288" x1="1104" />
        </branch>
        <branch name="Output_A(7:0)">
            <wire x2="2208" y1="224" y2="224" x1="624" />
            <wire x2="2208" y1="224" y2="400" x1="2208" />
            <wire x2="624" y1="224" y2="496" x1="624" />
            <wire x2="640" y1="496" y2="496" x1="624" />
            <wire x2="2208" y1="400" y2="400" x1="2144" />
        </branch>
        <branch name="alu_N">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="624" type="branch" />
            <wire x2="976" y1="624" y2="624" x1="928" />
        </branch>
        <branch name="alu_Z">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="592" type="branch" />
            <wire x2="976" y1="592" y2="592" x1="928" />
        </branch>
        <branch name="alu_C">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="560" type="branch" />
            <wire x2="976" y1="560" y2="560" x1="928" />
        </branch>
        <branch name="Input(7:0)">
            <wire x2="480" y1="656" y2="656" x1="448" />
        </branch>
        <branch name="Instruction(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="448" y="720" type="branch" />
            <wire x2="480" y1="720" y2="720" x1="448" />
        </branch>
        <branch name="Instruction(6:4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="768" type="branch" />
            <wire x2="640" y1="768" y2="768" x1="592" />
        </branch>
        <branch name="XLXN_73(7:0)">
            <wire x2="640" y1="624" y2="624" x1="592" />
        </branch>
        <branch name="Output_B(7:0)">
            <wire x2="240" y1="592" y2="832" x1="240" />
            <wire x2="2224" y1="832" y2="832" x1="240" />
            <wire x2="480" y1="592" y2="592" x1="240" />
            <wire x2="2224" y1="448" y2="448" x1="2144" />
            <wire x2="2224" y1="448" y2="832" x1="2224" />
        </branch>
        <branch name="capture_C">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="288" type="branch" />
            <wire x2="2704" y1="288" y2="288" x1="2656" />
            <wire x2="2960" y1="288" y2="288" x1="2704" />
            <wire x2="2960" y1="288" y2="320" x1="2960" />
            <wire x2="3136" y1="320" y2="320" x1="2960" />
        </branch>
        <branch name="capture_Z">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="464" type="branch" />
            <wire x2="2704" y1="464" y2="464" x1="2656" />
            <wire x2="2960" y1="464" y2="464" x1="2704" />
            <wire x2="2960" y1="464" y2="496" x1="2960" />
            <wire x2="3136" y1="496" y2="496" x1="2960" />
        </branch>
        <branch name="capture_N">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="640" type="branch" />
            <wire x2="2704" y1="640" y2="640" x1="2672" />
            <wire x2="2960" y1="640" y2="640" x1="2704" />
            <wire x2="2960" y1="640" y2="672" x1="2960" />
            <wire x2="3136" y1="672" y2="672" x1="2960" />
        </branch>
        <instance x="1392" y="640" name="XLXI_52" orien="R0" />
        <branch name="XLXN_140">
            <wire x2="864" y1="1504" y2="1536" x1="864" />
        </branch>
        <instance x="928" y="1536" name="XLXI_53" orien="R180" />
        <instance x="448" y="1536" name="CONTROL_ALU" orien="R0">
        </instance>
    </sheet>
</drawing>