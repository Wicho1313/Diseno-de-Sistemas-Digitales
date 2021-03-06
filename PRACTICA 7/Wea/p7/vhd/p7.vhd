
--  CYPRESS NOVA XVL Structural Architecture

--  JED2VHD Reverse Assembler - 6.3 IR 35


--    VHDL File: p7.vhd

--    Date: Thu Nov 29 10:50:25 2018

--  Disassembly from Jedec file for: c22v10

--  Device Ordercode is: PALC22V10D-25PC
library ieee;
use ieee.std_logic_1164.all;

library primitive;
use primitive.primitive.all;


-- Beginning Test Bench Header

ENTITY conreg IS
    PORT (
	                 clr :    in std_logic ;
	                 clk :    in std_logic ;
	                   e :    in std_logic_vector (3 downto 0) ;
	                   c :    in std_logic_vector (2 downto 0) ;
	                   q : inout std_logic_vector (3 downto 0)
    );
END conreg;

-- End of Test Bench Header

ARCHITECTURE DSMB of conreg is

	signal jed_node1	: std_logic:='0' ; -- clk
	signal jed_node2	: std_logic:='0' ; -- e(3)
	signal jed_node3	: std_logic:='0' ; -- e(2)
	signal jed_node4	: std_logic:='0' ; -- e(1)
	signal jed_node5	: std_logic:='0' ; -- clr
	signal jed_node6	: std_logic:='0' ; -- e(0)
	signal jed_node7	: std_logic:='0' ; -- c(2)
	signal jed_node8	: std_logic:='0' ; -- c(1)
	signal jed_node9	: std_logic:='0' ; -- c(0)
	signal jed_node10	: std_logic:='0' ;
	signal jed_node11	: std_logic:='0' ;
	signal jed_node12	: std_logic:='0' ;
	signal jed_node13	: std_logic:='0' ;
	signal jed_node14	: std_logic:='0' ;
	signal jed_node15	: std_logic:='0' ;
	signal jed_node16	: std_logic:='0' ;
	signal jed_node21	: std_logic:='0' ;
	signal jed_node22	: std_logic:='0' ;
	signal jed_node23	: std_logic:='0' ;
	signal jed_node24	: std_logic:='0' ;

	for all: c22v10m use entity primitive.c22v10m (sim);

SIGNAL  one:std_logic:='1';
SIGNAL  zero:std_logic:='0';
SIGNAL  jed_oept_1:std_logic:='0';
--Attribute PIN_NUMBERS of clk:SIGNAL is "0001";

SIGNAL  jed_oept_2:std_logic:='0';
--Attribute PIN_NUMBERS of e(3):SIGNAL is "0002";

SIGNAL  jed_oept_3:std_logic:='0';
--Attribute PIN_NUMBERS of e(2):SIGNAL is "0003";

SIGNAL  jed_oept_4:std_logic:='0';
--Attribute PIN_NUMBERS of e(1):SIGNAL is "0004";

SIGNAL  jed_oept_5:std_logic:='0';
--Attribute PIN_NUMBERS of clr:SIGNAL is "0005";

SIGNAL  jed_oept_6:std_logic:='0';
--Attribute PIN_NUMBERS of e(0):SIGNAL is "0006";

SIGNAL  jed_oept_7:std_logic:='0';
--Attribute PIN_NUMBERS of c(2):SIGNAL is "0007";

SIGNAL  jed_oept_8:std_logic:='0';
--Attribute PIN_NUMBERS of c(1):SIGNAL is "0008";

SIGNAL  jed_oept_9:std_logic:='0';
--Attribute PIN_NUMBERS of c(0):SIGNAL is "0009";

SIGNAL  jed_oept_17:std_logic:='0';
SIGNAL  jed_sum_17,jed_fb_17:std_logic:='0';
--Attribute PIN_NUMBERS of q(3):SIGNAL is "0017";

SIGNAL  jed_oept_18:std_logic:='0';
SIGNAL  jed_sum_18,jed_fb_18:std_logic:='0';
--Attribute PIN_NUMBERS of q(1):SIGNAL is "0018";

SIGNAL  jed_oept_19:std_logic:='0';
SIGNAL  jed_sum_19,jed_fb_19:std_logic:='0';
--Attribute PIN_NUMBERS of q(0):SIGNAL is "0019";

SIGNAL  jed_oept_20:std_logic:='0';
SIGNAL  jed_sum_20,jed_fb_20:std_logic:='0';
--Attribute PIN_NUMBERS of q(2):SIGNAL is "0020";

SIGNAL  jed_oept_25:std_logic:='0';
SIGNAL  jed_node25,jed_sum_25:std_logic:='0';
SIGNAL  jed_oept_26:std_logic:='0';
SIGNAL  jed_node26,jed_sum_26:std_logic:='0';

BEGIN
jed_node1 <= clk ;
jed_node2 <= e(3) ;
jed_node3 <= e(2) ;
jed_node4 <= e(1) ;
jed_node5 <= clr ;
jed_node6 <= e(0) ;
jed_node7 <= c(2) ;
jed_node8 <= c(1) ;
jed_node9 <= c(0) ;
Mcell_17:c22v10m
generic map(reg,
   ninv,
   xreg,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_17,
     clk=>jed_node1,
     oe=>jed_oept_17,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q(3),
     fb=>jed_fb_17
   );

Mcell_18:c22v10m
generic map(reg,
   ninv,
   xreg,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_18,
     clk=>jed_node1,
     oe=>jed_oept_18,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q(1),
     fb=>jed_fb_18
   );

Mcell_19:c22v10m
generic map(reg,
   ninv,
   xreg,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_19,
     clk=>jed_node1,
     oe=>jed_oept_19,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q(0),
     fb=>jed_fb_19
   );

Mcell_20:c22v10m
generic map(reg,
   ninv,
   xreg,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_20,
     clk=>jed_node1,
     oe=>jed_oept_20,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>q(2),
     fb=>jed_fb_20
   );

jed_node25<=jed_sum_25;
jed_node26<=jed_sum_26;
jed_oept_17<=(one);

jed_sum_17<= ((not(not(jed_fb_20)) and not(not(jed_fb_19)) and not(not(jed_fb_18))
 and not(jed_node7) and not(not(jed_fb_17)) and (jed_node8)
 and (jed_node9)) or
((not(jed_fb_20)) and not(not(jed_fb_19)) and not(not(jed_fb_18))
 and (jed_node7) and not(jed_node8) and not(jed_node9)
) or
(not(not(jed_fb_20)) and not(not(jed_fb_19)) and not(not(jed_fb_18))
 and (jed_node7) and not(jed_node8) and (jed_node9)
) or
((not(jed_fb_20)) and (not(jed_fb_19)) and (not(jed_fb_18))
 and not(not(jed_fb_17)) and (jed_node8) and not(jed_node9)
) or
(not(not(jed_fb_19)) and not(jed_node7) and (not(jed_fb_17))
 and (jed_node8) and not(jed_node9)) or
((not(jed_fb_20)) and not(not(jed_fb_18)) and not(jed_node7)
 and (not(jed_fb_17)) and (jed_node8)) or
(not(not(jed_fb_20)) and (not(jed_fb_19)) and not(jed_node7)
 and (not(jed_fb_17)) and (jed_node8)) or
((not(jed_fb_20)) and (jed_node7) and (jed_node8) and (jed_node9)
) or
((not(jed_fb_19)) and (jed_node7) and (jed_node8) and not(jed_node9)
) or
((not(jed_fb_18)) and (jed_node7) and (not(jed_fb_17))
 and not(jed_node8)) or
((not(jed_fb_19)) and (jed_node7) and (not(jed_fb_17))
 and not(jed_node8)) or
((not(jed_fb_18)) and not(jed_node7) and (not(jed_fb_17))
 and (jed_node9)) or
(not(jed_node7) and (not(jed_fb_17)) and not(jed_node8)
 and (jed_node9)) or
((jed_node2) and not(jed_node7) and not(jed_node8) and not(jed_node9)
));

jed_oept_18<=(one);

jed_sum_18<= ((not(not(jed_fb_20)) and (not(jed_fb_19)) and (jed_node7)
 and not(not(jed_fb_17)) and not(jed_node8) and not(jed_node9)
) or
((not(jed_fb_20)) and (not(jed_fb_19)) and (jed_node7)
 and (not(jed_fb_17)) and not(jed_node9)) or
(not(not(jed_fb_19)) and (not(jed_fb_18)) and not(jed_node7)
 and (jed_node8) and not(jed_node9)) or
((not(jed_fb_19)) and not(not(jed_fb_18)) and not(jed_node7)
 and (jed_node8) and not(jed_node9)) or
(not(not(jed_fb_19)) and not(not(jed_fb_18)) and not(jed_node7)
 and (jed_node8) and (jed_node9)) or
(not(not(jed_fb_20)) and (not(jed_fb_19)) and (jed_node7)
 and (not(jed_fb_17)) and (jed_node9)) or
((not(jed_fb_20)) and (not(jed_fb_19)) and (jed_node7)
 and not(not(jed_fb_17)) and (jed_node9)) or
((not(jed_fb_19)) and (jed_node7) and (jed_node8) and (jed_node9)
) or
((not(jed_fb_20)) and (jed_node7) and (jed_node8) and not(jed_node9)
) or
((not(jed_fb_19)) and (not(jed_fb_18)) and not(jed_node7)
 and (jed_node9)) or
((jed_node4) and not(jed_node7) and not(jed_node8) and not(jed_node9)
) or
(not(not(jed_fb_19)) and (not(jed_fb_18)) and (jed_node7)
 and not(jed_node8)) or
(not(not(jed_fb_19)) and (not(jed_fb_18)) and not(jed_node8)
 and (jed_node9)));

jed_oept_19<=(one);

jed_sum_19<= (((not(jed_fb_20)) and not(not(jed_fb_18)) and (jed_node7)
 and (not(jed_fb_17)) and not(jed_node8) and not(jed_node9)
) or
((not(jed_fb_20)) and not(not(jed_fb_18)) and (jed_node7)
 and not(not(jed_fb_17)) and not(jed_node8) and (jed_node9)
) or
(not(not(jed_fb_20)) and (not(jed_fb_18)) and (jed_node7)
 and not(not(jed_fb_17)) and not(jed_node8) and (jed_node9)
) or
(not(not(jed_fb_20)) and not(not(jed_fb_18)) and (jed_node7)
 and not(not(jed_fb_17)) and not(jed_node8) and not(jed_node9)
) or
((not(jed_fb_20)) and (not(jed_fb_18)) and (jed_node7)
 and (not(jed_fb_17)) and (jed_node9)) or
(not(not(jed_fb_20)) and (not(jed_fb_18)) and (jed_node7)
 and (not(jed_fb_17)) and not(jed_node9)) or
(not(not(jed_fb_20)) and not(not(jed_fb_18)) and (jed_node7)
 and (not(jed_fb_17)) and (jed_node9)) or
((not(jed_fb_20)) and (not(jed_fb_18)) and (jed_node7)
 and not(not(jed_fb_17)) and not(jed_node9)) or
((jed_node7) and (not(jed_fb_17)) and (jed_node8) and (jed_node9)
) or
((not(jed_fb_18)) and (jed_node7) and (jed_node8) and not(jed_node9)
) or
((not(jed_fb_19)) and not(jed_node7) and not(jed_node8)
 and (jed_node9)) or
((jed_node6) and not(jed_node7) and not(jed_node8) and not(jed_node9)
) or
(not(not(jed_fb_19)) and not(jed_node7) and (jed_node8)
));

jed_oept_20<=(one);

jed_sum_20<= ((not(not(jed_fb_20)) and (not(jed_fb_19)) and (not(jed_fb_18))
 and not(jed_node7) and (jed_node8) and not(jed_node9)
) or
(not(not(jed_fb_20)) and not(not(jed_fb_19)) and not(not(jed_fb_18))
 and not(jed_node7) and (jed_node8) and (jed_node9)
) or
(not(not(jed_fb_19)) and (not(jed_fb_18)) and (jed_node7)
 and not(not(jed_fb_17)) and not(jed_node8) and not(jed_node9)
) or
(not(not(jed_fb_19)) and (not(jed_fb_18)) and (jed_node7)
 and (not(jed_fb_17)) and (jed_node9)) or
((not(jed_fb_20)) and not(not(jed_fb_19)) and not(jed_node7)
 and (jed_node8) and not(jed_node9)) or
((not(jed_fb_20)) and (not(jed_fb_19)) and not(not(jed_fb_18))
 and not(jed_node7) and (jed_node8)) or
((not(jed_fb_18)) and (jed_node7) and (jed_node8) and (jed_node9)
) or
((jed_node7) and (not(jed_fb_17)) and (jed_node8) and not(jed_node9)
) or
((not(jed_fb_20)) and (not(jed_fb_19)) and (jed_node7)
 and not(jed_node8)) or
((not(jed_fb_20)) and (not(jed_fb_18)) and not(jed_node7)
 and (jed_node9)) or
((jed_node3) and not(jed_node7) and not(jed_node8) and not(jed_node9)
) or
((not(jed_fb_20)) and not(not(jed_fb_18)) and (jed_node7)
 and not(jed_node8)) or
((not(jed_fb_20)) and not(not(jed_fb_18)) and not(jed_node8)
 and (jed_node9)));

jed_sum_25<= (((jed_node5)));

end DSMB;
