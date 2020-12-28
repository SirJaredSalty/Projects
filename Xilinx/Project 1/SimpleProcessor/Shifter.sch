<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Shift(5)" />
        <signal name="Shift(4)" />
        <signal name="Shift(7)" />
        <signal name="Shift(1)" />
        <signal name="Shift(0)" />
        <signal name="Shift(3)" />
        <signal name="Shift(7:0)" />
        <signal name="Shift(2)" />
        <signal name="Shift(6)" />
        <signal name="B(7:0)" />
        <signal name="B(3)" />
        <signal name="B(2)" />
        <signal name="B(1)" />
        <signal name="B(7)" />
        <signal name="B(6)" />
        <signal name="B(4)" />
        <signal name="B(5)" />
        <port polarity="Output" name="Shift(7:0)" />
        <port polarity="Input" name="B(7:0)" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="gnd" name="XLXI_15">
            <blockpin signalname="Shift(7)" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_17">
            <blockpin signalname="B(6)" name="I" />
            <blockpin signalname="Shift(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_18">
            <blockpin signalname="B(5)" name="I" />
            <blockpin signalname="Shift(4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_19">
            <blockpin signalname="B(4)" name="I" />
            <blockpin signalname="Shift(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_20">
            <blockpin signalname="B(3)" name="I" />
            <blockpin signalname="Shift(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_21">
            <blockpin signalname="B(2)" name="I" />
            <blockpin signalname="Shift(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_22">
            <blockpin signalname="B(1)" name="I" />
            <blockpin signalname="Shift(0)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_16">
            <blockpin signalname="B(7)" name="I" />
            <blockpin signalname="Shift(6)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Shift(5)">
            <wire x2="1344" y1="1296" y2="1392" x1="1344" />
            <wire x2="1376" y1="1392" y2="1392" x1="1344" />
            <wire x2="1376" y1="1392" y2="1536" x1="1376" />
        </branch>
        <branch name="Shift(4)">
            <wire x2="1696" y1="1296" y2="1392" x1="1696" />
            <wire x2="1728" y1="1392" y2="1392" x1="1696" />
            <wire x2="1728" y1="1392" y2="1536" x1="1728" />
        </branch>
        <branch name="Shift(7)">
            <wire x2="432" y1="1344" y2="1360" x1="432" />
            <wire x2="656" y1="1344" y2="1344" x1="432" />
            <wire x2="656" y1="1344" y2="1392" x1="656" />
            <wire x2="656" y1="1392" y2="1536" x1="656" />
        </branch>
        <branch name="Shift(1)">
            <wire x2="2672" y1="1296" y2="1392" x1="2672" />
            <wire x2="2704" y1="1392" y2="1392" x1="2672" />
            <wire x2="2704" y1="1392" y2="1536" x1="2704" />
        </branch>
        <branch name="Shift(0)">
            <wire x2="3024" y1="1296" y2="1392" x1="3024" />
            <wire x2="3056" y1="1392" y2="1392" x1="3024" />
            <wire x2="3056" y1="1392" y2="1536" x1="3056" />
        </branch>
        <branch name="Shift(3)">
            <wire x2="1984" y1="1392" y2="1536" x1="1984" />
            <wire x2="2048" y1="1392" y2="1392" x1="1984" />
            <wire x2="2048" y1="1296" y2="1392" x1="2048" />
        </branch>
        <branch name="Shift(7:0)">
            <wire x2="656" y1="1632" y2="1632" x1="304" />
            <wire x2="1024" y1="1632" y2="1632" x1="656" />
            <wire x2="1376" y1="1632" y2="1632" x1="1024" />
            <wire x2="1728" y1="1632" y2="1632" x1="1376" />
            <wire x2="1984" y1="1632" y2="1632" x1="1728" />
            <wire x2="2352" y1="1632" y2="1632" x1="1984" />
            <wire x2="2704" y1="1632" y2="1632" x1="2352" />
            <wire x2="3056" y1="1632" y2="1632" x1="2704" />
            <wire x2="3232" y1="1632" y2="1632" x1="3056" />
        </branch>
        <bustap x2="656" y1="1632" y2="1536" x1="656" />
        <bustap x2="1024" y1="1632" y2="1536" x1="1024" />
        <bustap x2="1376" y1="1632" y2="1536" x1="1376" />
        <bustap x2="1728" y1="1632" y2="1536" x1="1728" />
        <bustap x2="1984" y1="1632" y2="1536" x1="1984" />
        <bustap x2="2352" y1="1632" y2="1536" x1="2352" />
        <bustap x2="2704" y1="1632" y2="1536" x1="2704" />
        <bustap x2="3056" y1="1632" y2="1536" x1="3056" />
        <iomarker fontsize="28" x="304" y="1632" name="Shift(7:0)" orien="R180" />
        <instance x="368" y="1488" name="XLXI_15" orien="R0" />
        <branch name="Shift(2)">
            <wire x2="2304" y1="1296" y2="1392" x1="2304" />
            <wire x2="2352" y1="1392" y2="1392" x1="2304" />
            <wire x2="2352" y1="1392" y2="1536" x1="2352" />
        </branch>
        <branch name="Shift(6)">
            <wire x2="976" y1="1296" y2="1392" x1="976" />
            <wire x2="1024" y1="1392" y2="1392" x1="976" />
            <wire x2="1024" y1="1392" y2="1536" x1="1024" />
        </branch>
        <bustap x2="976" y1="768" y2="864" x1="976" />
        <bustap x2="1344" y1="768" y2="864" x1="1344" />
        <bustap x2="1696" y1="768" y2="864" x1="1696" />
        <bustap x2="2048" y1="768" y2="864" x1="2048" />
        <bustap x2="2304" y1="768" y2="864" x1="2304" />
        <bustap x2="2672" y1="768" y2="864" x1="2672" />
        <bustap x2="3024" y1="768" y2="864" x1="3024" />
        <branch name="B(7:0)">
            <wire x2="976" y1="768" y2="768" x1="576" />
            <wire x2="1344" y1="768" y2="768" x1="976" />
            <wire x2="1696" y1="768" y2="768" x1="1344" />
            <wire x2="2048" y1="768" y2="768" x1="1696" />
            <wire x2="2304" y1="768" y2="768" x1="2048" />
            <wire x2="2672" y1="768" y2="768" x1="2304" />
            <wire x2="3024" y1="768" y2="768" x1="2672" />
            <wire x2="3216" y1="768" y2="768" x1="3024" />
        </branch>
        <branch name="B(3)">
            <wire x2="2304" y1="864" y2="1072" x1="2304" />
        </branch>
        <branch name="B(2)">
            <wire x2="2672" y1="864" y2="1072" x1="2672" />
        </branch>
        <branch name="B(1)">
            <wire x2="3024" y1="864" y2="1072" x1="3024" />
        </branch>
        <branch name="B(7)">
            <wire x2="976" y1="864" y2="880" x1="976" />
            <wire x2="976" y1="880" y2="1072" x1="976" />
        </branch>
        <branch name="B(6)">
            <wire x2="1344" y1="864" y2="1072" x1="1344" />
        </branch>
        <branch name="B(4)">
            <wire x2="2048" y1="864" y2="1072" x1="2048" />
        </branch>
        <branch name="B(5)">
            <wire x2="1696" y1="864" y2="1072" x1="1696" />
        </branch>
        <instance x="1312" y="1072" name="XLXI_17" orien="R90" />
        <instance x="1664" y="1072" name="XLXI_18" orien="R90" />
        <instance x="2016" y="1072" name="XLXI_19" orien="R90" />
        <instance x="2272" y="1072" name="XLXI_20" orien="R90" />
        <instance x="2640" y="1072" name="XLXI_21" orien="R90" />
        <instance x="2992" y="1072" name="XLXI_22" orien="R90" />
        <instance x="944" y="1072" name="XLXI_16" orien="R90" />
        <iomarker fontsize="28" x="576" y="768" name="B(7:0)" orien="R180" />
    </sheet>
</drawing>