<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="B" />
        <signal name="Bin" />
        <signal name="D" />
        <signal name="Bout" />
        <signal name="XLXN_9" />
        <signal name="XLXN_12" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_21" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_32" />
        <signal name="XLXN_34" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_49" />
        <signal name="XLXN_54" />
        <signal name="XLXN_56" />
        <signal name="XLXN_58" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_67" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="Bin" />
        <port polarity="Output" name="D" />
        <port polarity="Output" name="Bout" />
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
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="Bin" name="I0" />
            <blockpin signalname="XLXN_42" name="I1" />
            <blockpin signalname="D" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_44" name="I0" />
            <blockpin signalname="Bin" name="I1" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="XLXN_42" name="I" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_7">
            <blockpin signalname="XLXN_45" name="I0" />
            <blockpin signalname="XLXN_46" name="I1" />
            <blockpin signalname="Bout" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A">
            <wire x2="560" y1="416" y2="416" x1="400" />
            <wire x2="560" y1="416" y2="1232" x1="560" />
            <wire x2="704" y1="1232" y2="1232" x1="560" />
            <wire x2="1056" y1="416" y2="416" x1="560" />
        </branch>
        <branch name="D">
            <wire x2="2128" y1="336" y2="336" x1="1936" />
        </branch>
        <branch name="Bout">
            <wire x2="2224" y1="1168" y2="1168" x1="2208" />
            <wire x2="2320" y1="1168" y2="1168" x1="2224" />
        </branch>
        <branch name="B">
            <wire x2="704" y1="480" y2="480" x1="400" />
            <wire x2="704" y1="480" y2="1168" x1="704" />
            <wire x2="992" y1="1168" y2="1168" x1="704" />
            <wire x2="1056" y1="480" y2="480" x1="704" />
        </branch>
        <instance x="1056" y="544" name="XLXI_2" orien="R0" />
        <branch name="Bin">
            <wire x2="1536" y1="800" y2="800" x1="416" />
            <wire x2="1536" y1="800" y2="1008" x1="1536" />
            <wire x2="1680" y1="1008" y2="1008" x1="1536" />
            <wire x2="1680" y1="368" y2="368" x1="1536" />
            <wire x2="1536" y1="368" y2="800" x1="1536" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1952" y1="1200" y2="1200" x1="1248" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="1952" y1="1040" y2="1040" x1="1936" />
            <wire x2="1952" y1="1040" y2="1136" x1="1952" />
        </branch>
        <instance x="992" y="1296" name="XLXI_3" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="992" y1="1232" y2="1232" x1="928" />
        </branch>
        <instance x="704" y="1264" name="XLXI_6" orien="R0" />
        <iomarker fontsize="28" x="416" y="800" name="Bin" orien="R180" />
        <iomarker fontsize="28" x="400" y="416" name="A" orien="R180" />
        <iomarker fontsize="28" x="400" y="480" name="B" orien="R180" />
        <instance x="1360" y="1104" name="XLXI_5" orien="R0" />
        <instance x="1680" y="432" name="XLXI_1" orien="R0" />
        <branch name="XLXN_42">
            <wire x2="1328" y1="448" y2="448" x1="1312" />
            <wire x2="1328" y1="448" y2="1072" x1="1328" />
            <wire x2="1360" y1="1072" y2="1072" x1="1328" />
            <wire x2="1680" y1="304" y2="304" x1="1328" />
            <wire x2="1328" y1="304" y2="448" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="2128" y="336" name="D" orien="R0" />
        <instance x="1952" y="1264" name="XLXI_7" orien="R0" />
        <branch name="XLXN_44">
            <wire x2="1680" y1="1072" y2="1072" x1="1584" />
        </branch>
        <instance x="1680" y="1136" name="XLXI_4" orien="R0" />
        <iomarker fontsize="28" x="2320" y="1168" name="Bout" orien="R0" />
    </sheet>
</drawing>