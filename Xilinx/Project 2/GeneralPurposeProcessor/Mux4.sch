<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(0)" />
        <signal name="B(0)" />
        <signal name="C(0)" />
        <signal name="D(0)" />
        <signal name="A(1)" />
        <signal name="B(1)" />
        <signal name="C(1)" />
        <signal name="D(1)" />
        <signal name="A(2)" />
        <signal name="B(2)" />
        <signal name="C(2)" />
        <signal name="D(2)" />
        <signal name="MuxOut(2)" />
        <signal name="OPCODE0" />
        <signal name="OPCODE1" />
        <signal name="XLXN_36" />
        <signal name="XLXN_35" />
        <signal name="XLXN_37" />
        <signal name="XLXN_41" />
        <signal name="MuxOut(6)" />
        <signal name="D(6)" />
        <signal name="C(6)" />
        <signal name="B(6)" />
        <signal name="A(6)" />
        <signal name="MuxOut(0)" />
        <signal name="MuxOut(3)" />
        <signal name="D(3)" />
        <signal name="C(3)" />
        <signal name="B(3)" />
        <signal name="A(3)" />
        <signal name="XLXN_40" />
        <signal name="A(7)" />
        <signal name="B(7)" />
        <signal name="C(7)" />
        <signal name="D(7)" />
        <signal name="MuxOut(7)" />
        <signal name="XLXN_42" />
        <signal name="D(4)" />
        <signal name="C(4)" />
        <signal name="B(4)" />
        <signal name="A(4)" />
        <signal name="XLXN_39" />
        <signal name="MuxOut(4)" />
        <signal name="MuxOut(1)" />
        <signal name="A(5)" />
        <signal name="B(5)" />
        <signal name="C(5)" />
        <signal name="D(5)" />
        <signal name="MuxOut(5)" />
        <signal name="XLXN_331" />
        <signal name="MuxOut(7:0)" />
        <signal name="B(7:0)" />
        <signal name="A(7:0)" />
        <signal name="C(7:0)" />
        <signal name="D(7:0)" />
        <port polarity="Input" name="OPCODE0" />
        <port polarity="Input" name="OPCODE1" />
        <port polarity="Output" name="MuxOut(7:0)" />
        <port polarity="Input" name="B(7:0)" />
        <port polarity="Input" name="A(7:0)" />
        <port polarity="Input" name="C(7:0)" />
        <port polarity="Input" name="D(7:0)" />
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
        <block symbolname="m4_1e" name="XLXI_43">
            <blockpin signalname="A(0)" name="D0" />
            <blockpin signalname="B(0)" name="D1" />
            <blockpin signalname="C(0)" name="D2" />
            <blockpin signalname="D(0)" name="D3" />
            <blockpin signalname="XLXN_35" name="E" />
            <blockpin signalname="OPCODE0" name="S0" />
            <blockpin signalname="OPCODE1" name="S1" />
            <blockpin signalname="MuxOut(0)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_47">
            <blockpin signalname="A(2)" name="D0" />
            <blockpin signalname="B(2)" name="D1" />
            <blockpin signalname="C(2)" name="D2" />
            <blockpin signalname="D(2)" name="D3" />
            <blockpin signalname="XLXN_37" name="E" />
            <blockpin signalname="OPCODE0" name="S0" />
            <blockpin signalname="OPCODE1" name="S1" />
            <blockpin signalname="MuxOut(2)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_51">
            <blockpin signalname="A(1)" name="D0" />
            <blockpin signalname="B(1)" name="D1" />
            <blockpin signalname="C(1)" name="D2" />
            <blockpin signalname="D(1)" name="D3" />
            <blockpin signalname="XLXN_36" name="E" />
            <blockpin signalname="OPCODE0" name="S0" />
            <blockpin signalname="OPCODE1" name="S1" />
            <blockpin signalname="MuxOut(1)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_11">
            <blockpin signalname="XLXN_36" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_12">
            <blockpin signalname="XLXN_35" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_10">
            <blockpin signalname="XLXN_37" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_15">
            <blockpin signalname="XLXN_331" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_17">
            <blockpin signalname="XLXN_41" name="P" />
        </block>
        <block symbolname="m4_1e" name="XLXI_49">
            <blockpin signalname="A(6)" name="D0" />
            <blockpin signalname="B(6)" name="D1" />
            <blockpin signalname="C(6)" name="D2" />
            <blockpin signalname="D(6)" name="D3" />
            <blockpin signalname="XLXN_41" name="E" />
            <blockpin signalname="OPCODE0" name="S0" />
            <blockpin signalname="OPCODE1" name="S1" />
            <blockpin signalname="MuxOut(6)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_44">
            <blockpin signalname="A(3)" name="D0" />
            <blockpin signalname="B(3)" name="D1" />
            <blockpin signalname="C(3)" name="D2" />
            <blockpin signalname="D(3)" name="D3" />
            <blockpin signalname="XLXN_40" name="E" />
            <blockpin signalname="OPCODE0" name="S0" />
            <blockpin signalname="OPCODE1" name="S1" />
            <blockpin signalname="MuxOut(3)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_13">
            <blockpin signalname="XLXN_40" name="P" />
        </block>
        <block symbolname="m4_1e" name="XLXI_50">
            <blockpin signalname="A(7)" name="D0" />
            <blockpin signalname="B(7)" name="D1" />
            <blockpin signalname="C(7)" name="D2" />
            <blockpin signalname="D(7)" name="D3" />
            <blockpin signalname="XLXN_42" name="E" />
            <blockpin signalname="OPCODE0" name="S0" />
            <blockpin signalname="OPCODE1" name="S1" />
            <blockpin signalname="MuxOut(7)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_16">
            <blockpin signalname="XLXN_42" name="P" />
        </block>
        <block symbolname="m4_1e" name="XLXI_45">
            <blockpin signalname="A(4)" name="D0" />
            <blockpin signalname="B(4)" name="D1" />
            <blockpin signalname="C(4)" name="D2" />
            <blockpin signalname="D(4)" name="D3" />
            <blockpin signalname="XLXN_39" name="E" />
            <blockpin signalname="OPCODE0" name="S0" />
            <blockpin signalname="OPCODE1" name="S1" />
            <blockpin signalname="MuxOut(4)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_14">
            <blockpin signalname="XLXN_39" name="P" />
        </block>
        <block symbolname="m4_1e" name="XLXI_48">
            <blockpin signalname="A(5)" name="D0" />
            <blockpin signalname="B(5)" name="D1" />
            <blockpin signalname="C(5)" name="D2" />
            <blockpin signalname="D(5)" name="D3" />
            <blockpin signalname="XLXN_331" name="E" />
            <blockpin signalname="OPCODE0" name="S0" />
            <blockpin signalname="OPCODE1" name="S1" />
            <blockpin signalname="MuxOut(5)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A(0)">
            <wire x2="1280" y1="192" y2="192" x1="1136" />
        </branch>
        <branch name="B(0)">
            <wire x2="1280" y1="256" y2="256" x1="1152" />
        </branch>
        <branch name="C(0)">
            <wire x2="1280" y1="320" y2="320" x1="1152" />
        </branch>
        <branch name="D(0)">
            <wire x2="1280" y1="384" y2="384" x1="1152" />
        </branch>
        <branch name="A(1)">
            <wire x2="1280" y1="1008" y2="1008" x1="1104" />
        </branch>
        <branch name="B(1)">
            <wire x2="1280" y1="1072" y2="1072" x1="1104" />
        </branch>
        <branch name="C(1)">
            <wire x2="1280" y1="1136" y2="1136" x1="1120" />
        </branch>
        <branch name="D(1)">
            <wire x2="1280" y1="1200" y2="1200" x1="1120" />
        </branch>
        <branch name="A(2)">
            <wire x2="1280" y1="1840" y2="1840" x1="1088" />
        </branch>
        <branch name="B(2)">
            <wire x2="1280" y1="1904" y2="1904" x1="1088" />
        </branch>
        <branch name="C(2)">
            <wire x2="1280" y1="1968" y2="1968" x1="1104" />
        </branch>
        <branch name="D(2)">
            <wire x2="1280" y1="2032" y2="2032" x1="1104" />
        </branch>
        <branch name="MuxOut(2)">
            <wire x2="1616" y1="1936" y2="1936" x1="1600" />
            <wire x2="1616" y1="1936" y2="2064" x1="1616" />
            <wire x2="1616" y1="2064" y2="2064" x1="1600" />
        </branch>
        <instance x="1280" y="608" name="XLXI_43" orien="R0" />
        <instance x="1280" y="2256" name="XLXI_47" orien="R0" />
        <instance x="1280" y="1424" name="XLXI_51" orien="R0" />
        <branch name="OPCODE0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="448" type="branch" />
            <wire x2="1216" y1="448" y2="448" x1="1136" />
            <wire x2="1280" y1="448" y2="448" x1="1216" />
        </branch>
        <branch name="OPCODE1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="512" type="branch" />
            <wire x2="1200" y1="512" y2="512" x1="1136" />
            <wire x2="1280" y1="512" y2="512" x1="1200" />
        </branch>
        <branch name="OPCODE0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="1264" type="branch" />
            <wire x2="1216" y1="1264" y2="1264" x1="1120" />
            <wire x2="1280" y1="1264" y2="1264" x1="1216" />
        </branch>
        <branch name="OPCODE1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1328" type="branch" />
            <wire x2="1232" y1="1328" y2="1328" x1="1120" />
            <wire x2="1280" y1="1328" y2="1328" x1="1232" />
        </branch>
        <instance x="976" y="1392" name="XLXI_11" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="1280" y1="1392" y2="1392" x1="1040" />
        </branch>
        <instance x="960" y="576" name="XLXI_12" orien="R0" />
        <branch name="XLXN_35">
            <wire x2="1280" y1="576" y2="576" x1="1024" />
        </branch>
        <branch name="OPCODE0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="2096" type="branch" />
            <wire x2="1200" y1="2096" y2="2096" x1="1136" />
            <wire x2="1280" y1="2096" y2="2096" x1="1200" />
        </branch>
        <branch name="OPCODE1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="2160" type="branch" />
            <wire x2="1200" y1="2160" y2="2160" x1="1136" />
            <wire x2="1280" y1="2160" y2="2160" x1="1200" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="1280" y1="2224" y2="2224" x1="1040" />
        </branch>
        <instance x="976" y="2224" name="XLXI_10" orien="R0" />
        <instance x="2528" y="560" name="XLXI_17" orien="R0" />
        <branch name="XLXN_41">
            <wire x2="2816" y1="560" y2="560" x1="2592" />
        </branch>
        <branch name="OPCODE0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="432" type="branch" />
            <wire x2="2736" y1="432" y2="432" x1="2704" />
            <wire x2="2816" y1="432" y2="432" x1="2736" />
        </branch>
        <instance x="2816" y="592" name="XLXI_49" orien="R0" />
        <branch name="MuxOut(6)">
            <wire x2="3152" y1="272" y2="272" x1="3136" />
            <wire x2="3152" y1="272" y2="400" x1="3152" />
            <wire x2="3152" y1="400" y2="400" x1="3136" />
        </branch>
        <branch name="D(6)">
            <wire x2="2816" y1="368" y2="368" x1="2704" />
        </branch>
        <branch name="C(6)">
            <wire x2="2816" y1="304" y2="304" x1="2704" />
        </branch>
        <branch name="B(6)">
            <wire x2="2816" y1="240" y2="240" x1="2704" />
        </branch>
        <branch name="A(6)">
            <wire x2="2816" y1="176" y2="176" x1="2688" />
        </branch>
        <branch name="MuxOut(0)">
            <wire x2="1760" y1="288" y2="288" x1="1600" />
            <wire x2="1760" y1="288" y2="416" x1="1760" />
            <wire x2="1760" y1="416" y2="416" x1="1744" />
        </branch>
        <branch name="OPCODE1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="512" type="branch" />
            <wire x2="1968" y1="512" y2="512" x1="1904" />
            <wire x2="2032" y1="512" y2="512" x1="1968" />
        </branch>
        <branch name="OPCODE0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="448" type="branch" />
            <wire x2="1968" y1="448" y2="448" x1="1904" />
            <wire x2="2032" y1="448" y2="448" x1="1968" />
        </branch>
        <instance x="2032" y="608" name="XLXI_44" orien="R0" />
        <branch name="MuxOut(3)">
            <wire x2="2368" y1="288" y2="288" x1="2352" />
            <wire x2="2368" y1="288" y2="448" x1="2368" />
            <wire x2="2368" y1="448" y2="448" x1="2352" />
        </branch>
        <branch name="D(3)">
            <wire x2="2032" y1="384" y2="384" x1="1920" />
        </branch>
        <branch name="C(3)">
            <wire x2="2032" y1="320" y2="320" x1="1904" />
        </branch>
        <branch name="B(3)">
            <wire x2="2032" y1="256" y2="256" x1="1904" />
        </branch>
        <branch name="A(3)">
            <wire x2="2032" y1="192" y2="192" x1="1904" />
        </branch>
        <instance x="1744" y="576" name="XLXI_13" orien="R0" />
        <branch name="XLXN_40">
            <wire x2="2032" y1="576" y2="576" x1="1808" />
        </branch>
        <branch name="A(7)">
            <wire x2="2800" y1="1008" y2="1008" x1="2688" />
        </branch>
        <branch name="B(7)">
            <wire x2="2800" y1="1072" y2="1072" x1="2688" />
        </branch>
        <branch name="C(7)">
            <wire x2="2800" y1="1136" y2="1136" x1="2688" />
        </branch>
        <branch name="D(7)">
            <wire x2="2800" y1="1200" y2="1200" x1="2704" />
        </branch>
        <branch name="MuxOut(7)">
            <wire x2="3136" y1="1104" y2="1104" x1="3120" />
            <wire x2="3136" y1="1104" y2="1232" x1="3136" />
            <wire x2="3136" y1="1232" y2="1232" x1="3120" />
        </branch>
        <instance x="2800" y="1424" name="XLXI_50" orien="R0" />
        <branch name="OPCODE0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="1264" type="branch" />
            <wire x2="2768" y1="1264" y2="1264" x1="2688" />
            <wire x2="2800" y1="1264" y2="1264" x1="2768" />
        </branch>
        <instance x="2528" y="1392" name="XLXI_16" orien="R0" />
        <branch name="XLXN_42">
            <wire x2="2800" y1="1392" y2="1392" x1="2592" />
        </branch>
        <branch name="D(4)">
            <wire x2="2048" y1="1232" y2="1232" x1="1920" />
        </branch>
        <branch name="C(4)">
            <wire x2="2048" y1="1168" y2="1168" x1="1904" />
        </branch>
        <branch name="B(4)">
            <wire x2="2048" y1="1104" y2="1104" x1="1904" />
        </branch>
        <branch name="A(4)">
            <wire x2="2048" y1="1040" y2="1040" x1="1904" />
        </branch>
        <instance x="2048" y="1456" name="XLXI_45" orien="R0" />
        <instance x="1744" y="1424" name="XLXI_14" orien="R0" />
        <branch name="XLXN_39">
            <wire x2="2048" y1="1424" y2="1424" x1="1808" />
        </branch>
        <branch name="OPCODE1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1360" type="branch" />
            <wire x2="2000" y1="1360" y2="1360" x1="1936" />
            <wire x2="2048" y1="1360" y2="1360" x1="2000" />
        </branch>
        <branch name="OPCODE0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="1296" type="branch" />
            <wire x2="2000" y1="1296" y2="1296" x1="1920" />
            <wire x2="2048" y1="1296" y2="1296" x1="2000" />
        </branch>
        <branch name="MuxOut(4)">
            <wire x2="2464" y1="1136" y2="1136" x1="2368" />
            <wire x2="2464" y1="1136" y2="1264" x1="2464" />
            <wire x2="2464" y1="1264" y2="1264" x1="2416" />
        </branch>
        <branch name="MuxOut(1)">
            <wire x2="1728" y1="1104" y2="1104" x1="1600" />
            <wire x2="1728" y1="1104" y2="1264" x1="1728" />
            <wire x2="1728" y1="1264" y2="1264" x1="1664" />
        </branch>
        <branch name="A(5)">
            <wire x2="2016" y1="1872" y2="1872" x1="1888" />
        </branch>
        <branch name="B(5)">
            <wire x2="2016" y1="1936" y2="1936" x1="1904" />
        </branch>
        <branch name="C(5)">
            <wire x2="2016" y1="2000" y2="2000" x1="1904" />
        </branch>
        <branch name="D(5)">
            <wire x2="2016" y1="2064" y2="2064" x1="1888" />
        </branch>
        <branch name="MuxOut(5)">
            <wire x2="2352" y1="1968" y2="1968" x1="2336" />
            <wire x2="2352" y1="1968" y2="2096" x1="2352" />
            <wire x2="2352" y1="2096" y2="2096" x1="2336" />
        </branch>
        <instance x="2016" y="2288" name="XLXI_48" orien="R0" />
        <branch name="OPCODE0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="2128" type="branch" />
            <wire x2="1968" y1="2128" y2="2128" x1="1888" />
            <wire x2="2016" y1="2128" y2="2128" x1="1968" />
        </branch>
        <branch name="OPCODE1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="2192" type="branch" />
            <wire x2="1968" y1="2192" y2="2192" x1="1888" />
            <wire x2="2016" y1="2192" y2="2192" x1="1968" />
        </branch>
        <branch name="MuxOut(7:0)">
            <wire x2="3152" y1="2112" y2="2112" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="3152" y="2112" name="MuxOut(7:0)" orien="R0" />
        <instance x="1696" y="2256" name="XLXI_15" orien="R0" />
        <branch name="XLXN_331">
            <wire x2="2016" y1="2256" y2="2256" x1="1760" />
        </branch>
        <branch name="B(7:0)">
            <wire x2="608" y1="352" y2="352" x1="192" />
        </branch>
        <branch name="A(7:0)">
            <wire x2="624" y1="208" y2="208" x1="208" />
        </branch>
        <branch name="C(7:0)">
            <wire x2="592" y1="528" y2="528" x1="192" />
        </branch>
        <branch name="D(7:0)">
            <wire x2="592" y1="720" y2="720" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="352" name="B(7:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="208" name="A(7:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="528" name="C(7:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="720" name="D(7:0)" orien="R180" />
        <branch name="OPCODE1">
            <wire x2="656" y1="1296" y2="1296" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="1296" name="OPCODE1" orien="R180" />
        <branch name="OPCODE1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2736" y="1328" type="branch" />
            <wire x2="2736" y1="1328" y2="1328" x1="2704" />
            <wire x2="2800" y1="1328" y2="1328" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="224" y="1024" name="OPCODE0" orien="R180" />
        <branch name="OPCODE0">
            <wire x2="672" y1="1024" y2="1024" x1="224" />
        </branch>
        <branch name="OPCODE1">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="496" type="branch" />
            <wire x2="2752" y1="496" y2="496" x1="2720" />
            <wire x2="2816" y1="496" y2="496" x1="2752" />
        </branch>
    </sheet>
</drawing>