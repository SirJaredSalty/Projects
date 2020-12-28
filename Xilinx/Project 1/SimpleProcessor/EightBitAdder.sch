<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Sum(7:0)" />
        <signal name="A(7:0)" />
        <signal name="B(7:0)" />
        <signal name="A(0)" />
        <signal name="B(0)" />
        <signal name="Sum(0)" />
        <signal name="XLXN_8" />
        <signal name="XLXN_10" />
        <signal name="XLXN_12" />
        <signal name="Ground" />
        <signal name="A(1)" />
        <signal name="B(1)" />
        <signal name="Sum(1)" />
        <signal name="A(2)" />
        <signal name="B(2)" />
        <signal name="Sum(2)" />
        <signal name="A(3)" />
        <signal name="B(3)" />
        <signal name="Sum(3)" />
        <signal name="XLXN_24" />
        <signal name="XLXN_26" />
        <signal name="XLXN_28" />
        <signal name="XLXN_30" />
        <signal name="A(5)" />
        <signal name="B(5)" />
        <signal name="Sum(5)" />
        <signal name="A(6)" />
        <signal name="B(6)" />
        <signal name="Sum(6)" />
        <signal name="A(7)" />
        <signal name="B(7)" />
        <signal name="Sum(7)" />
        <signal name="Cout" />
        <signal name="Sum(4)" />
        <signal name="B(4)" />
        <signal name="A(4)" />
        <port polarity="Output" name="Sum(7:0)" />
        <port polarity="Input" name="A(7:0)" />
        <port polarity="Input" name="B(7:0)" />
        <port polarity="Output" name="Cout" />
        <blockdef name="FullAdder">
            <timestamp>2020-9-22T18:41:34</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="FullAdder" name="XLXI_1">
            <blockpin signalname="A(0)" name="A" />
            <blockpin signalname="B(0)" name="B" />
            <blockpin signalname="Ground" name="Cin" />
            <blockpin signalname="Sum(0)" name="Sum" />
            <blockpin signalname="XLXN_10" name="Cout" />
        </block>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="Ground" name="G" />
        </block>
        <block symbolname="FullAdder" name="XLXI_3">
            <blockpin signalname="A(1)" name="A" />
            <blockpin signalname="B(1)" name="B" />
            <blockpin signalname="XLXN_10" name="Cin" />
            <blockpin signalname="Sum(1)" name="Sum" />
            <blockpin signalname="XLXN_12" name="Cout" />
        </block>
        <block symbolname="FullAdder" name="XLXI_4">
            <blockpin signalname="A(2)" name="A" />
            <blockpin signalname="B(2)" name="B" />
            <blockpin signalname="XLXN_12" name="Cin" />
            <blockpin signalname="Sum(2)" name="Sum" />
            <blockpin signalname="XLXN_8" name="Cout" />
        </block>
        <block symbolname="FullAdder" name="XLXI_5">
            <blockpin signalname="A(3)" name="A" />
            <blockpin signalname="B(3)" name="B" />
            <blockpin signalname="XLXN_8" name="Cin" />
            <blockpin signalname="Sum(3)" name="Sum" />
            <blockpin signalname="XLXN_30" name="Cout" />
        </block>
        <block symbolname="FullAdder" name="XLXI_18">
            <blockpin signalname="A(5)" name="A" />
            <blockpin signalname="B(5)" name="B" />
            <blockpin signalname="XLXN_26" name="Cin" />
            <blockpin signalname="Sum(5)" name="Sum" />
            <blockpin signalname="XLXN_28" name="Cout" />
        </block>
        <block symbolname="FullAdder" name="XLXI_19">
            <blockpin signalname="A(6)" name="A" />
            <blockpin signalname="B(6)" name="B" />
            <blockpin signalname="XLXN_28" name="Cin" />
            <blockpin signalname="Sum(6)" name="Sum" />
            <blockpin signalname="XLXN_24" name="Cout" />
        </block>
        <block symbolname="FullAdder" name="XLXI_20">
            <blockpin signalname="A(7)" name="A" />
            <blockpin signalname="B(7)" name="B" />
            <blockpin signalname="XLXN_24" name="Cin" />
            <blockpin signalname="Sum(7)" name="Sum" />
            <blockpin signalname="Cout" name="Cout" />
        </block>
        <block symbolname="FullAdder" name="XLXI_16">
            <blockpin signalname="A(4)" name="A" />
            <blockpin signalname="B(4)" name="B" />
            <blockpin signalname="XLXN_30" name="Cin" />
            <blockpin signalname="Sum(4)" name="Sum" />
            <blockpin signalname="XLXN_26" name="Cout" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Sum(7:0)">
            <wire x2="3104" y1="768" y2="768" x1="2656" />
        </branch>
        <branch name="A(7:0)">
            <wire x2="1152" y1="400" y2="400" x1="544" />
        </branch>
        <branch name="B(7:0)">
            <wire x2="1152" y1="496" y2="496" x1="544" />
        </branch>
        <branch name="A(0)">
            <wire x2="1856" y1="176" y2="176" x1="1664" />
        </branch>
        <branch name="B(0)">
            <wire x2="1856" y1="240" y2="240" x1="1664" />
        </branch>
        <branch name="Sum(0)">
            <wire x2="2384" y1="176" y2="176" x1="2240" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2256" y1="1024" y2="1024" x1="1792" />
            <wire x2="1792" y1="1024" y2="1280" x1="1792" />
            <wire x2="1856" y1="1280" y2="1280" x1="1792" />
            <wire x2="2256" y1="944" y2="944" x1="2240" />
            <wire x2="2256" y1="944" y2="1024" x1="2256" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2256" y1="384" y2="384" x1="1776" />
            <wire x2="1776" y1="384" y2="624" x1="1776" />
            <wire x2="1856" y1="624" y2="624" x1="1776" />
            <wire x2="2256" y1="304" y2="304" x1="2240" />
            <wire x2="2256" y1="304" y2="384" x1="2256" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2256" y1="688" y2="688" x1="1792" />
            <wire x2="1792" y1="688" y2="944" x1="1792" />
            <wire x2="1856" y1="944" y2="944" x1="1792" />
            <wire x2="2256" y1="624" y2="624" x1="2240" />
            <wire x2="2256" y1="624" y2="688" x1="2256" />
        </branch>
        <instance x="1856" y="336" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1584" y="432" name="XLXI_2" orien="R0" />
        <branch name="Ground">
            <wire x2="1856" y1="304" y2="304" x1="1648" />
        </branch>
        <instance x="1856" y="656" name="XLXI_3" orien="R0">
        </instance>
        <branch name="A(1)">
            <wire x2="1856" y1="496" y2="496" x1="1680" />
        </branch>
        <branch name="B(1)">
            <wire x2="1856" y1="560" y2="560" x1="1680" />
        </branch>
        <branch name="Sum(1)">
            <wire x2="2416" y1="496" y2="496" x1="2240" />
        </branch>
        <instance x="1856" y="976" name="XLXI_4" orien="R0">
        </instance>
        <branch name="A(2)">
            <wire x2="1856" y1="816" y2="816" x1="1664" />
        </branch>
        <branch name="B(2)">
            <wire x2="1856" y1="880" y2="880" x1="1664" />
        </branch>
        <branch name="Sum(2)">
            <wire x2="2416" y1="816" y2="816" x1="2240" />
        </branch>
        <instance x="1856" y="1312" name="XLXI_5" orien="R0">
        </instance>
        <branch name="A(3)">
            <wire x2="1856" y1="1152" y2="1152" x1="1648" />
        </branch>
        <branch name="B(3)">
            <wire x2="1856" y1="1216" y2="1216" x1="1648" />
        </branch>
        <branch name="Sum(3)">
            <wire x2="2352" y1="1152" y2="1152" x1="2240" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="2256" y1="2368" y2="2368" x1="1792" />
            <wire x2="1792" y1="2368" y2="2624" x1="1792" />
            <wire x2="1856" y1="2624" y2="2624" x1="1792" />
            <wire x2="2256" y1="2288" y2="2288" x1="2240" />
            <wire x2="2256" y1="2288" y2="2368" x1="2256" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1776" y1="1728" y2="1968" x1="1776" />
            <wire x2="1856" y1="1968" y2="1968" x1="1776" />
            <wire x2="2256" y1="1728" y2="1728" x1="1776" />
            <wire x2="2256" y1="1648" y2="1648" x1="2240" />
            <wire x2="2256" y1="1648" y2="1728" x1="2256" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2256" y1="2032" y2="2032" x1="1792" />
            <wire x2="1792" y1="2032" y2="2288" x1="1792" />
            <wire x2="1856" y1="2288" y2="2288" x1="1792" />
            <wire x2="2256" y1="1968" y2="1968" x1="2240" />
            <wire x2="2256" y1="1968" y2="2032" x1="2256" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2320" y1="1376" y2="1376" x1="1792" />
            <wire x2="1792" y1="1376" y2="1648" x1="1792" />
            <wire x2="1856" y1="1648" y2="1648" x1="1792" />
            <wire x2="2320" y1="1280" y2="1280" x1="2240" />
            <wire x2="2320" y1="1280" y2="1376" x1="2320" />
        </branch>
        <instance x="1856" y="2000" name="XLXI_18" orien="R0">
        </instance>
        <branch name="A(5)">
            <wire x2="1856" y1="1840" y2="1840" x1="1680" />
        </branch>
        <branch name="B(5)">
            <wire x2="1856" y1="1904" y2="1904" x1="1680" />
        </branch>
        <branch name="Sum(5)">
            <wire x2="2416" y1="1840" y2="1840" x1="2240" />
        </branch>
        <instance x="1856" y="2320" name="XLXI_19" orien="R0">
        </instance>
        <branch name="A(6)">
            <wire x2="1856" y1="2160" y2="2160" x1="1664" />
        </branch>
        <branch name="B(6)">
            <wire x2="1856" y1="2224" y2="2224" x1="1664" />
        </branch>
        <branch name="Sum(6)">
            <wire x2="2416" y1="2160" y2="2160" x1="2240" />
        </branch>
        <instance x="1856" y="2656" name="XLXI_20" orien="R0">
        </instance>
        <branch name="A(7)">
            <wire x2="1856" y1="2496" y2="2496" x1="1648" />
        </branch>
        <branch name="B(7)">
            <wire x2="1856" y1="2560" y2="2560" x1="1648" />
        </branch>
        <branch name="Sum(7)">
            <wire x2="2352" y1="2496" y2="2496" x1="2240" />
        </branch>
        <branch name="Cout">
            <wire x2="2352" y1="2624" y2="2624" x1="2240" />
            <wire x2="3184" y1="2624" y2="2624" x1="2352" />
        </branch>
        <instance x="1856" y="1680" name="XLXI_16" orien="R0">
        </instance>
        <branch name="Sum(4)">
            <wire x2="2384" y1="1520" y2="1520" x1="2240" />
        </branch>
        <branch name="B(4)">
            <wire x2="1856" y1="1584" y2="1584" x1="1664" />
        </branch>
        <branch name="A(4)">
            <wire x2="1856" y1="1520" y2="1520" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="3104" y="768" name="Sum(7:0)" orien="R0" />
        <iomarker fontsize="28" x="544" y="400" name="A(7:0)" orien="R180" />
        <iomarker fontsize="28" x="544" y="496" name="B(7:0)" orien="R180" />
        <iomarker fontsize="28" x="3184" y="2624" name="Cout" orien="R0" />
    </sheet>
</drawing>