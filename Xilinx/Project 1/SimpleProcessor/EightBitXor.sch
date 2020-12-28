<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(7:0)" />
        <signal name="B(7:0)" />
        <signal name="XorOut(7:0)" />
        <signal name="A(0)" />
        <signal name="B(0)" />
        <signal name="A(1)" />
        <signal name="B(1)" />
        <signal name="A(2)" />
        <signal name="B(2)" />
        <signal name="A(3)" />
        <signal name="B(3)" />
        <signal name="A(4)" />
        <signal name="B(4)" />
        <signal name="A(5)" />
        <signal name="B(5)" />
        <signal name="A(6)" />
        <signal name="B(6)" />
        <signal name="A(7)" />
        <signal name="B(7)" />
        <signal name="XorOut(7)" />
        <signal name="XorOut(6)" />
        <signal name="XorOut(5)" />
        <signal name="XorOut(4)" />
        <signal name="XorOut(3)" />
        <signal name="XorOut(2)" />
        <signal name="XorOut(1)" />
        <signal name="XorOut(0)" />
        <port polarity="Input" name="A(7:0)" />
        <port polarity="Input" name="B(7:0)" />
        <port polarity="Output" name="XorOut(7:0)" />
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="B(0)" name="I0" />
            <blockpin signalname="A(0)" name="I1" />
            <blockpin signalname="XorOut(0)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_3">
            <blockpin signalname="B(1)" name="I0" />
            <blockpin signalname="A(1)" name="I1" />
            <blockpin signalname="XorOut(1)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_4">
            <blockpin signalname="B(2)" name="I0" />
            <blockpin signalname="A(2)" name="I1" />
            <blockpin signalname="XorOut(2)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="B(3)" name="I0" />
            <blockpin signalname="A(3)" name="I1" />
            <blockpin signalname="XorOut(3)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_6">
            <blockpin signalname="B(4)" name="I0" />
            <blockpin signalname="A(4)" name="I1" />
            <blockpin signalname="XorOut(4)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_7">
            <blockpin signalname="B(5)" name="I0" />
            <blockpin signalname="A(5)" name="I1" />
            <blockpin signalname="XorOut(5)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_8">
            <blockpin signalname="B(6)" name="I0" />
            <blockpin signalname="A(6)" name="I1" />
            <blockpin signalname="XorOut(6)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_9">
            <blockpin signalname="B(7)" name="I0" />
            <blockpin signalname="A(7)" name="I1" />
            <blockpin signalname="XorOut(7)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1488" y="384" name="XLXI_2" orien="R0" />
        <instance x="1488" y="640" name="XLXI_3" orien="R0" />
        <instance x="1488" y="912" name="XLXI_4" orien="R0" />
        <instance x="1488" y="1200" name="XLXI_5" orien="R0" />
        <instance x="1488" y="1504" name="XLXI_6" orien="R0" />
        <instance x="1488" y="1792" name="XLXI_7" orien="R0" />
        <instance x="1488" y="2064" name="XLXI_8" orien="R0" />
        <instance x="1488" y="2368" name="XLXI_9" orien="R0" />
        <branch name="A(7:0)">
            <wire x2="688" y1="336" y2="336" x1="336" />
        </branch>
        <branch name="B(7:0)">
            <wire x2="672" y1="672" y2="672" x1="352" />
        </branch>
        <branch name="XorOut(7:0)">
            <wire x2="3152" y1="672" y2="672" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="336" y="336" name="A(7:0)" orien="R180" />
        <iomarker fontsize="28" x="352" y="672" name="B(7:0)" orien="R180" />
        <iomarker fontsize="28" x="3152" y="672" name="XorOut(7:0)" orien="R0" />
        <branch name="A(0)">
            <wire x2="1488" y1="256" y2="256" x1="1328" />
        </branch>
        <branch name="B(0)">
            <wire x2="1488" y1="320" y2="320" x1="1328" />
        </branch>
        <branch name="A(1)">
            <wire x2="1488" y1="512" y2="512" x1="1344" />
        </branch>
        <branch name="B(1)">
            <wire x2="1488" y1="576" y2="576" x1="1344" />
        </branch>
        <branch name="A(2)">
            <wire x2="1488" y1="784" y2="784" x1="1344" />
        </branch>
        <branch name="B(2)">
            <wire x2="1488" y1="848" y2="848" x1="1360" />
        </branch>
        <branch name="A(3)">
            <wire x2="1488" y1="1072" y2="1072" x1="1360" />
        </branch>
        <branch name="B(3)">
            <wire x2="1488" y1="1136" y2="1136" x1="1360" />
        </branch>
        <branch name="A(4)">
            <wire x2="1488" y1="1376" y2="1376" x1="1392" />
        </branch>
        <branch name="B(4)">
            <wire x2="1488" y1="1440" y2="1440" x1="1392" />
        </branch>
        <branch name="A(5)">
            <wire x2="1488" y1="1664" y2="1664" x1="1376" />
        </branch>
        <branch name="B(5)">
            <wire x2="1488" y1="1728" y2="1728" x1="1392" />
        </branch>
        <branch name="A(6)">
            <wire x2="1488" y1="1936" y2="1936" x1="1392" />
        </branch>
        <branch name="B(6)">
            <wire x2="1488" y1="2000" y2="2000" x1="1392" />
        </branch>
        <branch name="A(7)">
            <wire x2="1488" y1="2240" y2="2240" x1="1392" />
        </branch>
        <branch name="B(7)">
            <wire x2="1488" y1="2304" y2="2304" x1="1392" />
        </branch>
        <branch name="XorOut(7)">
            <wire x2="1888" y1="2272" y2="2272" x1="1744" />
        </branch>
        <branch name="XorOut(6)">
            <wire x2="1856" y1="1968" y2="1968" x1="1744" />
        </branch>
        <branch name="XorOut(5)">
            <wire x2="1856" y1="1696" y2="1696" x1="1744" />
        </branch>
        <branch name="XorOut(4)">
            <wire x2="1872" y1="1408" y2="1408" x1="1744" />
        </branch>
        <branch name="XorOut(3)">
            <wire x2="1856" y1="1104" y2="1104" x1="1744" />
        </branch>
        <branch name="XorOut(2)">
            <wire x2="1872" y1="816" y2="816" x1="1744" />
        </branch>
        <branch name="XorOut(1)">
            <wire x2="1872" y1="544" y2="544" x1="1744" />
        </branch>
        <branch name="XorOut(0)">
            <wire x2="1856" y1="288" y2="288" x1="1744" />
        </branch>
    </sheet>
</drawing>