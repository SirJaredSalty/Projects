<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="R_addr_a(1:0)" />
        <signal name="R_addr_b(1:0)" />
        <signal name="W_addr(1:0)" />
        <signal name="clk" />
        <signal name="R_data_a(7:0)" />
        <signal name="R_data_b(7:0)" />
        <signal name="W_data(7:0)" />
        <signal name="XLXN_89(7:0)" />
        <signal name="XLXN_92(7:0)" />
        <signal name="E0" />
        <signal name="E1" />
        <signal name="XLXN_94(7:0)" />
        <signal name="XLXN_90(7:0)" />
        <signal name="R_addr_b(0)" />
        <signal name="R_addr_b(1)" />
        <signal name="R_addr_a(0)" />
        <signal name="R_addr_a(1)" />
        <signal name="E2" />
        <signal name="W_addr(0)" />
        <signal name="W_addr(1)" />
        <signal name="W_enable" />
        <signal name="E3" />
        <port polarity="Input" name="R_addr_a(1:0)" />
        <port polarity="Input" name="R_addr_b(1:0)" />
        <port polarity="Input" name="W_addr(1:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="R_data_a(7:0)" />
        <port polarity="Output" name="R_data_b(7:0)" />
        <port polarity="Input" name="W_data(7:0)" />
        <port polarity="Input" name="W_enable" />
        <blockdef name="d2_4e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="bit_8_register">
            <timestamp>2020-10-21T14:1:25</timestamp>
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="256" x="64" y="-256" height="120" />
            <line x2="192" y1="-80" y2="-136" x1="192" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="Mux4">
            <timestamp>2020-10-21T17:7:59</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="304" x="64" y="-320" height="448" />
        </blockdef>
        <block symbolname="bit_8_register" name="R2">
            <blockpin signalname="W_data(7:0)" name="D(7:0)" />
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E2" name="E" />
            <blockpin signalname="XLXN_90(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="bit_8_register" name="R1">
            <blockpin signalname="W_data(7:0)" name="D(7:0)" />
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E1" name="E" />
            <blockpin signalname="XLXN_94(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="bit_8_register" name="R0">
            <blockpin signalname="W_data(7:0)" name="D(7:0)" />
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E0" name="E" />
            <blockpin signalname="XLXN_92(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="bit_8_register" name="R3">
            <blockpin signalname="W_data(7:0)" name="D(7:0)" />
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="E3" name="E" />
            <blockpin signalname="XLXN_89(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="d2_4e" name="XLXI_57">
            <blockpin signalname="W_addr(0)" name="A0" />
            <blockpin signalname="W_addr(1)" name="A1" />
            <blockpin signalname="W_enable" name="E" />
            <blockpin signalname="E0" name="D0" />
            <blockpin signalname="E1" name="D1" />
            <blockpin signalname="E2" name="D2" />
            <blockpin signalname="E3" name="D3" />
        </block>
        <block symbolname="Mux4" name="XLXI_79">
            <blockpin signalname="R_addr_a(0)" name="OPCODE0" />
            <blockpin signalname="R_addr_a(1)" name="OPCODE1" />
            <blockpin signalname="XLXN_94(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_92(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_90(7:0)" name="C(7:0)" />
            <blockpin signalname="XLXN_89(7:0)" name="D(7:0)" />
            <blockpin signalname="R_data_a(7:0)" name="MuxOut(7:0)" />
        </block>
        <block symbolname="Mux4" name="XLXI_80">
            <blockpin signalname="R_addr_b(0)" name="OPCODE0" />
            <blockpin signalname="R_addr_b(1)" name="OPCODE1" />
            <blockpin signalname="XLXN_94(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_92(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_90(7:0)" name="C(7:0)" />
            <blockpin signalname="XLXN_89(7:0)" name="D(7:0)" />
            <blockpin signalname="R_data_b(7:0)" name="MuxOut(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="R_addr_a(1:0)">
            <wire x2="480" y1="640" y2="640" x1="320" />
        </branch>
        <branch name="R_addr_b(1:0)">
            <wire x2="480" y1="880" y2="880" x1="320" />
        </branch>
        <branch name="W_addr(1:0)">
            <wire x2="512" y1="1328" y2="1328" x1="288" />
        </branch>
        <branch name="clk">
            <wire x2="480" y1="1840" y2="1840" x1="192" />
        </branch>
        <branch name="R_data_a(7:0)">
            <wire x2="3264" y1="176" y2="176" x1="3168" />
        </branch>
        <branch name="R_data_b(7:0)">
            <wire x2="3232" y1="2048" y2="2048" x1="3104" />
        </branch>
        <branch name="W_data(7:0)">
            <wire x2="1520" y1="176" y2="176" x1="304" />
            <wire x2="1728" y1="176" y2="176" x1="1520" />
            <wire x2="1520" y1="176" y2="800" x1="1520" />
            <wire x2="1744" y1="800" y2="800" x1="1520" />
            <wire x2="1520" y1="800" y2="1536" x1="1520" />
            <wire x2="1744" y1="1536" y2="1536" x1="1520" />
            <wire x2="1520" y1="1536" y2="2240" x1="1520" />
            <wire x2="1760" y1="2240" y2="2240" x1="1520" />
        </branch>
        <branch name="XLXN_89(7:0)">
            <wire x2="2528" y1="2240" y2="2240" x1="2144" />
            <wire x2="2672" y1="2240" y2="2240" x1="2528" />
            <wire x2="2736" y1="368" y2="368" x1="2528" />
            <wire x2="2528" y1="368" y2="2240" x1="2528" />
        </branch>
        <branch name="XLXN_92(7:0)">
            <wire x2="2208" y1="176" y2="176" x1="2112" />
            <wire x2="2736" y1="176" y2="176" x1="2208" />
            <wire x2="2208" y1="176" y2="2048" x1="2208" />
            <wire x2="2672" y1="2048" y2="2048" x1="2208" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="240" type="branch" />
            <wire x2="1648" y1="240" y2="240" x1="1632" />
            <wire x2="1728" y1="240" y2="240" x1="1648" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="864" type="branch" />
            <wire x2="1744" y1="864" y2="864" x1="1648" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="1600" type="branch" />
            <wire x2="1744" y1="1600" y2="1600" x1="1664" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1664" y="2304" type="branch" />
            <wire x2="1680" y1="2304" y2="2304" x1="1664" />
            <wire x2="1760" y1="2304" y2="2304" x1="1680" />
        </branch>
        <branch name="E0">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="416" type="branch" />
            <wire x2="1920" y1="320" y2="416" x1="1920" />
        </branch>
        <branch name="E1">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1072" type="branch" />
            <wire x2="1936" y1="944" y2="1072" x1="1936" />
        </branch>
        <branch name="XLXN_94(7:0)">
            <wire x2="2304" y1="800" y2="800" x1="2128" />
            <wire x2="2304" y1="800" y2="2112" x1="2304" />
            <wire x2="2672" y1="2112" y2="2112" x1="2304" />
            <wire x2="2736" y1="240" y2="240" x1="2304" />
            <wire x2="2304" y1="240" y2="800" x1="2304" />
        </branch>
        <branch name="XLXN_90(7:0)">
            <wire x2="2416" y1="1536" y2="1536" x1="2128" />
            <wire x2="2416" y1="1536" y2="2176" x1="2416" />
            <wire x2="2672" y1="2176" y2="2176" x1="2416" />
            <wire x2="2736" y1="304" y2="304" x1="2416" />
            <wire x2="2416" y1="304" y2="1536" x1="2416" />
        </branch>
        <branch name="R_addr_b(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="2368" type="branch" />
            <wire x2="2592" y1="2368" y2="2368" x1="2560" />
            <wire x2="2672" y1="2368" y2="2368" x1="2592" />
        </branch>
        <branch name="R_addr_b(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="2432" type="branch" />
            <wire x2="2608" y1="2432" y2="2432" x1="2560" />
            <wire x2="2672" y1="2432" y2="2432" x1="2608" />
        </branch>
        <branch name="R_addr_a(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="496" type="branch" />
            <wire x2="2688" y1="496" y2="496" x1="2656" />
            <wire x2="2736" y1="496" y2="496" x1="2688" />
        </branch>
        <branch name="R_addr_a(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2688" y="560" type="branch" />
            <wire x2="2688" y1="560" y2="560" x1="2656" />
            <wire x2="2736" y1="560" y2="560" x1="2688" />
        </branch>
        <branch name="E3">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1952" y="2544" type="branch" />
            <wire x2="1952" y1="2384" y2="2416" x1="1952" />
            <wire x2="1952" y1="2416" y2="2528" x1="1952" />
            <wire x2="1952" y1="2528" y2="2544" x1="1952" />
        </branch>
        <branch name="E2">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1824" type="branch" />
            <wire x2="1936" y1="1680" y2="1824" x1="1936" />
        </branch>
        <instance x="1744" y="1760" name="R2" orien="R0">
        </instance>
        <instance x="1744" y="1024" name="R1" orien="R0">
        </instance>
        <instance x="1728" y="400" name="R0" orien="R0">
        </instance>
        <instance x="1760" y="2464" name="R3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="320" y="640" name="R_addr_a(1:0)" orien="R180" />
        <iomarker fontsize="28" x="320" y="880" name="R_addr_b(1:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="1328" name="W_addr(1:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="1840" name="clk" orien="R180" />
        <iomarker fontsize="28" x="3232" y="2048" name="R_data_b(7:0)" orien="R0" />
        <iomarker fontsize="28" x="3264" y="176" name="R_data_a(7:0)" orien="R0" />
        <iomarker fontsize="28" x="304" y="176" name="W_data(7:0)" orien="R180" />
        <branch name="W_addr(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1088" type="branch" />
            <wire x2="848" y1="1088" y2="1088" x1="784" />
        </branch>
        <branch name="W_addr(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1152" type="branch" />
            <wire x2="848" y1="1152" y2="1152" x1="784" />
        </branch>
        <branch name="W_enable">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1280" type="branch" />
            <wire x2="848" y1="1280" y2="1280" x1="800" />
        </branch>
        <instance x="848" y="1408" name="XLXI_57" orien="R0" />
        <branch name="E3">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1280" type="branch" />
            <wire x2="1280" y1="1280" y2="1280" x1="1232" />
            <wire x2="1328" y1="1280" y2="1280" x1="1280" />
        </branch>
        <branch name="E2">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1216" type="branch" />
            <wire x2="1296" y1="1216" y2="1216" x1="1232" />
            <wire x2="1328" y1="1216" y2="1216" x1="1296" />
        </branch>
        <branch name="E1">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1152" type="branch" />
            <wire x2="1296" y1="1152" y2="1152" x1="1232" />
            <wire x2="1344" y1="1152" y2="1152" x1="1296" />
        </branch>
        <branch name="E0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1328" y="1088" type="branch" />
            <wire x2="1280" y1="1088" y2="1088" x1="1232" />
            <wire x2="1328" y1="1088" y2="1088" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="272" y="1600" name="W_enable" orien="R180" />
        <branch name="W_enable">
            <wire x2="480" y1="1600" y2="1600" x1="272" />
        </branch>
        <instance x="2736" y="464" name="XLXI_79" orien="R0">
        </instance>
        <instance x="2672" y="2336" name="XLXI_80" orien="R0">
        </instance>
    </sheet>
</drawing>