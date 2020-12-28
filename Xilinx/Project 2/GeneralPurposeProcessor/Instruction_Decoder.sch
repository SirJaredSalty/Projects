<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="capture_C" />
        <signal name="capture_Z" />
        <signal name="capture_N" />
        <signal name="one" />
        <signal name="zero" />
        <signal name="OPCODE(3:0)" />
        <signal name="OPCODE(1)" />
        <signal name="OPCODE(0)" />
        <signal name="OPCODE(3)" />
        <signal name="OPCODE(2)" />
        <signal name="XLXN_4" />
        <port polarity="Output" name="capture_C" />
        <port polarity="Output" name="capture_Z" />
        <port polarity="Output" name="capture_N" />
        <port polarity="Input" name="OPCODE(3:0)" />
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="m8_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-544" y2="-544" x1="0" />
            <line x2="96" y1="-608" y2="-608" x1="0" />
            <line x2="96" y1="-672" y2="-672" x1="0" />
            <line x2="96" y1="-736" y2="-736" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="160" />
            <line x2="160" y1="-268" y2="-160" x1="160" />
            <line x2="96" y1="-224" y2="-224" x1="128" />
            <line x2="128" y1="-264" y2="-224" x1="128" />
            <line x2="96" y1="-96" y2="-96" x1="192" />
            <line x2="192" y1="-276" y2="-96" x1="192" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-280" y2="-32" x1="224" />
            <line x2="256" y1="-512" y2="-512" x1="320" />
            <line x2="96" y1="-768" y2="-256" x1="96" />
            <line x2="96" y1="-704" y2="-768" x1="256" />
            <line x2="256" y1="-288" y2="-704" x1="256" />
            <line x2="256" y1="-256" y2="-288" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="96" y1="-480" y2="-480" x1="0" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_27">
            <blockpin signalname="one" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_28">
            <blockpin signalname="zero" name="G" />
        </block>
        <block symbolname="m8_1e" name="XLXI_29">
            <blockpin signalname="zero" name="D0" />
            <blockpin signalname="zero" name="D1" />
            <blockpin signalname="zero" name="D2" />
            <blockpin signalname="zero" name="D3" />
            <blockpin signalname="one" name="D4" />
            <blockpin signalname="one" name="D5" />
            <blockpin signalname="one" name="D6" />
            <blockpin signalname="one" name="D7" />
            <blockpin signalname="one" name="E" />
            <blockpin signalname="OPCODE(0)" name="S0" />
            <blockpin signalname="OPCODE(1)" name="S1" />
            <blockpin signalname="XLXN_4" name="S2" />
            <blockpin signalname="capture_C" name="O" />
        </block>
        <block symbolname="m8_1e" name="XLXI_30">
            <blockpin signalname="zero" name="D0" />
            <blockpin signalname="one" name="D1" />
            <blockpin signalname="one" name="D2" />
            <blockpin signalname="one" name="D3" />
            <blockpin signalname="one" name="D4" />
            <blockpin signalname="one" name="D5" />
            <blockpin signalname="one" name="D6" />
            <blockpin signalname="one" name="D7" />
            <blockpin signalname="one" name="E" />
            <blockpin signalname="OPCODE(0)" name="S0" />
            <blockpin signalname="OPCODE(1)" name="S1" />
            <blockpin signalname="XLXN_4" name="S2" />
            <blockpin signalname="capture_Z" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_31">
            <blockpin signalname="capture_Z" name="I" />
            <blockpin signalname="capture_N" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_32">
            <blockpin signalname="OPCODE(3)" name="I0" />
            <blockpin signalname="OPCODE(2)" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="capture_C">
            <wire x2="3040" y1="432" y2="432" x1="1808" />
            <wire x2="3040" y1="432" y2="640" x1="3040" />
            <wire x2="3200" y1="640" y2="640" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3200" y="640" name="capture_C" orien="R0" />
        <branch name="capture_Z">
            <wire x2="2336" y1="1392" y2="1392" x1="1776" />
            <wire x2="3040" y1="1392" y2="1392" x1="2336" />
            <wire x2="2336" y1="1392" y2="1616" x1="2336" />
            <wire x2="2704" y1="1616" y2="1616" x1="2336" />
            <wire x2="3200" y1="1120" y2="1120" x1="3040" />
            <wire x2="3040" y1="1120" y2="1392" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1120" name="capture_Z" orien="R0" />
        <branch name="capture_N">
            <wire x2="3040" y1="1616" y2="1616" x1="2928" />
            <wire x2="3200" y1="1600" y2="1600" x1="3040" />
            <wire x2="3040" y1="1600" y2="1616" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1600" name="capture_N" orien="R0" />
        <branch name="one">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="912" type="branch" />
            <wire x2="384" y1="912" y2="912" x1="208" />
            <wire x2="1072" y1="912" y2="912" x1="384" />
            <wire x2="1104" y1="912" y2="912" x1="1072" />
            <wire x2="1488" y1="912" y2="912" x1="1104" />
            <wire x2="1072" y1="912" y2="1200" x1="1072" />
            <wire x2="1072" y1="1200" y2="1872" x1="1072" />
            <wire x2="1456" y1="1872" y2="1872" x1="1072" />
            <wire x2="1264" y1="1200" y2="1200" x1="1072" />
            <wire x2="1264" y1="1200" y2="1232" x1="1264" />
            <wire x2="1456" y1="1232" y2="1232" x1="1264" />
            <wire x2="1264" y1="1232" y2="1296" x1="1264" />
            <wire x2="1456" y1="1296" y2="1296" x1="1264" />
            <wire x2="1264" y1="1296" y2="1360" x1="1264" />
            <wire x2="1456" y1="1360" y2="1360" x1="1264" />
            <wire x2="1264" y1="1360" y2="1424" x1="1264" />
            <wire x2="1456" y1="1424" y2="1424" x1="1264" />
            <wire x2="1264" y1="1424" y2="1488" x1="1264" />
            <wire x2="1456" y1="1488" y2="1488" x1="1264" />
            <wire x2="1264" y1="1488" y2="1552" x1="1264" />
            <wire x2="1456" y1="1552" y2="1552" x1="1264" />
            <wire x2="1264" y1="1552" y2="1568" x1="1264" />
            <wire x2="1280" y1="1568" y2="1568" x1="1264" />
            <wire x2="1280" y1="1568" y2="1616" x1="1280" />
            <wire x2="1456" y1="1616" y2="1616" x1="1280" />
            <wire x2="1488" y1="464" y2="464" x1="1104" />
            <wire x2="1104" y1="464" y2="576" x1="1104" />
            <wire x2="1104" y1="576" y2="912" x1="1104" />
            <wire x2="1296" y1="576" y2="576" x1="1104" />
            <wire x2="1296" y1="576" y2="592" x1="1296" />
            <wire x2="1488" y1="592" y2="592" x1="1296" />
            <wire x2="1296" y1="592" y2="656" x1="1296" />
            <wire x2="1488" y1="656" y2="656" x1="1296" />
            <wire x2="1296" y1="528" y2="576" x1="1296" />
            <wire x2="1488" y1="528" y2="528" x1="1296" />
        </branch>
        <instance x="144" y="912" name="XLXI_27" orien="R0" />
        <branch name="zero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="1024" type="branch" />
            <wire x2="384" y1="1024" y2="1024" x1="208" />
            <wire x2="928" y1="1024" y2="1024" x1="384" />
            <wire x2="928" y1="1024" y2="1168" x1="928" />
            <wire x2="1456" y1="1168" y2="1168" x1="928" />
            <wire x2="1488" y1="208" y2="208" x1="928" />
            <wire x2="928" y1="208" y2="272" x1="928" />
            <wire x2="928" y1="272" y2="1024" x1="928" />
            <wire x2="1392" y1="272" y2="272" x1="928" />
            <wire x2="1488" y1="272" y2="272" x1="1392" />
            <wire x2="1392" y1="272" y2="336" x1="1392" />
            <wire x2="1488" y1="336" y2="336" x1="1392" />
            <wire x2="1392" y1="336" y2="400" x1="1392" />
            <wire x2="1488" y1="400" y2="400" x1="1392" />
        </branch>
        <instance x="144" y="1152" name="XLXI_28" orien="R0" />
        <text style="fontsize:36;fontname:Arial" x="448" y="620">3-bit Constants</text>
        <branch name="OPCODE(3:0)">
            <wire x2="592" y1="1696" y2="1696" x1="512" />
            <wire x2="656" y1="1696" y2="1696" x1="592" />
            <wire x2="720" y1="1696" y2="1696" x1="656" />
            <wire x2="848" y1="1696" y2="1696" x1="720" />
        </branch>
        <iomarker fontsize="28" x="512" y="1696" name="OPCODE(3:0)" orien="R180" />
        <instance x="1488" y="944" name="XLXI_29" orien="R0" />
        <instance x="1456" y="1904" name="XLXI_30" orien="R0" />
        <bustap x2="592" y1="1696" y2="1600" x1="592" />
        <bustap x2="656" y1="1696" y2="1600" x1="656" />
        <branch name="OPCODE(1)">
            <wire x2="576" y1="784" y2="1536" x1="576" />
            <wire x2="656" y1="1536" y2="1536" x1="576" />
            <wire x2="688" y1="1536" y2="1536" x1="656" />
            <wire x2="688" y1="1536" y2="1744" x1="688" />
            <wire x2="1456" y1="1744" y2="1744" x1="688" />
            <wire x2="656" y1="1536" y2="1600" x1="656" />
            <wire x2="1488" y1="784" y2="784" x1="576" />
            <wire x2="688" y1="1520" y2="1520" x1="656" />
            <wire x2="688" y1="1520" y2="1536" x1="688" />
            <wire x2="656" y1="1520" y2="1536" x1="656" />
        </branch>
        <branch name="OPCODE(0)">
            <wire x2="592" y1="1552" y2="1600" x1="592" />
            <wire x2="784" y1="1552" y2="1552" x1="592" />
            <wire x2="784" y1="1552" y2="1680" x1="784" />
            <wire x2="944" y1="1680" y2="1680" x1="784" />
            <wire x2="1456" y1="1680" y2="1680" x1="944" />
            <wire x2="1488" y1="720" y2="720" x1="944" />
            <wire x2="944" y1="720" y2="1680" x1="944" />
        </branch>
        <instance x="2704" y="1648" name="XLXI_31" orien="R0" />
        <instance x="560" y="2000" name="XLXI_32" orien="R0" />
        <branch name="OPCODE(3)">
            <wire x2="560" y1="1936" y2="1936" x1="432" />
        </branch>
        <branch name="OPCODE(2)">
            <wire x2="560" y1="1872" y2="1872" x1="448" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1056" y1="1904" y2="1904" x1="816" />
            <wire x2="1488" y1="848" y2="848" x1="1056" />
            <wire x2="1056" y1="848" y2="1808" x1="1056" />
            <wire x2="1056" y1="1808" y2="1904" x1="1056" />
            <wire x2="1456" y1="1808" y2="1808" x1="1056" />
        </branch>
    </sheet>
</drawing>