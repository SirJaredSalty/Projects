<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="d" />
        <signal name="LD" />
        <signal name="clk" />
        <signal name="q" />
        <port polarity="Input" name="d" />
        <port polarity="Input" name="LD" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="q" />
        <blockdef name="fde">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <block symbolname="fde" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="LD" name="CE" />
            <blockpin signalname="d" name="D" />
            <blockpin signalname="q" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <branch name="d">
            <wire x2="704" y1="576" y2="576" x1="656" />
        </branch>
        <branch name="LD">
            <wire x2="704" y1="640" y2="640" x1="656" />
        </branch>
        <branch name="clk">
            <wire x2="704" y1="704" y2="704" x1="656" />
        </branch>
        <branch name="q">
            <wire x2="1104" y1="576" y2="576" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="656" y="576" name="d" orien="R180" />
        <iomarker fontsize="28" x="656" y="640" name="LD" orien="R180" />
        <iomarker fontsize="28" x="656" y="704" name="clk" orien="R180" />
        <iomarker fontsize="28" x="1104" y="576" name="q" orien="R0" />
        <instance x="704" y="832" name="XLXI_1" orien="R0" />
    </sheet>
</drawing>