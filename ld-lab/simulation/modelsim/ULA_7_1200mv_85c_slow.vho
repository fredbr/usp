-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "06/19/2019 11:22:03"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	\in\ : IN std_logic_vector(9 DOWNTO 0);
	op : IN std_logic_vector(1 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0);
	hex4 : OUT std_logic_vector(6 DOWNTO 0);
	hex5 : OUT std_logic_vector(6 DOWNTO 0);
	hex6 : OUT std_logic_vector(6 DOWNTO 0);
	hex7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END ULA;

-- Design Ports Information
-- hex0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[2]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[5]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[0]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[6]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[3]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[8]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[9]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[4]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \ww_in\ : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex1[6]~output_o\ : std_logic;
SIGNAL \hex1[5]~output_o\ : std_logic;
SIGNAL \hex1[4]~output_o\ : std_logic;
SIGNAL \hex1[3]~output_o\ : std_logic;
SIGNAL \hex1[2]~output_o\ : std_logic;
SIGNAL \hex1[1]~output_o\ : std_logic;
SIGNAL \hex1[0]~output_o\ : std_logic;
SIGNAL \hex2[6]~output_o\ : std_logic;
SIGNAL \hex2[5]~output_o\ : std_logic;
SIGNAL \hex2[4]~output_o\ : std_logic;
SIGNAL \hex2[3]~output_o\ : std_logic;
SIGNAL \hex2[2]~output_o\ : std_logic;
SIGNAL \hex2[1]~output_o\ : std_logic;
SIGNAL \hex2[0]~output_o\ : std_logic;
SIGNAL \hex3[6]~output_o\ : std_logic;
SIGNAL \hex3[5]~output_o\ : std_logic;
SIGNAL \hex3[4]~output_o\ : std_logic;
SIGNAL \hex3[3]~output_o\ : std_logic;
SIGNAL \hex3[2]~output_o\ : std_logic;
SIGNAL \hex3[1]~output_o\ : std_logic;
SIGNAL \hex3[0]~output_o\ : std_logic;
SIGNAL \hex4[6]~output_o\ : std_logic;
SIGNAL \hex4[5]~output_o\ : std_logic;
SIGNAL \hex4[4]~output_o\ : std_logic;
SIGNAL \hex4[3]~output_o\ : std_logic;
SIGNAL \hex4[2]~output_o\ : std_logic;
SIGNAL \hex4[1]~output_o\ : std_logic;
SIGNAL \hex4[0]~output_o\ : std_logic;
SIGNAL \hex5[6]~output_o\ : std_logic;
SIGNAL \hex5[5]~output_o\ : std_logic;
SIGNAL \hex5[4]~output_o\ : std_logic;
SIGNAL \hex5[3]~output_o\ : std_logic;
SIGNAL \hex5[2]~output_o\ : std_logic;
SIGNAL \hex5[1]~output_o\ : std_logic;
SIGNAL \hex5[0]~output_o\ : std_logic;
SIGNAL \hex6[6]~output_o\ : std_logic;
SIGNAL \hex6[5]~output_o\ : std_logic;
SIGNAL \hex6[4]~output_o\ : std_logic;
SIGNAL \hex6[3]~output_o\ : std_logic;
SIGNAL \hex6[2]~output_o\ : std_logic;
SIGNAL \hex6[1]~output_o\ : std_logic;
SIGNAL \hex6[0]~output_o\ : std_logic;
SIGNAL \hex7[6]~output_o\ : std_logic;
SIGNAL \hex7[5]~output_o\ : std_logic;
SIGNAL \hex7[4]~output_o\ : std_logic;
SIGNAL \hex7[3]~output_o\ : std_logic;
SIGNAL \hex7[2]~output_o\ : std_logic;
SIGNAL \hex7[1]~output_o\ : std_logic;
SIGNAL \hex7[0]~output_o\ : std_logic;
SIGNAL \in[7]~input_o\ : std_logic;
SIGNAL \in[0]~input_o\ : std_logic;
SIGNAL \in[4]~input_o\ : std_logic;
SIGNAL \in[2]~input_o\ : std_logic;
SIGNAL \in[1]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst|inst4|inst2|inst|1~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst|inst4|inst1|inst|1~combout\ : std_logic;
SIGNAL \in[5]~input_o\ : std_logic;
SIGNAL \in[9]~input_o\ : std_logic;
SIGNAL \inst|inst3|inst|inst4|inst|inst2~0_combout\ : std_logic;
SIGNAL \in[6]~input_o\ : std_logic;
SIGNAL \inst|inst3|inst|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst|inst|inst2~0_combout\ : std_logic;
SIGNAL \inst|inst|inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst4|inst1|inst3~combout\ : std_logic;
SIGNAL \inst|inst20|inst|inst2~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst|inst58~0_combout\ : std_logic;
SIGNAL \in[3]~input_o\ : std_logic;
SIGNAL \inst|inst1|inst|inst4|inst3|inst3~combout\ : std_logic;
SIGNAL \in[8]~input_o\ : std_logic;
SIGNAL \inst|inst3|inst|inst3~combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst4|inst2|inst3~combout\ : std_logic;
SIGNAL \inst|inst1|inst|inst4|inst3|inst|1~combout\ : std_logic;
SIGNAL \inst|inst3|inst|inst2~combout\ : std_logic;
SIGNAL \inst|inst1|inst|inst4|inst2|inst|1~combout\ : std_logic;
SIGNAL \inst|inst|inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst|inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst|inst|inst4|inst|1~0_combout\ : std_logic;
SIGNAL \inst|inst1|inst|inst4|inst1|inst|1~0_combout\ : std_logic;
SIGNAL \inst|inst20|inst|inst1~0_combout\ : std_logic;
SIGNAL \inst|inst20|inst|inst~0_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[20]~22_combout\ : std_logic;
SIGNAL \inst|inst20|inst|inst4|inst1|inst3~combout\ : std_logic;
SIGNAL \inst|inst20|inst|inst4|inst2|inst|1~combout\ : std_logic;
SIGNAL \inst|inst20|inst|inst3~0_combout\ : std_logic;
SIGNAL \inst|inst20|inst|inst3~1_combout\ : std_logic;
SIGNAL \inst|inst20|inst|inst4|inst3|inst|1~combout\ : std_logic;
SIGNAL \inst|inst20|inst|inst4|inst1|inst|1~0_combout\ : std_logic;
SIGNAL \inst|inst9|inst|inst59~combout\ : std_logic;
SIGNAL \inst1|inst2|inst3|inst|inst|inst|inst5~combout\ : std_logic;
SIGNAL \inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst1|inst|inst|inst|inst5~combout\ : std_logic;
SIGNAL \inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst1|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst2|inst|inst1|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst1|inst5|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst1|inst|inst2|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst1|inst5|inst4~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst2|inst|inst3|inst|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst2|inst6|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst2|inst|inst|inst|inst5~combout\ : std_logic;
SIGNAL \inst1|inst2|inst2|inst5|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst3|inst|inst2|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst3|inst|inst2|inst|inst5~1_combout\ : std_logic;
SIGNAL \inst1|inst2|inst3|inst|inst2|inst|inst5~2_combout\ : std_logic;
SIGNAL \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst2|inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst3|inst5|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst3|inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst3|inst4|inst4~2_combout\ : std_logic;
SIGNAL \inst1|inst2|inst3|inst|inst1|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst2|inst3|inst6|inst4~0_combout\ : std_logic;
SIGNAL \inst1|inst4|inst|inst59~combout\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[6]~23_combout\ : std_logic;
SIGNAL \inst7|inst2|inst5|inst1|inst2~combout\ : std_logic;
SIGNAL \inst7|inst2|inst5|inst|inst|inst2~combout\ : std_logic;
SIGNAL \inst7|inst2|inst5|inst1|inst|inst|1~combout\ : std_logic;
SIGNAL \inst7|inst2|inst6|inst|inst|inst2~combout\ : std_logic;
SIGNAL \inst7|inst2|inst5|inst1|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst2|inst5|inst2|inst|inst|3~combout\ : std_logic;
SIGNAL \inst7|inst2|inst6|inst1|inst2~combout\ : std_logic;
SIGNAL \inst7|inst2|inst5|inst2|inst2~combout\ : std_logic;
SIGNAL \inst7|inst2|inst6|inst1|inst|inst|1~combout\ : std_logic;
SIGNAL \inst7|inst2|inst7|inst|inst|inst|1~combout\ : std_logic;
SIGNAL \inst7|inst2|inst5|inst|inst|inst|1~combout\ : std_logic;
SIGNAL \inst7|inst2|inst6|inst|inst|inst|1~combout\ : std_logic;
SIGNAL \inst7|inst5|inst|inst59~combout\ : std_logic;
SIGNAL \inst2|inst|inst9|inst4|auto_generated|result_node[4]~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst9|inst3|inst1|inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst12|inst4|auto_generated|result_node[5]~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst12|inst4|auto_generated|result_node[6]~1_combout\ : std_logic;
SIGNAL \inst8|inst|inst50~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\ : std_logic;
SIGNAL \inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst9|inst4|auto_generated|result_node[4]~3_combout\ : std_logic;
SIGNAL \inst2|inst|inst9|inst4|auto_generated|result_node[5]~1_combout\ : std_logic;
SIGNAL \inst2|inst|inst9|inst4|auto_generated|result_node[3]~2_combout\ : std_logic;
SIGNAL \inst2|inst|inst10|inst3|inst1|inst3|inst5~3_combout\ : std_logic;
SIGNAL \inst2|inst|inst10|inst3|inst1|inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \inst4|auto_generated|_~0_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[6]~24_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[5]~27_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[5]~25_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[5]~26_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[5]~110_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[5]~29_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[5]~111_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[4]~31_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[4]~30_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[4]~33_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[4]~32_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[4]~20_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[4]~21_combout\ : std_logic;
SIGNAL \inst|inst9|inst|inst43~0_combout\ : std_logic;
SIGNAL \inst1|inst4|inst|inst43~0_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[3]~34_combout\ : std_logic;
SIGNAL \inst7|inst5|inst|inst43~0_combout\ : std_logic;
SIGNAL \inst4|auto_generated|_~1_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[3]~35_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[2]~37_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[2]~38_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[2]~39_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[2]~40_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[2]~36_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[2]~41_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[1]~43_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[1]~44_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[1]~45_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[1]~42_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[1]~46_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[1]~47_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[0]~52_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[0]~100_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[0]~53_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[0]~49_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[0]~50_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[0]~51_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[0]~48_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[0]~54_combout\ : std_logic;
SIGNAL \inst7|inst2|inst5|inst2|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst2|inst6|inst1|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst2|inst6|inst2|inst2~combout\ : std_logic;
SIGNAL \inst7|inst2|inst5|inst3|inst2~combout\ : std_logic;
SIGNAL \inst7|inst2|inst6|inst2|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst2|inst6|inst3|inst2~combout\ : std_logic;
SIGNAL \inst7|inst2|inst6|inst3|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst2|inst7|inst|inst|inst2~combout\ : std_logic;
SIGNAL \inst7|inst2|inst7|inst1|inst2~combout\ : std_logic;
SIGNAL \inst7|inst2|inst6|inst2|inst|inst|3~2_combout\ : std_logic;
SIGNAL \inst7|inst2|inst7|inst1|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst2|inst7|inst2|inst2~combout\ : std_logic;
SIGNAL \inst7|inst2|inst6|inst3|inst|inst|3~combout\ : std_logic;
SIGNAL \inst7|inst2|inst7|inst2|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst2|inst7|inst3|inst|inst|1~0_combout\ : std_logic;
SIGNAL \inst7|inst2|inst7|inst2|inst|inst|1~0_combout\ : std_logic;
SIGNAL \inst7|inst2|inst7|inst1|inst|inst|1~combout\ : std_logic;
SIGNAL \inst7|inst2|inst7|inst3|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst7|inst9|inst|inst59~combout\ : std_logic;
SIGNAL \inst|inst20|inst|inst4|inst2|inst3~combout\ : std_logic;
SIGNAL \inst|inst20|inst|inst4|inst4|inst|1~0_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[13]~55_combout\ : std_logic;
SIGNAL \inst2|inst|inst10|inst4|auto_generated|result_node[5]~4_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[13]~56_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[7]~58_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[12]~59_combout\ : std_logic;
SIGNAL \inst2|inst|inst10|inst4|auto_generated|result_node[4]~5_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[12]~57_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[12]~101_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[11]~60_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[11]~61_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[10]~63_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[10]~62_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[10]~64_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[9]~66_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[9]~65_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[9]~67_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[8]~68_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[8]~69_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[7]~71_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[10]~70_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[7]~72_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[16]~73_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[20]~74_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[20]~75_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[16]~76_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[19]~77_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[19]~78_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[19]~102_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[5]~28_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[18]~79_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[18]~108_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[18]~109_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[17]~80_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[17]~103_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[16]~81_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[16]~82_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[15]~83_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[15]~84_combout\ : std_logic;
SIGNAL \inst1|inst2|inst2|inst|inst2|inst|inst5~0_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[15]~85_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[15]~86_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[14]~87_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[14]~104_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[27]~88_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[27]~89_combout\ : std_logic;
SIGNAL \inst12~0_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[26]~90_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[26]~91_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[25]~92_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[25]~93_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[25]~94_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[24]~95_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[24]~105_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[23]~96_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[23]~97_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[22]~98_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[22]~106_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[21]~99_combout\ : std_logic;
SIGNAL \inst4|auto_generated|result_node[21]~107_combout\ : std_logic;
SIGNAL \inst3|inst|inst|inst58~1_combout\ : std_logic;
SIGNAL \inst3|inst|inst|inst38~0_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[6]~36_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[5]~37_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[4]~38_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[3]~39_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[3]~67_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[2]~40_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[2]~41_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[1]~42_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[1]~68_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[0]~43_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[0]~69_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[13]~44_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[20]~46_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[20]~45_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[20]~70_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[19]~48_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[19]~47_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[19]~49_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[19]~50_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[19]~51_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[18]~52_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[18]~53_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[18]~71_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[17]~54_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[17]~55_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[17]~72_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[16]~57_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[16]~56_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[16]~73_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[15]~59_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[15]~58_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[15]~74_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[14]~61_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[14]~60_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[14]~75_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[27]~81_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[27]~82_combout\ : std_logic;
SIGNAL \inst8|inst|inst34~0_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[25]~62_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[25]~76_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[24]~63_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[24]~77_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[23]~64_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[23]~78_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[22]~65_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[22]~79_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[21]~66_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node[21]~80_combout\ : std_logic;
SIGNAL \inst11|auto_generated|result_node\ : std_logic_vector(27 DOWNTO 0);

BEGIN

hex0 <= ww_hex0;
\ww_in\ <= \in\;
ww_op <= op;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
hex5 <= ww_hex5;
hex6 <= ww_hex6;
hex7 <= ww_hex7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X115_Y69_N2
\hex0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[6]~24_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\hex0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[5]~111_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\hex0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[4]~21_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\hex0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[3]~35_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\hex0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[2]~41_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\hex0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[1]~47_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\hex0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[0]~54_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\hex1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[13]~56_combout\,
	devoe => ww_devoe,
	o => \hex1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\hex1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[12]~101_combout\,
	devoe => ww_devoe,
	o => \hex1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\hex1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[11]~61_combout\,
	devoe => ww_devoe,
	o => \hex1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\hex1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[10]~64_combout\,
	devoe => ww_devoe,
	o => \hex1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\hex1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[9]~67_combout\,
	devoe => ww_devoe,
	o => \hex1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\hex1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[8]~69_combout\,
	devoe => ww_devoe,
	o => \hex1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\hex1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[7]~72_combout\,
	devoe => ww_devoe,
	o => \hex1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\hex2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[20]~75_combout\,
	devoe => ww_devoe,
	o => \hex2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\hex2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[19]~102_combout\,
	devoe => ww_devoe,
	o => \hex2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\hex2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[18]~109_combout\,
	devoe => ww_devoe,
	o => \hex2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\hex2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[17]~103_combout\,
	devoe => ww_devoe,
	o => \hex2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\hex2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[16]~82_combout\,
	devoe => ww_devoe,
	o => \hex2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\hex2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[15]~86_combout\,
	devoe => ww_devoe,
	o => \hex2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\hex2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[14]~104_combout\,
	devoe => ww_devoe,
	o => \hex2[0]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\hex3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[27]~89_combout\,
	devoe => ww_devoe,
	o => \hex3[6]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\hex3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[26]~91_combout\,
	devoe => ww_devoe,
	o => \hex3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\hex3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[25]~94_combout\,
	devoe => ww_devoe,
	o => \hex3[4]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\hex3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[24]~105_combout\,
	devoe => ww_devoe,
	o => \hex3[3]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\hex3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[23]~97_combout\,
	devoe => ww_devoe,
	o => \hex3[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\hex3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[22]~106_combout\,
	devoe => ww_devoe,
	o => \hex3[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\hex3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|auto_generated|result_node[21]~107_combout\,
	devoe => ww_devoe,
	o => \hex3[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\hex4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[6]~36_combout\,
	devoe => ww_devoe,
	o => \hex4[6]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\hex4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node\(5),
	devoe => ww_devoe,
	o => \hex4[5]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\hex4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node\(4),
	devoe => ww_devoe,
	o => \hex4[4]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\hex4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[3]~67_combout\,
	devoe => ww_devoe,
	o => \hex4[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\hex4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[2]~41_combout\,
	devoe => ww_devoe,
	o => \hex4[2]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\hex4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[1]~68_combout\,
	devoe => ww_devoe,
	o => \hex4[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\hex4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[0]~69_combout\,
	devoe => ww_devoe,
	o => \hex4[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\hex5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[13]~44_combout\,
	devoe => ww_devoe,
	o => \hex5[6]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\hex5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex5[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\hex5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex5[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\hex5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex5[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\hex5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex5[2]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\hex5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex5[1]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\hex5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hex5[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\hex6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[20]~70_combout\,
	devoe => ww_devoe,
	o => \hex6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\hex6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[19]~51_combout\,
	devoe => ww_devoe,
	o => \hex6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\hex6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[18]~71_combout\,
	devoe => ww_devoe,
	o => \hex6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\hex6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[17]~72_combout\,
	devoe => ww_devoe,
	o => \hex6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\hex6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[16]~73_combout\,
	devoe => ww_devoe,
	o => \hex6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\hex6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[15]~74_combout\,
	devoe => ww_devoe,
	o => \hex6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\hex6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[14]~75_combout\,
	devoe => ww_devoe,
	o => \hex6[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\hex7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[27]~82_combout\,
	devoe => ww_devoe,
	o => \hex7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\hex7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node\(26),
	devoe => ww_devoe,
	o => \hex7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\hex7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[25]~76_combout\,
	devoe => ww_devoe,
	o => \hex7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\hex7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[24]~77_combout\,
	devoe => ww_devoe,
	o => \hex7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\hex7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[23]~78_combout\,
	devoe => ww_devoe,
	o => \hex7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\hex7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[22]~79_combout\,
	devoe => ww_devoe,
	o => \hex7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\hex7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|auto_generated|result_node[21]~80_combout\,
	devoe => ww_devoe,
	o => \hex7[0]~output_o\);

-- Location: IOIBUF_X115_Y6_N15
\in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(7),
	o => \in[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(0),
	o => \in[0]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(4),
	o => \in[4]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(2),
	o => \in[2]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(1),
	o => \in[1]~input_o\);

-- Location: LCCOMB_X109_Y8_N8
\inst|inst1|inst|inst4|inst2|inst|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst4|inst2|inst|1~0_combout\ = \in[2]~input_o\ $ (((\in[0]~input_o\) # ((\in[1]~input_o\) # (!\in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \in[4]~input_o\,
	datac => \in[2]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst|inst1|inst|inst4|inst2|inst|1~0_combout\);

-- Location: LCCOMB_X109_Y8_N12
\inst|inst1|inst|inst4|inst1|inst|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst4|inst1|inst|1~combout\ = \in[1]~input_o\ $ (((\in[4]~input_o\ & \in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in[4]~input_o\,
	datac => \in[0]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst|inst1|inst|inst4|inst1|inst|1~combout\);

-- Location: IOIBUF_X115_Y9_N22
\in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(5),
	o => \in[5]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\in[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(9),
	o => \in[9]~input_o\);

-- Location: LCCOMB_X109_Y8_N0
\inst|inst3|inst|inst4|inst|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst4|inst|inst2~0_combout\ = (!\in[5]~input_o\ & \in[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in[5]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst|inst3|inst|inst4|inst|inst2~0_combout\);

-- Location: IOIBUF_X115_Y10_N8
\in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(6),
	o => \in[6]~input_o\);

-- Location: LCCOMB_X109_Y8_N10
\inst|inst3|inst|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst1~0_combout\ = \in[6]~input_o\ $ (\in[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in[6]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst|inst3|inst|inst1~0_combout\);

-- Location: LCCOMB_X109_Y8_N24
\inst|inst|inst|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst|inst2~0_combout\ = (\in[0]~input_o\ & \in[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datad => \in[5]~input_o\,
	combout => \inst|inst|inst|inst2~0_combout\);

-- Location: LCCOMB_X109_Y8_N14
\inst|inst|inst1|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1|inst5~0_combout\ = (\inst|inst1|inst|inst4|inst1|inst|1~combout\ & ((\inst|inst|inst|inst2~0_combout\) # (\inst|inst3|inst|inst4|inst|inst2~0_combout\ $ (\inst|inst3|inst|inst1~0_combout\)))) # 
-- (!\inst|inst1|inst|inst4|inst1|inst|1~combout\ & (\inst|inst|inst|inst2~0_combout\ & (\inst|inst3|inst|inst4|inst|inst2~0_combout\ $ (\inst|inst3|inst|inst1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst|inst4|inst1|inst|1~combout\,
	datab => \inst|inst3|inst|inst4|inst|inst2~0_combout\,
	datac => \inst|inst3|inst|inst1~0_combout\,
	datad => \inst|inst|inst|inst2~0_combout\,
	combout => \inst|inst|inst1|inst5~0_combout\);

-- Location: LCCOMB_X109_Y8_N20
\inst|inst3|inst|inst4|inst1|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst4|inst1|inst3~combout\ = (\in[6]~input_o\) # ((\in[5]~input_o\) # (!\in[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[6]~input_o\,
	datab => \in[5]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst|inst3|inst|inst4|inst1|inst3~combout\);

-- Location: LCCOMB_X109_Y8_N18
\inst|inst20|inst|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20|inst|inst2~0_combout\ = \in[7]~input_o\ $ (\inst|inst1|inst|inst4|inst2|inst|1~0_combout\ $ (\inst|inst|inst1|inst5~0_combout\ $ (\inst|inst3|inst|inst4|inst1|inst3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \inst|inst1|inst|inst4|inst2|inst|1~0_combout\,
	datac => \inst|inst|inst1|inst5~0_combout\,
	datad => \inst|inst3|inst|inst4|inst1|inst3~combout\,
	combout => \inst|inst20|inst|inst2~0_combout\);

-- Location: LCCOMB_X109_Y6_N16
\inst3|inst|inst|inst58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst|inst58~0_combout\ = (!\in[0]~input_o\ & !\in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in[0]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst3|inst|inst|inst58~0_combout\);

-- Location: IOIBUF_X115_Y5_N15
\in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(3),
	o => \in[3]~input_o\);

-- Location: LCCOMB_X109_Y6_N20
\inst|inst1|inst|inst4|inst3|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst4|inst3|inst3~combout\ = (!\in[2]~input_o\ & (\inst3|inst|inst|inst58~0_combout\ & (!\in[3]~input_o\ & \in[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[2]~input_o\,
	datab => \inst3|inst|inst|inst58~0_combout\,
	datac => \in[3]~input_o\,
	datad => \in[4]~input_o\,
	combout => \inst|inst1|inst|inst4|inst3|inst3~combout\);

-- Location: IOIBUF_X115_Y13_N1
\in[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(8),
	o => \in[8]~input_o\);

-- Location: LCCOMB_X110_Y8_N8
\inst|inst3|inst|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst3~combout\ = \in[8]~input_o\ $ (\in[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[8]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst|inst3|inst|inst3~combout\);

-- Location: LCCOMB_X109_Y8_N26
\inst|inst3|inst|inst4|inst2|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst4|inst2|inst3~combout\ = (!\in[7]~input_o\ & (!\in[5]~input_o\ & (!\in[6]~input_o\ & \in[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[5]~input_o\,
	datac => \in[6]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst|inst3|inst|inst4|inst2|inst3~combout\);

-- Location: LCCOMB_X109_Y6_N18
\inst|inst1|inst|inst4|inst3|inst|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst4|inst3|inst|1~combout\ = \in[3]~input_o\ $ ((((!\in[2]~input_o\ & \inst3|inst|inst|inst58~0_combout\)) # (!\in[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[2]~input_o\,
	datab => \inst3|inst|inst|inst58~0_combout\,
	datac => \in[3]~input_o\,
	datad => \in[4]~input_o\,
	combout => \inst|inst1|inst|inst4|inst3|inst|1~combout\);

-- Location: LCCOMB_X109_Y8_N22
\inst|inst3|inst|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst|inst2~combout\ = \in[7]~input_o\ $ (\in[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst|inst3|inst|inst2~combout\);

-- Location: LCCOMB_X109_Y8_N16
\inst|inst1|inst|inst4|inst2|inst|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst4|inst2|inst|1~combout\ = \in[2]~input_o\ $ ((((!\in[0]~input_o\ & !\in[1]~input_o\)) # (!\in[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \in[4]~input_o\,
	datac => \in[2]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst|inst1|inst|inst4|inst2|inst|1~combout\);

-- Location: LCCOMB_X109_Y8_N2
\inst|inst|inst2|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst2|inst5~0_combout\ = (\inst|inst1|inst|inst4|inst2|inst|1~combout\ & (\inst|inst|inst1|inst5~0_combout\ & (\inst|inst3|inst|inst2~combout\ $ (!\inst|inst3|inst|inst4|inst1|inst3~combout\)))) # (!\inst|inst1|inst|inst4|inst2|inst|1~combout\ 
-- & ((\inst|inst|inst1|inst5~0_combout\) # (\inst|inst3|inst|inst2~combout\ $ (!\inst|inst3|inst|inst4|inst1|inst3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst|inst2~combout\,
	datab => \inst|inst1|inst|inst4|inst2|inst|1~combout\,
	datac => \inst|inst|inst1|inst5~0_combout\,
	datad => \inst|inst3|inst|inst4|inst1|inst3~combout\,
	combout => \inst|inst|inst2|inst5~0_combout\);

-- Location: LCCOMB_X110_Y8_N10
\inst|inst|inst3|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst3|inst5~0_combout\ = (\inst|inst1|inst|inst4|inst3|inst|1~combout\ & (\inst|inst|inst2|inst5~0_combout\ & (\inst|inst3|inst|inst3~combout\ $ (\inst|inst3|inst|inst4|inst2|inst3~combout\)))) # (!\inst|inst1|inst|inst4|inst3|inst|1~combout\ & 
-- ((\inst|inst|inst2|inst5~0_combout\) # (\inst|inst3|inst|inst3~combout\ $ (\inst|inst3|inst|inst4|inst2|inst3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst|inst4|inst3|inst|1~combout\,
	datab => \inst|inst3|inst|inst3~combout\,
	datac => \inst|inst3|inst|inst4|inst2|inst3~combout\,
	datad => \inst|inst|inst2|inst5~0_combout\,
	combout => \inst|inst|inst3|inst5~0_combout\);

-- Location: LCCOMB_X110_Y8_N28
\inst|inst|inst4|inst|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst4|inst|1~0_combout\ = \inst|inst1|inst|inst4|inst3|inst3~combout\ $ (\inst|inst|inst3|inst5~0_combout\ $ (((\inst|inst3|inst|inst3~combout\ & \inst|inst3|inst|inst4|inst2|inst3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1|inst|inst4|inst3|inst3~combout\,
	datab => \inst|inst3|inst|inst3~combout\,
	datac => \inst|inst3|inst|inst4|inst2|inst3~combout\,
	datad => \inst|inst|inst3|inst5~0_combout\,
	combout => \inst|inst|inst4|inst|1~0_combout\);

-- Location: LCCOMB_X109_Y8_N28
\inst|inst1|inst|inst4|inst1|inst|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst|inst4|inst1|inst|1~0_combout\ = \in[1]~input_o\ $ (((\in[4]~input_o\ & !\in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in[4]~input_o\,
	datac => \in[0]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst|inst1|inst|inst4|inst1|inst|1~0_combout\);

-- Location: LCCOMB_X109_Y8_N30
\inst|inst20|inst|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20|inst|inst1~0_combout\ = \inst|inst3|inst|inst4|inst|inst2~0_combout\ $ (\inst|inst1|inst|inst4|inst1|inst|1~0_combout\ $ (\in[6]~input_o\ $ (\inst|inst|inst|inst2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3|inst|inst4|inst|inst2~0_combout\,
	datab => \inst|inst1|inst|inst4|inst1|inst|1~0_combout\,
	datac => \in[6]~input_o\,
	datad => \inst|inst|inst|inst2~0_combout\,
	combout => \inst|inst20|inst|inst1~0_combout\);

-- Location: LCCOMB_X110_Y7_N16
\inst|inst20|inst|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20|inst|inst~0_combout\ = \in[0]~input_o\ $ (\in[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in[0]~input_o\,
	datac => \in[5]~input_o\,
	combout => \inst|inst20|inst|inst~0_combout\);

-- Location: LCCOMB_X113_Y8_N24
\inst4|auto_generated|result_node[20]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[20]~22_combout\ = \in[9]~input_o\ $ (\in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[9]~input_o\,
	datac => \in[4]~input_o\,
	combout => \inst4|auto_generated|result_node[20]~22_combout\);

-- Location: LCCOMB_X110_Y7_N10
\inst|inst20|inst|inst4|inst1|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20|inst|inst4|inst1|inst3~combout\ = (\inst|inst20|inst|inst~0_combout\) # ((\inst|inst20|inst|inst1~0_combout\ & ((\inst|inst|inst4|inst|1~0_combout\) # (!\inst4|auto_generated|result_node[20]~22_combout\))) # 
-- (!\inst|inst20|inst|inst1~0_combout\ & ((\inst4|auto_generated|result_node[20]~22_combout\) # (!\inst|inst|inst4|inst|1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|inst|inst1~0_combout\,
	datab => \inst|inst20|inst|inst~0_combout\,
	datac => \inst4|auto_generated|result_node[20]~22_combout\,
	datad => \inst|inst|inst4|inst|1~0_combout\,
	combout => \inst|inst20|inst|inst4|inst1|inst3~combout\);

-- Location: LCCOMB_X110_Y7_N6
\inst|inst20|inst|inst4|inst2|inst|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20|inst|inst4|inst2|inst|1~combout\ = \inst|inst20|inst|inst2~0_combout\ $ (\inst|inst|inst4|inst|1~0_combout\ $ (\inst|inst20|inst|inst4|inst1|inst3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|inst|inst2~0_combout\,
	datab => \inst|inst|inst4|inst|1~0_combout\,
	datad => \inst|inst20|inst|inst4|inst1|inst3~combout\,
	combout => \inst|inst20|inst|inst4|inst2|inst|1~combout\);

-- Location: LCCOMB_X110_Y8_N30
\inst|inst20|inst|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20|inst|inst3~0_combout\ = \inst|inst|inst2|inst5~0_combout\ $ (\in[3]~input_o\ $ (\inst|inst3|inst|inst4|inst2|inst3~combout\ $ (\in[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst2|inst5~0_combout\,
	datab => \in[3]~input_o\,
	datac => \inst|inst3|inst|inst4|inst2|inst3~combout\,
	datad => \in[8]~input_o\,
	combout => \inst|inst20|inst|inst3~0_combout\);

-- Location: LCCOMB_X109_Y6_N22
\inst|inst20|inst|inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20|inst|inst3~1_combout\ = \inst|inst20|inst|inst3~0_combout\ $ (((\in[2]~input_o\) # ((!\in[4]~input_o\) # (!\inst3|inst|inst|inst58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[2]~input_o\,
	datab => \inst|inst20|inst|inst3~0_combout\,
	datac => \inst3|inst|inst|inst58~0_combout\,
	datad => \in[4]~input_o\,
	combout => \inst|inst20|inst|inst3~1_combout\);

-- Location: LCCOMB_X110_Y7_N20
\inst|inst20|inst|inst4|inst3|inst|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20|inst|inst4|inst3|inst|1~combout\ = \inst|inst20|inst|inst3~1_combout\ $ (((\inst|inst20|inst|inst4|inst1|inst3~combout\ & (\inst|inst|inst4|inst|1~0_combout\)) # (!\inst|inst20|inst|inst4|inst1|inst3~combout\ & 
-- ((\inst|inst20|inst|inst2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|inst|inst4|inst1|inst3~combout\,
	datab => \inst|inst|inst4|inst|1~0_combout\,
	datac => \inst|inst20|inst|inst3~1_combout\,
	datad => \inst|inst20|inst|inst2~0_combout\,
	combout => \inst|inst20|inst|inst4|inst3|inst|1~combout\);

-- Location: LCCOMB_X110_Y7_N0
\inst|inst20|inst|inst4|inst1|inst|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20|inst|inst4|inst1|inst|1~0_combout\ = \inst|inst20|inst|inst1~0_combout\ $ (((\inst|inst20|inst|inst~0_combout\ & ((\inst|inst|inst4|inst|1~0_combout\))) # (!\inst|inst20|inst|inst~0_combout\ & 
-- (\inst4|auto_generated|result_node[20]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|inst|inst1~0_combout\,
	datab => \inst|inst20|inst|inst~0_combout\,
	datac => \inst4|auto_generated|result_node[20]~22_combout\,
	datad => \inst|inst|inst4|inst|1~0_combout\,
	combout => \inst|inst20|inst|inst4|inst1|inst|1~0_combout\);

-- Location: LCCOMB_X110_Y7_N2
\inst|inst9|inst|inst59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst|inst59~combout\ = (\inst|inst20|inst|inst~0_combout\ & (\inst|inst20|inst|inst4|inst3|inst|1~combout\ & (\inst|inst20|inst|inst4|inst2|inst|1~combout\ $ (\inst|inst20|inst|inst4|inst1|inst|1~0_combout\)))) # 
-- (!\inst|inst20|inst|inst~0_combout\ & (!\inst|inst20|inst|inst4|inst1|inst|1~0_combout\ & (\inst|inst20|inst|inst4|inst2|inst|1~combout\ $ (!\inst|inst20|inst|inst4|inst3|inst|1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|inst|inst4|inst2|inst|1~combout\,
	datab => \inst|inst20|inst|inst4|inst3|inst|1~combout\,
	datac => \inst|inst20|inst|inst4|inst1|inst|1~0_combout\,
	datad => \inst|inst20|inst|inst~0_combout\,
	combout => \inst|inst9|inst|inst59~combout\);

-- Location: LCCOMB_X111_Y8_N22
\inst1|inst2|inst3|inst|inst|inst|inst5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst3|inst|inst|inst|inst5~combout\ = (\in[5]~input_o\) # (!\in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in[0]~input_o\,
	datad => \in[5]~input_o\,
	combout => \inst1|inst2|inst3|inst|inst|inst|inst5~combout\);

-- Location: LCCOMB_X112_Y8_N24
\inst1|inst2|inst|inst|inst3|inst|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\ = (!\in[2]~input_o\ & !\in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in[2]~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\);

-- Location: LCCOMB_X112_Y8_N10
\inst1|inst2|inst|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst|inst4|inst4~0_combout\ = (\in[8]~input_o\ & (((\in[1]~input_o\) # (!\inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\)) # (!\in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\,
	datac => \in[1]~input_o\,
	datad => \in[8]~input_o\,
	combout => \inst1|inst2|inst|inst4|inst4~0_combout\);

-- Location: LCCOMB_X112_Y8_N28
\inst1|inst2|inst1|inst|inst|inst|inst5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst1|inst|inst|inst|inst5~combout\ = (\in[7]~input_o\) # (!\in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in[0]~input_o\,
	datad => \in[7]~input_o\,
	combout => \inst1|inst2|inst1|inst|inst|inst|inst5~combout\);

-- Location: LCCOMB_X112_Y8_N22
\inst1|inst2|inst1|inst|inst3|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\ = (\inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\ & ((\inst1|inst2|inst|inst4|inst4~0_combout\ & ((\inst1|inst2|inst1|inst|inst|inst|inst5~combout\) # (!\in[1]~input_o\))) # 
-- (!\inst1|inst2|inst|inst4|inst4~0_combout\ & (\inst1|inst2|inst1|inst|inst|inst|inst5~combout\ & !\in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst|inst4|inst4~0_combout\,
	datab => \inst1|inst2|inst1|inst|inst|inst|inst5~combout\,
	datac => \in[1]~input_o\,
	datad => \inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\,
	combout => \inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\);

-- Location: LCCOMB_X112_Y8_N0
\inst1|inst2|inst1|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst1|inst4|inst4~0_combout\ = \in[7]~input_o\ $ (((\in[0]~input_o\ & \inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datac => \inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\,
	datad => \in[7]~input_o\,
	combout => \inst1|inst2|inst1|inst4|inst4~0_combout\);

-- Location: LCCOMB_X112_Y8_N2
\inst1|inst2|inst2|inst|inst1|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst2|inst|inst1|inst|inst5~0_combout\ = (\inst1|inst2|inst1|inst4|inst4~0_combout\ & (((\in[6]~input_o\) # (!\in[1]~input_o\)) # (!\in[0]~input_o\))) # (!\inst1|inst2|inst1|inst4|inst4~0_combout\ & (!\in[1]~input_o\ & ((\in[6]~input_o\) # 
-- (!\in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \inst1|inst2|inst1|inst4|inst4~0_combout\,
	datac => \in[1]~input_o\,
	datad => \in[6]~input_o\,
	combout => \inst1|inst2|inst2|inst|inst1|inst|inst5~0_combout\);

-- Location: LCCOMB_X112_Y8_N4
\inst1|inst2|inst1|inst5|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst1|inst5|inst4~0_combout\ = (!\in[0]~input_o\ & (\inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\ & (!\in[1]~input_o\ & \in[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\,
	datac => \in[1]~input_o\,
	datad => \in[8]~input_o\,
	combout => \inst1|inst2|inst1|inst5|inst4~0_combout\);

-- Location: LCCOMB_X112_Y8_N6
\inst1|inst2|inst1|inst|inst2|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst1|inst|inst2|inst|inst5~0_combout\ = (!\in[2]~input_o\ & ((\inst1|inst2|inst|inst4|inst4~0_combout\ & ((\inst1|inst2|inst1|inst|inst|inst|inst5~combout\) # (!\in[1]~input_o\))) # (!\inst1|inst2|inst|inst4|inst4~0_combout\ & 
-- (!\in[1]~input_o\ & \inst1|inst2|inst1|inst|inst|inst|inst5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst|inst4|inst4~0_combout\,
	datab => \in[2]~input_o\,
	datac => \in[1]~input_o\,
	datad => \inst1|inst2|inst1|inst|inst|inst|inst5~combout\,
	combout => \inst1|inst2|inst1|inst|inst2|inst|inst5~0_combout\);

-- Location: LCCOMB_X112_Y8_N8
\inst1|inst2|inst1|inst5|inst4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst1|inst5|inst4~1_combout\ = (\inst1|inst2|inst1|inst5|inst4~0_combout\) # ((\inst1|inst2|inst|inst4|inst4~0_combout\ & ((\in[3]~input_o\) # (!\inst1|inst2|inst1|inst|inst2|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst|inst4|inst4~0_combout\,
	datab => \inst1|inst2|inst1|inst5|inst4~0_combout\,
	datac => \inst1|inst2|inst1|inst|inst2|inst|inst5~0_combout\,
	datad => \in[3]~input_o\,
	combout => \inst1|inst2|inst1|inst5|inst4~1_combout\);

-- Location: LCCOMB_X111_Y8_N16
\inst1|inst2|inst2|inst|inst3|inst|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst2|inst|inst3|inst|inst4~0_combout\ = (\in[2]~input_o\ & (\in[8]~input_o\ & !\in[3]~input_o\)) # (!\in[2]~input_o\ & ((\in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[8]~input_o\,
	datac => \in[2]~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst1|inst2|inst2|inst|inst3|inst|inst4~0_combout\);

-- Location: LCCOMB_X111_Y8_N2
\inst1|inst2|inst2|inst|inst3|inst|inst4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ = (\inst1|inst2|inst2|inst|inst1|inst|inst5~0_combout\ & ((\in[2]~input_o\ $ (!\inst1|inst2|inst2|inst|inst3|inst|inst4~0_combout\)))) # (!\inst1|inst2|inst2|inst|inst1|inst|inst5~0_combout\ & 
-- (\inst1|inst2|inst1|inst5|inst4~1_combout\ & (!\in[2]~input_o\ & !\inst1|inst2|inst2|inst|inst3|inst|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst2|inst|inst1|inst|inst5~0_combout\,
	datab => \inst1|inst2|inst1|inst5|inst4~1_combout\,
	datac => \in[2]~input_o\,
	datad => \inst1|inst2|inst2|inst|inst3|inst|inst4~0_combout\,
	combout => \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\);

-- Location: LCCOMB_X111_Y8_N8
\inst1|inst2|inst2|inst6|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst2|inst6|inst4~0_combout\ = (\inst1|inst2|inst1|inst5|inst4~0_combout\) # ((!\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ & \inst1|inst2|inst1|inst5|inst4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\,
	datac => \inst1|inst2|inst1|inst5|inst4~1_combout\,
	datad => \inst1|inst2|inst1|inst5|inst4~0_combout\,
	combout => \inst1|inst2|inst2|inst6|inst4~0_combout\);

-- Location: LCCOMB_X112_Y8_N18
\inst1|inst2|inst2|inst|inst|inst|inst5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst2|inst|inst|inst|inst5~combout\ = (\in[6]~input_o\) # (!\in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in[0]~input_o\,
	datad => \in[6]~input_o\,
	combout => \inst1|inst2|inst2|inst|inst|inst|inst5~combout\);

-- Location: LCCOMB_X111_Y8_N20
\inst1|inst2|inst2|inst5|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst2|inst5|inst4~0_combout\ = \inst1|inst2|inst1|inst4|inst4~0_combout\ $ (((\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ & (\inst1|inst2|inst2|inst|inst|inst|inst5~combout\ $ (!\in[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst2|inst|inst|inst|inst5~combout\,
	datab => \inst1|inst2|inst1|inst4|inst4~0_combout\,
	datac => \in[1]~input_o\,
	datad => \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\,
	combout => \inst1|inst2|inst2|inst5|inst4~0_combout\);

-- Location: LCCOMB_X111_Y8_N10
\inst1|inst2|inst3|inst|inst2|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst3|inst|inst2|inst|inst5~0_combout\ = \in[6]~input_o\ $ (((\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ & \in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[6]~input_o\,
	datab => \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\,
	datac => \in[0]~input_o\,
	combout => \inst1|inst2|inst3|inst|inst2|inst|inst5~0_combout\);

-- Location: LCCOMB_X111_Y8_N28
\inst1|inst2|inst3|inst|inst2|inst|inst5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst3|inst|inst2|inst|inst5~1_combout\ = (\inst1|inst2|inst3|inst|inst2|inst|inst5~0_combout\ & (\in[0]~input_o\ & (\in[1]~input_o\ & !\in[5]~input_o\))) # (!\inst1|inst2|inst3|inst|inst2|inst|inst5~0_combout\ & ((\in[1]~input_o\) # 
-- ((\in[0]~input_o\ & !\in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst|inst2|inst|inst5~0_combout\,
	datab => \in[0]~input_o\,
	datac => \in[1]~input_o\,
	datad => \in[5]~input_o\,
	combout => \inst1|inst2|inst3|inst|inst2|inst|inst5~1_combout\);

-- Location: LCCOMB_X111_Y8_N14
\inst1|inst2|inst3|inst|inst2|inst|inst5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst3|inst|inst2|inst|inst5~2_combout\ = (\inst1|inst2|inst2|inst5|inst4~0_combout\ & ((!\inst1|inst2|inst3|inst|inst2|inst|inst5~1_combout\) # (!\in[2]~input_o\))) # (!\inst1|inst2|inst2|inst5|inst4~0_combout\ & (!\in[2]~input_o\ & 
-- !\inst1|inst2|inst3|inst|inst2|inst|inst5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|inst2|inst5|inst4~0_combout\,
	datac => \in[2]~input_o\,
	datad => \inst1|inst2|inst3|inst|inst2|inst|inst5~1_combout\,
	combout => \inst1|inst2|inst3|inst|inst2|inst|inst5~2_combout\);

-- Location: LCCOMB_X111_Y8_N18
\inst1|inst2|inst3|inst|inst3|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ = (\inst1|inst2|inst3|inst|inst2|inst|inst5~2_combout\ & ((\in[8]~input_o\) # ((!\in[3]~input_o\)))) # (!\inst1|inst2|inst3|inst|inst2|inst|inst5~2_combout\ & (((\inst1|inst2|inst2|inst6|inst4~0_combout\ 
-- & !\in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[8]~input_o\,
	datab => \inst1|inst2|inst2|inst6|inst4~0_combout\,
	datac => \inst1|inst2|inst3|inst|inst2|inst|inst5~2_combout\,
	datad => \in[3]~input_o\,
	combout => \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\);

-- Location: LCCOMB_X111_Y8_N6
\inst1|inst2|inst2|inst4|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst2|inst4|inst4~0_combout\ = \in[6]~input_o\ $ (((\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ & \in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[6]~input_o\,
	datab => \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\,
	datac => \in[0]~input_o\,
	combout => \inst1|inst2|inst2|inst4|inst4~0_combout\);

-- Location: LCCOMB_X111_Y8_N24
\inst1|inst2|inst3|inst5|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst3|inst5|inst4~0_combout\ = \inst1|inst2|inst2|inst4|inst4~0_combout\ $ (((\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ & (\inst1|inst2|inst3|inst|inst|inst|inst5~combout\ $ (!\in[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst|inst|inst|inst5~combout\,
	datab => \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\,
	datac => \in[1]~input_o\,
	datad => \inst1|inst2|inst2|inst4|inst4~0_combout\,
	combout => \inst1|inst2|inst3|inst5|inst4~0_combout\);

-- Location: LCCOMB_X111_Y8_N26
\inst1|inst2|inst3|inst7|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst3|inst7|inst4~0_combout\ = (\inst1|inst2|inst2|inst6|inst4~0_combout\ & (\inst1|inst2|inst3|inst|inst2|inst|inst5~2_combout\ $ (\in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|inst2|inst6|inst4~0_combout\,
	datac => \inst1|inst2|inst3|inst|inst2|inst|inst5~2_combout\,
	datad => \in[3]~input_o\,
	combout => \inst1|inst2|inst3|inst7|inst4~0_combout\);

-- Location: LCCOMB_X111_Y8_N30
\inst1|inst2|inst3|inst4|inst4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst3|inst4|inst4~2_combout\ = \in[5]~input_o\ $ (((\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ & \in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\,
	datac => \in[0]~input_o\,
	datad => \in[5]~input_o\,
	combout => \inst1|inst2|inst3|inst4|inst4~2_combout\);

-- Location: LCCOMB_X111_Y8_N0
\inst1|inst2|inst3|inst|inst1|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst3|inst|inst1|inst|inst5~0_combout\ = (\inst1|inst2|inst2|inst4|inst4~0_combout\ & (((\in[5]~input_o\) # (!\in[1]~input_o\)) # (!\in[0]~input_o\))) # (!\inst1|inst2|inst2|inst4|inst4~0_combout\ & (!\in[1]~input_o\ & ((\in[5]~input_o\) # 
-- (!\in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst2|inst4|inst4~0_combout\,
	datab => \in[0]~input_o\,
	datac => \in[1]~input_o\,
	datad => \in[5]~input_o\,
	combout => \inst1|inst2|inst3|inst|inst1|inst|inst5~0_combout\);

-- Location: LCCOMB_X111_Y8_N4
\inst1|inst2|inst3|inst6|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst3|inst6|inst4~0_combout\ = \inst1|inst2|inst2|inst5|inst4~0_combout\ $ (((\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ & (\inst1|inst2|inst3|inst|inst1|inst|inst5~0_combout\ $ (!\in[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\,
	datab => \inst1|inst2|inst3|inst|inst1|inst|inst5~0_combout\,
	datac => \in[2]~input_o\,
	datad => \inst1|inst2|inst2|inst5|inst4~0_combout\,
	combout => \inst1|inst2|inst3|inst6|inst4~0_combout\);

-- Location: LCCOMB_X111_Y7_N24
\inst1|inst4|inst|inst59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst|inst59~combout\ = (\inst1|inst2|inst3|inst4|inst4~2_combout\ & (!\inst1|inst2|inst3|inst7|inst4~0_combout\ & (\inst1|inst2|inst3|inst5|inst4~0_combout\ $ (!\inst1|inst2|inst3|inst6|inst4~0_combout\)))) # 
-- (!\inst1|inst2|inst3|inst4|inst4~2_combout\ & (!\inst1|inst2|inst3|inst5|inst4~0_combout\ & (\inst1|inst2|inst3|inst7|inst4~0_combout\ $ (!\inst1|inst2|inst3|inst6|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst5|inst4~0_combout\,
	datab => \inst1|inst2|inst3|inst7|inst4~0_combout\,
	datac => \inst1|inst2|inst3|inst4|inst4~2_combout\,
	datad => \inst1|inst2|inst3|inst6|inst4~0_combout\,
	combout => \inst1|inst4|inst|inst59~combout\);

-- Location: IOIBUF_X115_Y14_N1
\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: LCCOMB_X111_Y7_N2
\inst4|auto_generated|result_node[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[6]~23_combout\ = (\op[0]~input_o\ & (((\op[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & ((\inst1|inst4|inst|inst59~combout\))) # (!\op[1]~input_o\ & (\inst|inst9|inst|inst59~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|inst|inst59~combout\,
	datab => \inst1|inst4|inst|inst59~combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[6]~23_combout\);

-- Location: LCCOMB_X112_Y9_N26
\inst7|inst2|inst5|inst1|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst5|inst1|inst2~combout\ = (\in[6]~input_o\ & \in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in[6]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst7|inst2|inst5|inst1|inst2~combout\);

-- Location: LCCOMB_X112_Y9_N0
\inst7|inst2|inst5|inst|inst|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst5|inst|inst|inst2~combout\ = (\in[0]~input_o\ & (\in[6]~input_o\ & (\in[5]~input_o\ & \in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \in[6]~input_o\,
	datac => \in[5]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst7|inst2|inst5|inst|inst|inst2~combout\);

-- Location: LCCOMB_X112_Y9_N20
\inst7|inst2|inst5|inst1|inst|inst|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst5|inst1|inst|inst|1~combout\ = \inst7|inst2|inst5|inst1|inst2~combout\ $ (\inst7|inst2|inst5|inst|inst|inst2~combout\ $ (((\in[5]~input_o\ & \in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst5|inst1|inst2~combout\,
	datab => \inst7|inst2|inst5|inst|inst|inst2~combout\,
	datac => \in[5]~input_o\,
	datad => \in[2]~input_o\,
	combout => \inst7|inst2|inst5|inst1|inst|inst|1~combout\);

-- Location: LCCOMB_X112_Y9_N10
\inst7|inst2|inst6|inst|inst|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst6|inst|inst|inst2~combout\ = (\in[0]~input_o\ & (\inst7|inst2|inst5|inst1|inst|inst|1~combout\ & \in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \inst7|inst2|inst5|inst1|inst|inst|1~combout\,
	datad => \in[7]~input_o\,
	combout => \inst7|inst2|inst6|inst|inst|inst2~combout\);

-- Location: LCCOMB_X112_Y9_N30
\inst7|inst2|inst5|inst1|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst5|inst1|inst|inst5~0_combout\ = (\inst7|inst2|inst5|inst1|inst2~combout\ & ((\inst7|inst2|inst5|inst|inst|inst2~combout\) # ((\in[5]~input_o\ & \in[2]~input_o\)))) # (!\inst7|inst2|inst5|inst1|inst2~combout\ & 
-- (\inst7|inst2|inst5|inst|inst|inst2~combout\ & (\in[5]~input_o\ & \in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst5|inst1|inst2~combout\,
	datab => \inst7|inst2|inst5|inst|inst|inst2~combout\,
	datac => \in[5]~input_o\,
	datad => \in[2]~input_o\,
	combout => \inst7|inst2|inst5|inst1|inst|inst5~0_combout\);

-- Location: LCCOMB_X112_Y9_N24
\inst7|inst2|inst5|inst2|inst|inst|3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst5|inst2|inst|inst|3~combout\ = \inst7|inst2|inst5|inst1|inst|inst5~0_combout\ $ (((\in[3]~input_o\ & \in[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[3]~input_o\,
	datab => \in[5]~input_o\,
	datac => \inst7|inst2|inst5|inst1|inst|inst5~0_combout\,
	combout => \inst7|inst2|inst5|inst2|inst|inst|3~combout\);

-- Location: LCCOMB_X112_Y9_N4
\inst7|inst2|inst6|inst1|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst6|inst1|inst2~combout\ = (\in[7]~input_o\ & \in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in[7]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst7|inst2|inst6|inst1|inst2~combout\);

-- Location: LCCOMB_X112_Y9_N18
\inst7|inst2|inst5|inst2|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst5|inst2|inst2~combout\ = (\in[2]~input_o\ & \in[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[2]~input_o\,
	datad => \in[6]~input_o\,
	combout => \inst7|inst2|inst5|inst2|inst2~combout\);

-- Location: LCCOMB_X112_Y9_N28
\inst7|inst2|inst6|inst1|inst|inst|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst6|inst1|inst|inst|1~combout\ = \inst7|inst2|inst6|inst|inst|inst2~combout\ $ (\inst7|inst2|inst5|inst2|inst|inst|3~combout\ $ (\inst7|inst2|inst6|inst1|inst2~combout\ $ (\inst7|inst2|inst5|inst2|inst2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst6|inst|inst|inst2~combout\,
	datab => \inst7|inst2|inst5|inst2|inst|inst|3~combout\,
	datac => \inst7|inst2|inst6|inst1|inst2~combout\,
	datad => \inst7|inst2|inst5|inst2|inst2~combout\,
	combout => \inst7|inst2|inst6|inst1|inst|inst|1~combout\);

-- Location: LCCOMB_X112_Y9_N22
\inst7|inst2|inst7|inst|inst|inst|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst7|inst|inst|inst|1~combout\ = \inst7|inst2|inst6|inst1|inst|inst|1~combout\ $ (((\in[0]~input_o\ & \in[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2|inst6|inst1|inst|inst|1~combout\,
	datac => \in[0]~input_o\,
	datad => \in[8]~input_o\,
	combout => \inst7|inst2|inst7|inst|inst|inst|1~combout\);

-- Location: LCCOMB_X112_Y9_N16
\inst7|inst2|inst5|inst|inst|inst|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst5|inst|inst|inst|1~combout\ = (\in[0]~input_o\ & (\in[6]~input_o\ $ (((\in[5]~input_o\ & \in[1]~input_o\))))) # (!\in[0]~input_o\ & (((\in[5]~input_o\ & \in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \in[6]~input_o\,
	datac => \in[5]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst7|inst2|inst5|inst|inst|inst|1~combout\);

-- Location: LCCOMB_X112_Y9_N6
\inst7|inst2|inst6|inst|inst|inst|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst6|inst|inst|inst|1~combout\ = \inst7|inst2|inst5|inst1|inst|inst|1~combout\ $ (((\in[0]~input_o\ & \in[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \inst7|inst2|inst5|inst1|inst|inst|1~combout\,
	datad => \in[7]~input_o\,
	combout => \inst7|inst2|inst6|inst|inst|inst|1~combout\);

-- Location: LCCOMB_X112_Y7_N24
\inst7|inst5|inst|inst59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|inst|inst59~combout\ = (\inst|inst|inst|inst2~0_combout\ & (!\inst7|inst2|inst7|inst|inst|inst|1~combout\ & (\inst7|inst2|inst5|inst|inst|inst|1~combout\ $ (!\inst7|inst2|inst6|inst|inst|inst|1~combout\)))) # 
-- (!\inst|inst|inst|inst2~0_combout\ & (!\inst7|inst2|inst5|inst|inst|inst|1~combout\ & (\inst7|inst2|inst7|inst|inst|inst|1~combout\ $ (!\inst7|inst2|inst6|inst|inst|inst|1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst2~0_combout\,
	datab => \inst7|inst2|inst7|inst|inst|inst|1~combout\,
	datac => \inst7|inst2|inst5|inst|inst|inst|1~combout\,
	datad => \inst7|inst2|inst6|inst|inst|inst|1~combout\,
	combout => \inst7|inst5|inst|inst59~combout\);

-- Location: LCCOMB_X110_Y6_N8
\inst2|inst|inst9|inst4|auto_generated|result_node[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst9|inst4|auto_generated|result_node[4]~0_combout\ = (\in[4]~input_o\) # (\in[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[4]~input_o\,
	datad => \in[5]~input_o\,
	combout => \inst2|inst|inst9|inst4|auto_generated|result_node[4]~0_combout\);

-- Location: LCCOMB_X111_Y6_N10
\inst2|inst|inst9|inst3|inst1|inst5|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst9|inst3|inst1|inst5|inst5~0_combout\ = (\in[6]~input_o\ & (!\in[9]~input_o\ & (\in[8]~input_o\))) # (!\in[6]~input_o\ & (((\inst2|inst|inst9|inst4|auto_generated|result_node[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[6]~input_o\,
	datab => \in[9]~input_o\,
	datac => \in[8]~input_o\,
	datad => \inst2|inst|inst9|inst4|auto_generated|result_node[4]~0_combout\,
	combout => \inst2|inst|inst9|inst3|inst1|inst5|inst5~0_combout\);

-- Location: LCCOMB_X111_Y6_N16
\inst2|inst|inst12|inst4|auto_generated|result_node[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst12|inst4|auto_generated|result_node[5]~0_combout\ = (\in[6]~input_o\ & (((\in[7]~input_o\)))) # (!\in[6]~input_o\ & (\in[8]~input_o\ & (\in[7]~input_o\ $ (\in[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[6]~input_o\,
	datab => \in[8]~input_o\,
	datac => \in[7]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst2|inst|inst12|inst4|auto_generated|result_node[5]~0_combout\);

-- Location: LCCOMB_X111_Y6_N30
\inst2|inst|inst12|inst4|auto_generated|result_node[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst12|inst4|auto_generated|result_node[6]~1_combout\ = (\in[9]~input_o\ & (\in[8]~input_o\ $ (((!\in[6]~input_o\ & !\in[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[6]~input_o\,
	datab => \in[8]~input_o\,
	datac => \in[7]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst2|inst|inst12|inst4|auto_generated|result_node[6]~1_combout\);

-- Location: LCCOMB_X111_Y6_N12
\inst8|inst|inst50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|inst50~0_combout\ = (!\in[8]~input_o\ & !\in[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in[8]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst8|inst|inst50~0_combout\);

-- Location: LCCOMB_X111_Y6_N18
\inst2|inst|inst10|inst3|inst1|inst3|inst5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\ = (!\inst2|inst|inst12|inst4|auto_generated|result_node[6]~1_combout\ & ((\inst2|inst|inst9|inst3|inst1|inst5|inst5~0_combout\ & (!\inst2|inst|inst12|inst4|auto_generated|result_node[5]~0_combout\ & 
-- !\inst8|inst|inst50~0_combout\)) # (!\inst2|inst|inst9|inst3|inst1|inst5|inst5~0_combout\ & ((!\inst8|inst|inst50~0_combout\) # (!\inst2|inst|inst12|inst4|auto_generated|result_node[5]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst9|inst3|inst1|inst5|inst5~0_combout\,
	datab => \inst2|inst|inst12|inst4|auto_generated|result_node[5]~0_combout\,
	datac => \inst2|inst|inst12|inst4|auto_generated|result_node[6]~1_combout\,
	datad => \inst8|inst|inst50~0_combout\,
	combout => \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\);

-- Location: LCCOMB_X111_Y6_N20
\inst2|inst|inst12|inst3|inst1|inst8|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ = (\in[8]~input_o\ & (((\in[9]~input_o\)))) # (!\in[8]~input_o\ & ((\in[6]~input_o\) # ((\in[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[6]~input_o\,
	datab => \in[8]~input_o\,
	datac => \in[7]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\);

-- Location: LCCOMB_X111_Y6_N6
\inst2|inst|inst9|inst4|auto_generated|result_node[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst9|inst4|auto_generated|result_node[4]~3_combout\ = \in[6]~input_o\ $ (((\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\ & ((!\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\))) # 
-- (!\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\ & (\inst2|inst|inst9|inst4|auto_generated|result_node[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst9|inst4|auto_generated|result_node[4]~0_combout\,
	datab => \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\,
	datac => \inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\,
	datad => \in[6]~input_o\,
	combout => \inst2|inst|inst9|inst4|auto_generated|result_node[4]~3_combout\);

-- Location: LCCOMB_X111_Y6_N8
\inst2|inst|inst9|inst4|auto_generated|result_node[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst9|inst4|auto_generated|result_node[5]~1_combout\ = (\inst2|inst|inst12|inst4|auto_generated|result_node[5]~0_combout\ & (\inst2|inst|inst9|inst3|inst1|inst5|inst5~0_combout\ $ (((!\inst8|inst|inst50~0_combout\))))) # 
-- (!\inst2|inst|inst12|inst4|auto_generated|result_node[5]~0_combout\ & (\inst2|inst|inst12|inst4|auto_generated|result_node[6]~1_combout\ & (\inst2|inst|inst9|inst3|inst1|inst5|inst5~0_combout\ $ (\inst8|inst|inst50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst9|inst3|inst1|inst5|inst5~0_combout\,
	datab => \inst2|inst|inst12|inst4|auto_generated|result_node[5]~0_combout\,
	datac => \inst2|inst|inst12|inst4|auto_generated|result_node[6]~1_combout\,
	datad => \inst8|inst|inst50~0_combout\,
	combout => \inst2|inst|inst9|inst4|auto_generated|result_node[5]~1_combout\);

-- Location: LCCOMB_X110_Y6_N26
\inst2|inst|inst9|inst4|auto_generated|result_node[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst9|inst4|auto_generated|result_node[3]~2_combout\ = \in[5]~input_o\ $ (((!\in[4]~input_o\ & !\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[4]~input_o\,
	datab => \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\,
	datad => \in[5]~input_o\,
	combout => \inst2|inst|inst9|inst4|auto_generated|result_node[3]~2_combout\);

-- Location: LCCOMB_X110_Y6_N30
\inst2|inst|inst10|inst3|inst1|inst3|inst5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst10|inst3|inst1|inst3|inst5~3_combout\ = (\in[4]~input_o\ & (((\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\)))) # (!\in[4]~input_o\ & ((\in[2]~input_o\) # ((\in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[2]~input_o\,
	datab => \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\,
	datac => \in[3]~input_o\,
	datad => \in[4]~input_o\,
	combout => \inst2|inst|inst10|inst3|inst1|inst3|inst5~3_combout\);

-- Location: LCCOMB_X110_Y6_N4
\inst2|inst|inst10|inst3|inst1|inst4|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst10|inst3|inst1|inst4|inst5~0_combout\ = (\inst2|inst|inst9|inst4|auto_generated|result_node[3]~2_combout\ & ((\inst2|inst|inst10|inst3|inst1|inst3|inst5~3_combout\) # (!\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\))) # 
-- (!\inst2|inst|inst9|inst4|auto_generated|result_node[3]~2_combout\ & (!\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ & \inst2|inst|inst10|inst3|inst1|inst3|inst5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst9|inst4|auto_generated|result_node[3]~2_combout\,
	datac => \inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\,
	datad => \inst2|inst|inst10|inst3|inst1|inst3|inst5~3_combout\,
	combout => \inst2|inst|inst10|inst3|inst1|inst4|inst5~0_combout\);

-- Location: LCCOMB_X111_Y6_N24
\inst2|inst|inst10|inst3|inst1|inst7|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ = (\inst2|inst|inst9|inst4|auto_generated|result_node[5]~1_combout\) # ((\inst2|inst|inst9|inst4|auto_generated|result_node[4]~3_combout\ & (\inst2|inst|inst10|inst3|inst1|inst4|inst5~0_combout\ & 
-- \inst8|inst|inst50~0_combout\)) # (!\inst2|inst|inst9|inst4|auto_generated|result_node[4]~3_combout\ & ((\inst2|inst|inst10|inst3|inst1|inst4|inst5~0_combout\) # (\inst8|inst|inst50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst9|inst4|auto_generated|result_node[4]~3_combout\,
	datab => \inst2|inst|inst9|inst4|auto_generated|result_node[5]~1_combout\,
	datac => \inst2|inst|inst10|inst3|inst1|inst4|inst5~0_combout\,
	datad => \inst8|inst|inst50~0_combout\,
	combout => \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\);

-- Location: LCCOMB_X110_Y6_N2
\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ = \in[3]~input_o\ $ (((!\in[2]~input_o\ & \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[2]~input_o\,
	datab => \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\,
	datac => \in[3]~input_o\,
	combout => \inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X110_Y6_N0
\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\ = \in[4]~input_o\ $ (((\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ & (!\inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\)) # 
-- (!\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ & ((\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[4]~input_o\,
	datab => \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\,
	datac => \inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\,
	datad => \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\,
	combout => \inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\);

-- Location: LCCOMB_X110_Y6_N14
\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\ = \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ $ (\in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\,
	datad => \in[2]~input_o\,
	combout => \inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X110_Y6_N28
\inst2|inst|inst10|inst4|auto_generated|result_node[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\ = \inst2|inst|inst9|inst4|auto_generated|result_node[3]~2_combout\ $ (((\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ & (\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ $ 
-- (!\inst2|inst|inst10|inst3|inst1|inst3|inst5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst9|inst4|auto_generated|result_node[3]~2_combout\,
	datab => \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\,
	datac => \inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\,
	datad => \inst2|inst|inst10|inst3|inst1|inst3|inst5~3_combout\,
	combout => \inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X113_Y7_N24
\inst4|auto_generated|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|_~0_combout\ = (\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\ & (!\inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\ & (\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ $ 
-- (\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\)))) # (!\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\ & (!\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ & 
-- (\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\ $ (\inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\,
	datab => \inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\,
	datac => \inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\,
	datad => \inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\,
	combout => \inst4|auto_generated|_~0_combout\);

-- Location: LCCOMB_X112_Y7_N10
\inst4|auto_generated|result_node[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[6]~24_combout\ = (\inst4|auto_generated|result_node[6]~23_combout\ & (((\inst4|auto_generated|_~0_combout\) # (!\op[0]~input_o\)))) # (!\inst4|auto_generated|result_node[6]~23_combout\ & (\inst7|inst5|inst|inst59~combout\ 
-- & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[6]~23_combout\,
	datab => \inst7|inst5|inst|inst59~combout\,
	datac => \op[0]~input_o\,
	datad => \inst4|auto_generated|_~0_combout\,
	combout => \inst4|auto_generated|result_node[6]~24_combout\);

-- Location: LCCOMB_X110_Y7_N12
\inst4|auto_generated|result_node[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[5]~27_combout\ = (\inst|inst20|inst|inst4|inst2|inst|1~combout\ & (\inst|inst20|inst|inst4|inst3|inst|1~combout\ & ((\inst|inst20|inst|inst4|inst1|inst|1~0_combout\) # (\inst|inst20|inst|inst~0_combout\)))) # 
-- (!\inst|inst20|inst|inst4|inst2|inst|1~combout\ & (\inst|inst20|inst|inst~0_combout\ & (\inst|inst20|inst|inst4|inst3|inst|1~combout\ $ (!\inst|inst20|inst|inst4|inst1|inst|1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|inst|inst4|inst2|inst|1~combout\,
	datab => \inst|inst20|inst|inst4|inst3|inst|1~combout\,
	datac => \inst|inst20|inst|inst4|inst1|inst|1~0_combout\,
	datad => \inst|inst20|inst|inst~0_combout\,
	combout => \inst4|auto_generated|result_node[5]~27_combout\);

-- Location: LCCOMB_X113_Y7_N2
\inst4|auto_generated|result_node[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[5]~25_combout\ = (\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ & (!\inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\ & 
-- ((\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\) # (\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\)))) # (!\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ & 
-- (\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\ & (\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\ $ (\inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\,
	datab => \inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\,
	datac => \inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\,
	datad => \inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\,
	combout => \inst4|auto_generated|result_node[5]~25_combout\);

-- Location: LCCOMB_X112_Y7_N12
\inst4|auto_generated|result_node[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[5]~26_combout\ = (\inst|inst|inst|inst2~0_combout\ & (\inst7|inst2|inst7|inst|inst|inst|1~combout\ $ (((\inst7|inst2|inst5|inst|inst|inst|1~combout\) # (!\inst7|inst2|inst6|inst|inst|inst|1~combout\))))) # 
-- (!\inst|inst|inst|inst2~0_combout\ & (!\inst7|inst2|inst7|inst|inst|inst|1~combout\ & (\inst7|inst2|inst5|inst|inst|inst|1~combout\ & !\inst7|inst2|inst6|inst|inst|inst|1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst2~0_combout\,
	datab => \inst7|inst2|inst7|inst|inst|inst|1~combout\,
	datac => \inst7|inst2|inst5|inst|inst|inst|1~combout\,
	datad => \inst7|inst2|inst6|inst|inst|inst|1~combout\,
	combout => \inst4|auto_generated|result_node[5]~26_combout\);

-- Location: LCCOMB_X111_Y7_N28
\inst4|auto_generated|result_node[5]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[5]~110_combout\ = (\op[0]~input_o\ & ((\op[1]~input_o\ & (\inst4|auto_generated|result_node[5]~25_combout\)) # (!\op[1]~input_o\ & ((\inst4|auto_generated|result_node[5]~26_combout\))))) # (!\op[0]~input_o\ & 
-- (((!\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[5]~25_combout\,
	datab => \inst4|auto_generated|result_node[5]~26_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[5]~110_combout\);

-- Location: LCCOMB_X111_Y7_N12
\inst4|auto_generated|result_node[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[5]~29_combout\ = (\inst1|inst2|inst3|inst5|inst4~0_combout\ & (!\inst1|inst2|inst3|inst7|inst4~0_combout\ & ((\inst1|inst2|inst3|inst4|inst4~2_combout\) # (!\inst1|inst2|inst3|inst6|inst4~0_combout\)))) # 
-- (!\inst1|inst2|inst3|inst5|inst4~0_combout\ & (\inst1|inst2|inst3|inst4|inst4~2_combout\ & (\inst1|inst2|inst3|inst7|inst4~0_combout\ $ (!\inst1|inst2|inst3|inst6|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst5|inst4~0_combout\,
	datab => \inst1|inst2|inst3|inst7|inst4~0_combout\,
	datac => \inst1|inst2|inst3|inst4|inst4~2_combout\,
	datad => \inst1|inst2|inst3|inst6|inst4~0_combout\,
	combout => \inst4|auto_generated|result_node[5]~29_combout\);

-- Location: LCCOMB_X111_Y7_N22
\inst4|auto_generated|result_node[5]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[5]~111_combout\ = (\inst4|auto_generated|result_node[5]~110_combout\ & ((\inst4|auto_generated|result_node[5]~27_combout\) # ((\op[0]~input_o\)))) # (!\inst4|auto_generated|result_node[5]~110_combout\ & 
-- (((!\op[0]~input_o\ & \inst4|auto_generated|result_node[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[5]~27_combout\,
	datab => \inst4|auto_generated|result_node[5]~110_combout\,
	datac => \op[0]~input_o\,
	datad => \inst4|auto_generated|result_node[5]~29_combout\,
	combout => \inst4|auto_generated|result_node[5]~111_combout\);

-- Location: LCCOMB_X112_Y7_N22
\inst4|auto_generated|result_node[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[4]~31_combout\ = (\inst7|inst2|inst5|inst|inst|inst|1~combout\ & (\inst|inst|inst|inst2~0_combout\ & (!\inst7|inst2|inst7|inst|inst|inst|1~combout\))) # (!\inst7|inst2|inst5|inst|inst|inst|1~combout\ & 
-- ((\inst7|inst2|inst6|inst|inst|inst|1~combout\ & ((!\inst7|inst2|inst7|inst|inst|inst|1~combout\))) # (!\inst7|inst2|inst6|inst|inst|inst|1~combout\ & (\inst|inst|inst|inst2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst2~0_combout\,
	datab => \inst7|inst2|inst7|inst|inst|inst|1~combout\,
	datac => \inst7|inst2|inst5|inst|inst|inst|1~combout\,
	datad => \inst7|inst2|inst6|inst|inst|inst|1~combout\,
	combout => \inst4|auto_generated|result_node[4]~31_combout\);

-- Location: LCCOMB_X113_Y7_N12
\inst4|auto_generated|result_node[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[4]~30_combout\ = (\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ & (((\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\ & 
-- !\inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\)))) # (!\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ & ((\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\ & 
-- (\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\)) # (!\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\ & ((!\inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\,
	datab => \inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\,
	datac => \inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\,
	datad => \inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\,
	combout => \inst4|auto_generated|result_node[4]~30_combout\);

-- Location: LCCOMB_X110_Y7_N14
\inst4|auto_generated|result_node[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[4]~33_combout\ = (\inst|inst20|inst|inst4|inst1|inst|1~0_combout\ & (((\inst|inst20|inst|inst4|inst3|inst|1~combout\ & \inst|inst20|inst|inst~0_combout\)))) # (!\inst|inst20|inst|inst4|inst1|inst|1~0_combout\ & 
-- ((\inst|inst20|inst|inst4|inst2|inst|1~combout\ & ((\inst|inst20|inst|inst~0_combout\))) # (!\inst|inst20|inst|inst4|inst2|inst|1~combout\ & (\inst|inst20|inst|inst4|inst3|inst|1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|inst|inst4|inst2|inst|1~combout\,
	datab => \inst|inst20|inst|inst4|inst3|inst|1~combout\,
	datac => \inst|inst20|inst|inst4|inst1|inst|1~0_combout\,
	datad => \inst|inst20|inst|inst~0_combout\,
	combout => \inst4|auto_generated|result_node[4]~33_combout\);

-- Location: LCCOMB_X111_Y7_N6
\inst4|auto_generated|result_node[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[4]~32_combout\ = (\inst1|inst2|inst3|inst5|inst4~0_combout\ & (!\inst1|inst2|inst3|inst7|inst4~0_combout\ & (\inst1|inst2|inst3|inst4|inst4~2_combout\))) # (!\inst1|inst2|inst3|inst5|inst4~0_combout\ & 
-- ((\inst1|inst2|inst3|inst6|inst4~0_combout\ & (!\inst1|inst2|inst3|inst7|inst4~0_combout\)) # (!\inst1|inst2|inst3|inst6|inst4~0_combout\ & ((\inst1|inst2|inst3|inst4|inst4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst5|inst4~0_combout\,
	datab => \inst1|inst2|inst3|inst7|inst4~0_combout\,
	datac => \inst1|inst2|inst3|inst4|inst4~2_combout\,
	datad => \inst1|inst2|inst3|inst6|inst4~0_combout\,
	combout => \inst4|auto_generated|result_node[4]~32_combout\);

-- Location: LCCOMB_X111_Y7_N18
\inst4|auto_generated|result_node[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[4]~20_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\) # (\inst4|auto_generated|result_node[4]~32_combout\)))) # (!\op[1]~input_o\ & (\inst4|auto_generated|result_node[4]~33_combout\ & (!\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[4]~33_combout\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \inst4|auto_generated|result_node[4]~32_combout\,
	combout => \inst4|auto_generated|result_node[4]~20_combout\);

-- Location: LCCOMB_X112_Y7_N14
\inst4|auto_generated|result_node[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[4]~21_combout\ = (\op[0]~input_o\ & ((\inst4|auto_generated|result_node[4]~20_combout\ & ((\inst4|auto_generated|result_node[4]~30_combout\))) # (!\inst4|auto_generated|result_node[4]~20_combout\ & 
-- (\inst4|auto_generated|result_node[4]~31_combout\)))) # (!\op[0]~input_o\ & (((\inst4|auto_generated|result_node[4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[4]~31_combout\,
	datab => \inst4|auto_generated|result_node[4]~30_combout\,
	datac => \op[0]~input_o\,
	datad => \inst4|auto_generated|result_node[4]~20_combout\,
	combout => \inst4|auto_generated|result_node[4]~21_combout\);

-- Location: LCCOMB_X110_Y7_N8
\inst|inst9|inst|inst43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst9|inst|inst43~0_combout\ = (\inst|inst20|inst|inst~0_combout\ & (\inst|inst20|inst|inst4|inst2|inst|1~combout\ $ (((\inst|inst20|inst|inst4|inst1|inst|1~0_combout\))))) # (!\inst|inst20|inst|inst~0_combout\ & 
-- ((\inst|inst20|inst|inst4|inst2|inst|1~combout\ & (!\inst|inst20|inst|inst4|inst3|inst|1~combout\ & \inst|inst20|inst|inst4|inst1|inst|1~0_combout\)) # (!\inst|inst20|inst|inst4|inst2|inst|1~combout\ & (\inst|inst20|inst|inst4|inst3|inst|1~combout\ & 
-- !\inst|inst20|inst|inst4|inst1|inst|1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|inst|inst4|inst2|inst|1~combout\,
	datab => \inst|inst20|inst|inst4|inst3|inst|1~combout\,
	datac => \inst|inst20|inst|inst4|inst1|inst|1~0_combout\,
	datad => \inst|inst20|inst|inst~0_combout\,
	combout => \inst|inst9|inst|inst43~0_combout\);

-- Location: LCCOMB_X111_Y7_N8
\inst1|inst4|inst|inst43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst4|inst|inst43~0_combout\ = (\inst1|inst2|inst3|inst4|inst4~2_combout\ & (\inst1|inst2|inst3|inst5|inst4~0_combout\ $ (((!\inst1|inst2|inst3|inst6|inst4~0_combout\))))) # (!\inst1|inst2|inst3|inst4|inst4~2_combout\ & 
-- ((\inst1|inst2|inst3|inst5|inst4~0_combout\ & (\inst1|inst2|inst3|inst7|inst4~0_combout\ & !\inst1|inst2|inst3|inst6|inst4~0_combout\)) # (!\inst1|inst2|inst3|inst5|inst4~0_combout\ & (!\inst1|inst2|inst3|inst7|inst4~0_combout\ & 
-- \inst1|inst2|inst3|inst6|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst5|inst4~0_combout\,
	datab => \inst1|inst2|inst3|inst7|inst4~0_combout\,
	datac => \inst1|inst2|inst3|inst4|inst4~2_combout\,
	datad => \inst1|inst2|inst3|inst6|inst4~0_combout\,
	combout => \inst1|inst4|inst|inst43~0_combout\);

-- Location: LCCOMB_X111_Y7_N26
\inst4|auto_generated|result_node[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[3]~34_combout\ = (\op[0]~input_o\ & (((\op[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & ((\inst1|inst4|inst|inst43~0_combout\))) # (!\op[1]~input_o\ & (\inst|inst9|inst|inst43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst9|inst|inst43~0_combout\,
	datab => \inst1|inst4|inst|inst43~0_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[3]~34_combout\);

-- Location: LCCOMB_X112_Y7_N16
\inst7|inst5|inst|inst43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst5|inst|inst43~0_combout\ = (\inst|inst|inst|inst2~0_combout\ & ((\inst7|inst2|inst5|inst|inst|inst|1~combout\ $ (!\inst7|inst2|inst6|inst|inst|inst|1~combout\)))) # (!\inst|inst|inst|inst2~0_combout\ & 
-- ((\inst7|inst2|inst7|inst|inst|inst|1~combout\ & (\inst7|inst2|inst5|inst|inst|inst|1~combout\ & !\inst7|inst2|inst6|inst|inst|inst|1~combout\)) # (!\inst7|inst2|inst7|inst|inst|inst|1~combout\ & (!\inst7|inst2|inst5|inst|inst|inst|1~combout\ & 
-- \inst7|inst2|inst6|inst|inst|inst|1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst2~0_combout\,
	datab => \inst7|inst2|inst7|inst|inst|inst|1~combout\,
	datac => \inst7|inst2|inst5|inst|inst|inst|1~combout\,
	datad => \inst7|inst2|inst6|inst|inst|inst|1~combout\,
	combout => \inst7|inst5|inst|inst43~0_combout\);

-- Location: LCCOMB_X113_Y7_N22
\inst4|auto_generated|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|_~1_combout\ = (\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\ & (\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ $ ((\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\)))) # 
-- (!\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\ & ((\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ & (\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\ & 
-- \inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\)) # (!\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ & (!\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\ & 
-- !\inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\,
	datab => \inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\,
	datac => \inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\,
	datad => \inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\,
	combout => \inst4|auto_generated|_~1_combout\);

-- Location: LCCOMB_X112_Y7_N26
\inst4|auto_generated|result_node[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[3]~35_combout\ = (\inst4|auto_generated|result_node[3]~34_combout\ & (((\inst4|auto_generated|_~1_combout\) # (!\op[0]~input_o\)))) # (!\inst4|auto_generated|result_node[3]~34_combout\ & 
-- (\inst7|inst5|inst|inst43~0_combout\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[3]~34_combout\,
	datab => \inst7|inst5|inst|inst43~0_combout\,
	datac => \op[0]~input_o\,
	datad => \inst4|auto_generated|_~1_combout\,
	combout => \inst4|auto_generated|result_node[3]~35_combout\);

-- Location: LCCOMB_X111_Y7_N20
\inst4|auto_generated|result_node[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[2]~37_combout\ = (\inst1|inst2|inst3|inst7|inst4~0_combout\ & (\inst1|inst2|inst3|inst6|inst4~0_combout\ & ((\inst1|inst2|inst3|inst5|inst4~0_combout\) # (!\inst1|inst2|inst3|inst4|inst4~2_combout\)))) # 
-- (!\inst1|inst2|inst3|inst7|inst4~0_combout\ & (\inst1|inst2|inst3|inst5|inst4~0_combout\ & (!\inst1|inst2|inst3|inst4|inst4~2_combout\ & !\inst1|inst2|inst3|inst6|inst4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst5|inst4~0_combout\,
	datab => \inst1|inst2|inst3|inst7|inst4~0_combout\,
	datac => \inst1|inst2|inst3|inst4|inst4~2_combout\,
	datad => \inst1|inst2|inst3|inst6|inst4~0_combout\,
	combout => \inst4|auto_generated|result_node[2]~37_combout\);

-- Location: LCCOMB_X110_Y7_N18
\inst4|auto_generated|result_node[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[2]~38_combout\ = (\inst|inst20|inst|inst4|inst2|inst|1~combout\ & (\inst|inst20|inst|inst4|inst3|inst|1~combout\ & (\inst|inst20|inst|inst4|inst1|inst|1~0_combout\ & !\inst|inst20|inst|inst~0_combout\))) # 
-- (!\inst|inst20|inst|inst4|inst2|inst|1~combout\ & (!\inst|inst20|inst|inst4|inst3|inst|1~combout\ & ((\inst|inst20|inst|inst4|inst1|inst|1~0_combout\) # (!\inst|inst20|inst|inst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|inst|inst4|inst2|inst|1~combout\,
	datab => \inst|inst20|inst|inst4|inst3|inst|1~combout\,
	datac => \inst|inst20|inst|inst4|inst1|inst|1~0_combout\,
	datad => \inst|inst20|inst|inst~0_combout\,
	combout => \inst4|auto_generated|result_node[2]~38_combout\);

-- Location: LCCOMB_X111_Y7_N14
\inst4|auto_generated|result_node[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[2]~39_combout\ = (\op[0]~input_o\ & (((\op[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & (\inst4|auto_generated|result_node[2]~37_combout\)) # (!\op[1]~input_o\ & 
-- ((\inst4|auto_generated|result_node[2]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \inst4|auto_generated|result_node[2]~37_combout\,
	datac => \inst4|auto_generated|result_node[2]~38_combout\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[2]~39_combout\);

-- Location: LCCOMB_X113_Y7_N0
\inst4|auto_generated|result_node[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[2]~40_combout\ = (\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\ & (\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ & 
-- (!\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\ & !\inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\))) # (!\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\ & 
-- (\inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\ & ((\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\) # (!\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\,
	datab => \inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\,
	datac => \inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\,
	datad => \inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\,
	combout => \inst4|auto_generated|result_node[2]~40_combout\);

-- Location: LCCOMB_X112_Y7_N28
\inst4|auto_generated|result_node[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[2]~36_combout\ = (\inst7|inst2|inst7|inst|inst|inst|1~combout\ & (\inst7|inst2|inst6|inst|inst|inst|1~combout\ & ((\inst7|inst2|inst5|inst|inst|inst|1~combout\) # (!\inst|inst|inst|inst2~0_combout\)))) # 
-- (!\inst7|inst2|inst7|inst|inst|inst|1~combout\ & (!\inst|inst|inst|inst2~0_combout\ & (\inst7|inst2|inst5|inst|inst|inst|1~combout\ & !\inst7|inst2|inst6|inst|inst|inst|1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst2~0_combout\,
	datab => \inst7|inst2|inst7|inst|inst|inst|1~combout\,
	datac => \inst7|inst2|inst5|inst|inst|inst|1~combout\,
	datad => \inst7|inst2|inst6|inst|inst|inst|1~combout\,
	combout => \inst4|auto_generated|result_node[2]~36_combout\);

-- Location: LCCOMB_X112_Y7_N6
\inst4|auto_generated|result_node[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[2]~41_combout\ = (\inst4|auto_generated|result_node[2]~39_combout\ & ((\inst4|auto_generated|result_node[2]~40_combout\) # ((!\op[0]~input_o\)))) # (!\inst4|auto_generated|result_node[2]~39_combout\ & (((\op[0]~input_o\ & 
-- \inst4|auto_generated|result_node[2]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[2]~39_combout\,
	datab => \inst4|auto_generated|result_node[2]~40_combout\,
	datac => \op[0]~input_o\,
	datad => \inst4|auto_generated|result_node[2]~36_combout\,
	combout => \inst4|auto_generated|result_node[2]~41_combout\);

-- Location: LCCOMB_X111_Y7_N16
\inst4|auto_generated|result_node[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[1]~43_combout\ = (\inst1|inst2|inst3|inst5|inst4~0_combout\ & ((\inst1|inst2|inst3|inst4|inst4~2_combout\ & (\inst1|inst2|inst3|inst7|inst4~0_combout\)) # (!\inst1|inst2|inst3|inst4|inst4~2_combout\ & 
-- ((\inst1|inst2|inst3|inst6|inst4~0_combout\))))) # (!\inst1|inst2|inst3|inst5|inst4~0_combout\ & (\inst1|inst2|inst3|inst6|inst4~0_combout\ & (\inst1|inst2|inst3|inst7|inst4~0_combout\ $ (\inst1|inst2|inst3|inst4|inst4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst5|inst4~0_combout\,
	datab => \inst1|inst2|inst3|inst7|inst4~0_combout\,
	datac => \inst1|inst2|inst3|inst4|inst4~2_combout\,
	datad => \inst1|inst2|inst3|inst6|inst4~0_combout\,
	combout => \inst4|auto_generated|result_node[1]~43_combout\);

-- Location: LCCOMB_X110_Y7_N28
\inst4|auto_generated|result_node[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[1]~44_combout\ = (\inst|inst20|inst|inst4|inst3|inst|1~combout\ & (!\inst|inst20|inst|inst4|inst2|inst|1~combout\ & (\inst|inst20|inst|inst4|inst1|inst|1~0_combout\ $ (\inst|inst20|inst|inst~0_combout\)))) # 
-- (!\inst|inst20|inst|inst4|inst3|inst|1~combout\ & ((\inst|inst20|inst|inst~0_combout\ & ((\inst|inst20|inst|inst4|inst1|inst|1~0_combout\))) # (!\inst|inst20|inst|inst~0_combout\ & (!\inst|inst20|inst|inst4|inst2|inst|1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|inst|inst4|inst2|inst|1~combout\,
	datab => \inst|inst20|inst|inst4|inst3|inst|1~combout\,
	datac => \inst|inst20|inst|inst4|inst1|inst|1~0_combout\,
	datad => \inst|inst20|inst|inst~0_combout\,
	combout => \inst4|auto_generated|result_node[1]~44_combout\);

-- Location: LCCOMB_X111_Y7_N10
\inst4|auto_generated|result_node[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[1]~45_combout\ = (\op[0]~input_o\ & (((\op[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & (\inst4|auto_generated|result_node[1]~43_combout\)) # (!\op[1]~input_o\ & 
-- ((\inst4|auto_generated|result_node[1]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \inst4|auto_generated|result_node[1]~43_combout\,
	datac => \inst4|auto_generated|result_node[1]~44_combout\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[1]~45_combout\);

-- Location: LCCOMB_X112_Y7_N0
\inst4|auto_generated|result_node[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[1]~42_combout\ = (\inst7|inst2|inst7|inst|inst|inst|1~combout\ & ((\inst|inst|inst|inst2~0_combout\ & (\inst7|inst2|inst5|inst|inst|inst|1~combout\)) # (!\inst|inst|inst|inst2~0_combout\ & 
-- ((\inst7|inst2|inst6|inst|inst|inst|1~combout\))))) # (!\inst7|inst2|inst7|inst|inst|inst|1~combout\ & (\inst7|inst2|inst6|inst|inst|inst|1~combout\ & (\inst|inst|inst|inst2~0_combout\ $ (\inst7|inst2|inst5|inst|inst|inst|1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst2~0_combout\,
	datab => \inst7|inst2|inst7|inst|inst|inst|1~combout\,
	datac => \inst7|inst2|inst5|inst|inst|inst|1~combout\,
	datad => \inst7|inst2|inst6|inst|inst|inst|1~combout\,
	combout => \inst4|auto_generated|result_node[1]~42_combout\);

-- Location: LCCOMB_X113_Y7_N18
\inst4|auto_generated|result_node[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[1]~46_combout\ = (\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ & ((\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\ & 
-- ((\inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\))) # (!\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\ & (!\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\)))) # 
-- (!\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ & (!\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\ & (\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\ $ 
-- (\inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\,
	datab => \inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\,
	datac => \inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\,
	datad => \inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\,
	combout => \inst4|auto_generated|result_node[1]~46_combout\);

-- Location: LCCOMB_X112_Y7_N2
\inst4|auto_generated|result_node[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[1]~47_combout\ = (\inst4|auto_generated|result_node[1]~45_combout\ & (((\inst4|auto_generated|result_node[1]~46_combout\) # (!\op[0]~input_o\)))) # (!\inst4|auto_generated|result_node[1]~45_combout\ & 
-- (\inst4|auto_generated|result_node[1]~42_combout\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[1]~45_combout\,
	datab => \inst4|auto_generated|result_node[1]~42_combout\,
	datac => \op[0]~input_o\,
	datad => \inst4|auto_generated|result_node[1]~46_combout\,
	combout => \inst4|auto_generated|result_node[1]~47_combout\);

-- Location: LCCOMB_X110_Y7_N22
\inst4|auto_generated|result_node[0]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[0]~52_combout\ = \inst|inst20|inst|inst3~1_combout\ $ (((\inst|inst20|inst|inst4|inst1|inst3~combout\ & ((!\inst|inst20|inst|inst2~0_combout\))) # (!\inst|inst20|inst|inst4|inst1|inst3~combout\ & 
-- (\inst|inst|inst4|inst|1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|inst|inst4|inst1|inst3~combout\,
	datab => \inst|inst|inst4|inst|1~0_combout\,
	datac => \inst|inst20|inst|inst3~1_combout\,
	datad => \inst|inst20|inst|inst2~0_combout\,
	combout => \inst4|auto_generated|result_node[0]~52_combout\);

-- Location: LCCOMB_X110_Y7_N30
\inst4|auto_generated|result_node[0]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[0]~100_combout\ = (\inst|inst20|inst|inst4|inst2|inst|1~combout\ & (!\inst|inst20|inst|inst4|inst3|inst|1~combout\ & (\in[5]~input_o\ $ (\in[0]~input_o\)))) # (!\inst|inst20|inst|inst4|inst2|inst|1~combout\ & 
-- (\inst|inst20|inst|inst4|inst3|inst|1~combout\ & (\in[5]~input_o\ $ (!\in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|inst|inst4|inst2|inst|1~combout\,
	datab => \inst|inst20|inst|inst4|inst3|inst|1~combout\,
	datac => \in[5]~input_o\,
	datad => \in[0]~input_o\,
	combout => \inst4|auto_generated|result_node[0]~100_combout\);

-- Location: LCCOMB_X110_Y7_N24
\inst4|auto_generated|result_node[0]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[0]~53_combout\ = (\inst|inst20|inst|inst4|inst1|inst|1~0_combout\ & (((\inst4|auto_generated|result_node[0]~100_combout\ & \inst|inst20|inst|inst~0_combout\)))) # (!\inst|inst20|inst|inst4|inst1|inst|1~0_combout\ & 
-- ((\inst|inst20|inst|inst~0_combout\ & (!\inst4|auto_generated|result_node[0]~52_combout\)) # (!\inst|inst20|inst|inst~0_combout\ & ((\inst4|auto_generated|result_node[0]~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[0]~52_combout\,
	datab => \inst|inst20|inst|inst4|inst1|inst|1~0_combout\,
	datac => \inst4|auto_generated|result_node[0]~100_combout\,
	datad => \inst|inst20|inst|inst~0_combout\,
	combout => \inst4|auto_generated|result_node[0]~53_combout\);

-- Location: LCCOMB_X112_Y7_N20
\inst4|auto_generated|result_node[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[0]~49_combout\ = (\inst7|inst2|inst7|inst|inst|inst|1~combout\ & (\inst|inst|inst|inst2~0_combout\ & (\inst7|inst2|inst5|inst|inst|inst|1~combout\ $ (\inst7|inst2|inst6|inst|inst|inst|1~combout\)))) # 
-- (!\inst7|inst2|inst7|inst|inst|inst|1~combout\ & (!\inst7|inst2|inst5|inst|inst|inst|1~combout\ & (\inst|inst|inst|inst2~0_combout\ $ (\inst7|inst2|inst6|inst|inst|inst|1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst|inst2~0_combout\,
	datab => \inst7|inst2|inst7|inst|inst|inst|1~combout\,
	datac => \inst7|inst2|inst5|inst|inst|inst|1~combout\,
	datad => \inst7|inst2|inst6|inst|inst|inst|1~combout\,
	combout => \inst4|auto_generated|result_node[0]~49_combout\);

-- Location: LCCOMB_X113_Y7_N4
\inst4|auto_generated|result_node[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[0]~50_combout\ = (\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\ & (\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\ & (\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ 
-- $ (!\inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\)))) # (!\inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\ & (!\inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\ & 
-- (\inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\ $ (!\inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst10|inst4|auto_generated|result_node[1]~2_combout\,
	datab => \inst2|inst|inst10|inst4|auto_generated|result_node[2]~1_combout\,
	datac => \inst2|inst|inst10|inst4|auto_generated|result_node[0]~0_combout\,
	datad => \inst2|inst|inst10|inst4|auto_generated|result_node[3]~3_combout\,
	combout => \inst4|auto_generated|result_node[0]~50_combout\);

-- Location: LCCOMB_X111_Y7_N30
\inst4|auto_generated|result_node[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[0]~51_combout\ = (\op[0]~input_o\ & ((\op[1]~input_o\ & ((\inst4|auto_generated|result_node[0]~50_combout\))) # (!\op[1]~input_o\ & (\inst4|auto_generated|result_node[0]~49_combout\)))) # (!\op[0]~input_o\ & 
-- (((\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[0]~49_combout\,
	datab => \inst4|auto_generated|result_node[0]~50_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[0]~51_combout\);

-- Location: LCCOMB_X111_Y7_N4
\inst4|auto_generated|result_node[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[0]~48_combout\ = (\inst1|inst2|inst3|inst7|inst4~0_combout\ & (\inst1|inst2|inst3|inst4|inst4~2_combout\ & (\inst1|inst2|inst3|inst5|inst4~0_combout\ $ (\inst1|inst2|inst3|inst6|inst4~0_combout\)))) # 
-- (!\inst1|inst2|inst3|inst7|inst4~0_combout\ & (!\inst1|inst2|inst3|inst5|inst4~0_combout\ & (\inst1|inst2|inst3|inst4|inst4~2_combout\ $ (\inst1|inst2|inst3|inst6|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst5|inst4~0_combout\,
	datab => \inst1|inst2|inst3|inst7|inst4~0_combout\,
	datac => \inst1|inst2|inst3|inst4|inst4~2_combout\,
	datad => \inst1|inst2|inst3|inst6|inst4~0_combout\,
	combout => \inst4|auto_generated|result_node[0]~48_combout\);

-- Location: LCCOMB_X111_Y7_N0
\inst4|auto_generated|result_node[0]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[0]~54_combout\ = (\op[0]~input_o\ & (((\inst4|auto_generated|result_node[0]~51_combout\)))) # (!\op[0]~input_o\ & ((\inst4|auto_generated|result_node[0]~51_combout\ & ((\inst4|auto_generated|result_node[0]~48_combout\))) 
-- # (!\inst4|auto_generated|result_node[0]~51_combout\ & (\inst4|auto_generated|result_node[0]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \inst4|auto_generated|result_node[0]~53_combout\,
	datac => \inst4|auto_generated|result_node[0]~51_combout\,
	datad => \inst4|auto_generated|result_node[0]~48_combout\,
	combout => \inst4|auto_generated|result_node[0]~54_combout\);

-- Location: LCCOMB_X112_Y9_N8
\inst7|inst2|inst5|inst2|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst5|inst2|inst|inst5~0_combout\ = (\inst7|inst2|inst5|inst1|inst|inst5~0_combout\ & ((\inst7|inst2|inst5|inst2|inst2~combout\) # ((\in[5]~input_o\ & \in[3]~input_o\)))) # (!\inst7|inst2|inst5|inst1|inst|inst5~0_combout\ & 
-- (\inst7|inst2|inst5|inst2|inst2~combout\ & (\in[5]~input_o\ & \in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst5|inst1|inst|inst5~0_combout\,
	datab => \inst7|inst2|inst5|inst2|inst2~combout\,
	datac => \in[5]~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst7|inst2|inst5|inst2|inst|inst5~0_combout\);

-- Location: LCCOMB_X112_Y9_N2
\inst7|inst2|inst6|inst1|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst6|inst1|inst|inst5~0_combout\ = (\inst7|inst2|inst6|inst|inst|inst2~combout\ & ((\inst7|inst2|inst6|inst1|inst2~combout\) # (\inst7|inst2|inst5|inst2|inst|inst|3~combout\ $ (\inst7|inst2|inst5|inst2|inst2~combout\)))) # 
-- (!\inst7|inst2|inst6|inst|inst|inst2~combout\ & (\inst7|inst2|inst6|inst1|inst2~combout\ & (\inst7|inst2|inst5|inst2|inst|inst|3~combout\ $ (\inst7|inst2|inst5|inst2|inst2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst6|inst|inst|inst2~combout\,
	datab => \inst7|inst2|inst5|inst2|inst|inst|3~combout\,
	datac => \inst7|inst2|inst6|inst1|inst2~combout\,
	datad => \inst7|inst2|inst5|inst2|inst2~combout\,
	combout => \inst7|inst2|inst6|inst1|inst|inst5~0_combout\);

-- Location: LCCOMB_X109_Y8_N6
\inst7|inst2|inst6|inst2|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst6|inst2|inst2~combout\ = (\in[2]~input_o\ & \in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in[2]~input_o\,
	datad => \in[7]~input_o\,
	combout => \inst7|inst2|inst6|inst2|inst2~combout\);

-- Location: LCCOMB_X109_Y8_N4
\inst7|inst2|inst5|inst3|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst5|inst3|inst2~combout\ = (\in[6]~input_o\ & \in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[6]~input_o\,
	datac => \in[3]~input_o\,
	combout => \inst7|inst2|inst5|inst3|inst2~combout\);

-- Location: LCCOMB_X113_Y9_N16
\inst7|inst2|inst6|inst2|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst6|inst2|inst|inst5~0_combout\ = (\inst7|inst2|inst6|inst1|inst|inst5~0_combout\ & ((\inst7|inst2|inst6|inst2|inst2~combout\) # (\inst7|inst2|inst5|inst3|inst2~combout\ $ (\inst7|inst2|inst5|inst2|inst|inst5~0_combout\)))) # 
-- (!\inst7|inst2|inst6|inst1|inst|inst5~0_combout\ & (\inst7|inst2|inst6|inst2|inst2~combout\ & (\inst7|inst2|inst5|inst3|inst2~combout\ $ (\inst7|inst2|inst5|inst2|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst6|inst1|inst|inst5~0_combout\,
	datab => \inst7|inst2|inst6|inst2|inst2~combout\,
	datac => \inst7|inst2|inst5|inst3|inst2~combout\,
	datad => \inst7|inst2|inst5|inst2|inst|inst5~0_combout\,
	combout => \inst7|inst2|inst6|inst2|inst|inst5~0_combout\);

-- Location: LCCOMB_X113_Y9_N26
\inst7|inst2|inst6|inst3|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst6|inst3|inst2~combout\ = (\in[3]~input_o\ & \in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in[3]~input_o\,
	datac => \in[7]~input_o\,
	combout => \inst7|inst2|inst6|inst3|inst2~combout\);

-- Location: LCCOMB_X113_Y9_N18
\inst7|inst2|inst6|inst3|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst6|inst3|inst|inst5~0_combout\ = (\inst7|inst2|inst6|inst2|inst|inst5~0_combout\ & ((\inst7|inst2|inst6|inst3|inst2~combout\) # ((\inst7|inst2|inst5|inst2|inst|inst5~0_combout\ & \inst7|inst2|inst5|inst3|inst2~combout\)))) # 
-- (!\inst7|inst2|inst6|inst2|inst|inst5~0_combout\ & (\inst7|inst2|inst5|inst2|inst|inst5~0_combout\ & (\inst7|inst2|inst6|inst3|inst2~combout\ & \inst7|inst2|inst5|inst3|inst2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst5|inst2|inst|inst5~0_combout\,
	datab => \inst7|inst2|inst6|inst2|inst|inst5~0_combout\,
	datac => \inst7|inst2|inst6|inst3|inst2~combout\,
	datad => \inst7|inst2|inst5|inst3|inst2~combout\,
	combout => \inst7|inst2|inst6|inst3|inst|inst5~0_combout\);

-- Location: LCCOMB_X112_Y9_N12
\inst7|inst2|inst7|inst|inst|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst7|inst|inst|inst2~combout\ = (\inst7|inst2|inst6|inst1|inst|inst|1~combout\ & (\in[0]~input_o\ & \in[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|inst2|inst6|inst1|inst|inst|1~combout\,
	datac => \in[0]~input_o\,
	datad => \in[8]~input_o\,
	combout => \inst7|inst2|inst7|inst|inst|inst2~combout\);

-- Location: LCCOMB_X112_Y9_N14
\inst7|inst2|inst7|inst1|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst7|inst1|inst2~combout\ = (\in[8]~input_o\ & \in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[8]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst7|inst2|inst7|inst1|inst2~combout\);

-- Location: LCCOMB_X113_Y9_N10
\inst7|inst2|inst6|inst2|inst|inst|3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst6|inst2|inst|inst|3~2_combout\ = \inst7|inst2|inst5|inst2|inst|inst5~0_combout\ $ (\inst7|inst2|inst6|inst1|inst|inst5~0_combout\ $ (((\in[3]~input_o\ & \in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst5|inst2|inst|inst5~0_combout\,
	datab => \in[3]~input_o\,
	datac => \in[6]~input_o\,
	datad => \inst7|inst2|inst6|inst1|inst|inst5~0_combout\,
	combout => \inst7|inst2|inst6|inst2|inst|inst|3~2_combout\);

-- Location: LCCOMB_X113_Y9_N28
\inst7|inst2|inst7|inst1|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst7|inst1|inst|inst5~0_combout\ = (\inst7|inst2|inst7|inst|inst|inst2~combout\ & ((\inst7|inst2|inst7|inst1|inst2~combout\) # (\inst7|inst2|inst6|inst2|inst2~combout\ $ (\inst7|inst2|inst6|inst2|inst|inst|3~2_combout\)))) # 
-- (!\inst7|inst2|inst7|inst|inst|inst2~combout\ & (\inst7|inst2|inst7|inst1|inst2~combout\ & (\inst7|inst2|inst6|inst2|inst2~combout\ $ (\inst7|inst2|inst6|inst2|inst|inst|3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst7|inst|inst|inst2~combout\,
	datab => \inst7|inst2|inst6|inst2|inst2~combout\,
	datac => \inst7|inst2|inst7|inst1|inst2~combout\,
	datad => \inst7|inst2|inst6|inst2|inst|inst|3~2_combout\,
	combout => \inst7|inst2|inst7|inst1|inst|inst5~0_combout\);

-- Location: LCCOMB_X113_Y9_N14
\inst7|inst2|inst7|inst2|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst7|inst2|inst2~combout\ = (\in[2]~input_o\ & \in[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in[2]~input_o\,
	datad => \in[8]~input_o\,
	combout => \inst7|inst2|inst7|inst2|inst2~combout\);

-- Location: LCCOMB_X113_Y9_N0
\inst7|inst2|inst6|inst3|inst|inst|3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst6|inst3|inst|inst|3~combout\ = (\inst7|inst2|inst6|inst1|inst|inst5~0_combout\ & ((\inst7|inst2|inst6|inst2|inst2~combout\ & ((!\inst7|inst2|inst5|inst2|inst|inst5~0_combout\) # (!\inst7|inst2|inst5|inst3|inst2~combout\))) # 
-- (!\inst7|inst2|inst6|inst2|inst2~combout\ & ((\inst7|inst2|inst5|inst3|inst2~combout\) # (\inst7|inst2|inst5|inst2|inst|inst5~0_combout\))))) # (!\inst7|inst2|inst6|inst1|inst|inst5~0_combout\ & ((\inst7|inst2|inst6|inst2|inst2~combout\ & 
-- ((\inst7|inst2|inst5|inst3|inst2~combout\) # (\inst7|inst2|inst5|inst2|inst|inst5~0_combout\))) # (!\inst7|inst2|inst6|inst2|inst2~combout\ & (\inst7|inst2|inst5|inst3|inst2~combout\ & \inst7|inst2|inst5|inst2|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst6|inst1|inst|inst5~0_combout\,
	datab => \inst7|inst2|inst6|inst2|inst2~combout\,
	datac => \inst7|inst2|inst5|inst3|inst2~combout\,
	datad => \inst7|inst2|inst5|inst2|inst|inst5~0_combout\,
	combout => \inst7|inst2|inst6|inst3|inst|inst|3~combout\);

-- Location: LCCOMB_X113_Y9_N8
\inst7|inst2|inst7|inst2|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst7|inst2|inst|inst5~0_combout\ = (\inst7|inst2|inst7|inst1|inst|inst5~0_combout\ & ((\inst7|inst2|inst7|inst2|inst2~combout\) # (\inst7|inst2|inst6|inst3|inst2~combout\ $ (\inst7|inst2|inst6|inst3|inst|inst|3~combout\)))) # 
-- (!\inst7|inst2|inst7|inst1|inst|inst5~0_combout\ & (\inst7|inst2|inst7|inst2|inst2~combout\ & (\inst7|inst2|inst6|inst3|inst2~combout\ $ (\inst7|inst2|inst6|inst3|inst|inst|3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst6|inst3|inst2~combout\,
	datab => \inst7|inst2|inst7|inst1|inst|inst5~0_combout\,
	datac => \inst7|inst2|inst7|inst2|inst2~combout\,
	datad => \inst7|inst2|inst6|inst3|inst|inst|3~combout\,
	combout => \inst7|inst2|inst7|inst2|inst|inst5~0_combout\);

-- Location: LCCOMB_X113_Y9_N12
\inst7|inst2|inst7|inst3|inst|inst|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst7|inst3|inst|inst|1~0_combout\ = \inst7|inst2|inst6|inst3|inst|inst5~0_combout\ $ (\inst7|inst2|inst7|inst2|inst|inst5~0_combout\ $ (((\in[8]~input_o\ & \in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[8]~input_o\,
	datab => \inst7|inst2|inst6|inst3|inst|inst5~0_combout\,
	datac => \inst7|inst2|inst7|inst2|inst|inst5~0_combout\,
	datad => \in[3]~input_o\,
	combout => \inst7|inst2|inst7|inst3|inst|inst|1~0_combout\);

-- Location: LCCOMB_X113_Y9_N24
\inst7|inst2|inst7|inst2|inst|inst|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst7|inst2|inst|inst|1~0_combout\ = \inst7|inst2|inst6|inst3|inst2~combout\ $ (\inst7|inst2|inst7|inst1|inst|inst5~0_combout\ $ (\inst7|inst2|inst7|inst2|inst2~combout\ $ (\inst7|inst2|inst6|inst3|inst|inst|3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst6|inst3|inst2~combout\,
	datab => \inst7|inst2|inst7|inst1|inst|inst5~0_combout\,
	datac => \inst7|inst2|inst7|inst2|inst2~combout\,
	datad => \inst7|inst2|inst6|inst3|inst|inst|3~combout\,
	combout => \inst7|inst2|inst7|inst2|inst|inst|1~0_combout\);

-- Location: LCCOMB_X113_Y9_N6
\inst7|inst2|inst7|inst1|inst|inst|1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst7|inst1|inst|inst|1~combout\ = \inst7|inst2|inst7|inst|inst|inst2~combout\ $ (\inst7|inst2|inst6|inst2|inst2~combout\ $ (\inst7|inst2|inst7|inst1|inst2~combout\ $ (\inst7|inst2|inst6|inst2|inst|inst|3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst7|inst|inst|inst2~combout\,
	datab => \inst7|inst2|inst6|inst2|inst2~combout\,
	datac => \inst7|inst2|inst7|inst1|inst2~combout\,
	datad => \inst7|inst2|inst6|inst2|inst|inst|3~2_combout\,
	combout => \inst7|inst2|inst7|inst1|inst|inst|1~combout\);

-- Location: LCCOMB_X113_Y9_N2
\inst7|inst2|inst7|inst3|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst2|inst7|inst3|inst|inst5~0_combout\ = (\inst7|inst2|inst6|inst3|inst|inst5~0_combout\ & ((\inst7|inst2|inst7|inst2|inst|inst5~0_combout\) # ((\in[8]~input_o\ & \in[3]~input_o\)))) # (!\inst7|inst2|inst6|inst3|inst|inst5~0_combout\ & 
-- (\in[8]~input_o\ & (\inst7|inst2|inst7|inst2|inst|inst5~0_combout\ & \in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[8]~input_o\,
	datab => \inst7|inst2|inst6|inst3|inst|inst5~0_combout\,
	datac => \inst7|inst2|inst7|inst2|inst|inst5~0_combout\,
	datad => \in[3]~input_o\,
	combout => \inst7|inst2|inst7|inst3|inst|inst5~0_combout\);

-- Location: LCCOMB_X114_Y9_N8
\inst7|inst9|inst|inst59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst9|inst|inst59~combout\ = (\inst7|inst2|inst7|inst1|inst|inst|1~combout\ & (!\inst7|inst2|inst7|inst3|inst|inst5~0_combout\ & (\inst7|inst2|inst7|inst3|inst|inst|1~0_combout\ $ (!\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\)))) # 
-- (!\inst7|inst2|inst7|inst1|inst|inst|1~combout\ & (!\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\ & (\inst7|inst2|inst7|inst3|inst|inst|1~0_combout\ $ (!\inst7|inst2|inst7|inst3|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst7|inst3|inst|inst|1~0_combout\,
	datab => \inst7|inst2|inst7|inst2|inst|inst|1~0_combout\,
	datac => \inst7|inst2|inst7|inst1|inst|inst|1~combout\,
	datad => \inst7|inst2|inst7|inst3|inst|inst5~0_combout\,
	combout => \inst7|inst9|inst|inst59~combout\);

-- Location: LCCOMB_X110_Y7_N26
\inst|inst20|inst|inst4|inst2|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20|inst|inst4|inst2|inst3~combout\ = (!\inst|inst20|inst|inst4|inst1|inst3~combout\ & (\inst|inst20|inst|inst2~0_combout\ $ (\inst|inst|inst4|inst|1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|inst|inst2~0_combout\,
	datab => \inst|inst|inst4|inst|1~0_combout\,
	datad => \inst|inst20|inst|inst4|inst1|inst3~combout\,
	combout => \inst|inst20|inst|inst4|inst2|inst3~combout\);

-- Location: LCCOMB_X110_Y7_N4
\inst|inst20|inst|inst4|inst4|inst|1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst20|inst|inst4|inst4|inst|1~0_combout\ = (\inst4|auto_generated|result_node[20]~22_combout\ & (!\inst|inst|inst4|inst|1~0_combout\ & ((\inst|inst20|inst|inst3~1_combout\) # (!\inst|inst20|inst|inst4|inst2|inst3~combout\)))) # 
-- (!\inst4|auto_generated|result_node[20]~22_combout\ & (\inst|inst|inst4|inst|1~0_combout\ & ((!\inst|inst20|inst|inst4|inst2|inst3~combout\) # (!\inst|inst20|inst|inst3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[20]~22_combout\,
	datab => \inst|inst20|inst|inst3~1_combout\,
	datac => \inst|inst20|inst|inst4|inst2|inst3~combout\,
	datad => \inst|inst|inst4|inst|1~0_combout\,
	combout => \inst|inst20|inst|inst4|inst4|inst|1~0_combout\);

-- Location: LCCOMB_X108_Y7_N24
\inst4|auto_generated|result_node[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[13]~55_combout\ = (\op[0]~input_o\ & (((\op[1]~input_o\)))) # (!\op[0]~input_o\ & ((\op[1]~input_o\ & ((!\in[9]~input_o\))) # (!\op[1]~input_o\ & (!\inst|inst20|inst|inst4|inst4|inst|1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst20|inst|inst4|inst4|inst|1~0_combout\,
	datab => \in[9]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[13]~55_combout\);

-- Location: LCCOMB_X111_Y6_N2
\inst2|inst|inst10|inst4|auto_generated|result_node[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst10|inst4|auto_generated|result_node[5]~4_combout\ = (\inst2|inst|inst9|inst4|auto_generated|result_node[5]~1_combout\ & ((\inst2|inst|inst9|inst4|auto_generated|result_node[4]~3_combout\ & 
-- (\inst2|inst|inst10|inst3|inst1|inst4|inst5~0_combout\ & \inst8|inst|inst50~0_combout\)) # (!\inst2|inst|inst9|inst4|auto_generated|result_node[4]~3_combout\ & ((\inst2|inst|inst10|inst3|inst1|inst4|inst5~0_combout\) # (\inst8|inst|inst50~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst9|inst4|auto_generated|result_node[4]~3_combout\,
	datab => \inst2|inst|inst9|inst4|auto_generated|result_node[5]~1_combout\,
	datac => \inst2|inst|inst10|inst3|inst1|inst4|inst5~0_combout\,
	datad => \inst8|inst|inst50~0_combout\,
	combout => \inst2|inst|inst10|inst4|auto_generated|result_node[5]~4_combout\);

-- Location: LCCOMB_X108_Y7_N10
\inst4|auto_generated|result_node[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[13]~56_combout\ = (\inst4|auto_generated|result_node[13]~55_combout\ & (((!\inst2|inst|inst10|inst4|auto_generated|result_node[5]~4_combout\) # (!\op[0]~input_o\)))) # (!\inst4|auto_generated|result_node[13]~55_combout\ & 
-- (\inst7|inst9|inst|inst59~combout\ & (\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst9|inst|inst59~combout\,
	datab => \inst4|auto_generated|result_node[13]~55_combout\,
	datac => \op[0]~input_o\,
	datad => \inst2|inst|inst10|inst4|auto_generated|result_node[5]~4_combout\,
	combout => \inst4|auto_generated|result_node[13]~56_combout\);

-- Location: LCCOMB_X114_Y9_N28
\inst4|auto_generated|result_node[7]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[7]~58_combout\ = (\inst7|inst2|inst7|inst1|inst|inst|1~combout\ & !\op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|inst2|inst7|inst1|inst|inst|1~combout\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[7]~58_combout\);

-- Location: LCCOMB_X114_Y9_N30
\inst4|auto_generated|result_node[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[12]~59_combout\ = (\inst4|auto_generated|result_node[7]~58_combout\ & (\inst7|inst2|inst7|inst3|inst|inst5~0_combout\ $ (((!\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\ & 
-- \inst7|inst2|inst7|inst3|inst|inst|1~0_combout\))))) # (!\inst4|auto_generated|result_node[7]~58_combout\ & (!\inst7|inst2|inst7|inst3|inst|inst5~0_combout\ & (\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\ & 
-- !\inst7|inst2|inst7|inst3|inst|inst|1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst7|inst3|inst|inst5~0_combout\,
	datab => \inst7|inst2|inst7|inst2|inst|inst|1~0_combout\,
	datac => \inst4|auto_generated|result_node[7]~58_combout\,
	datad => \inst7|inst2|inst7|inst3|inst|inst|1~0_combout\,
	combout => \inst4|auto_generated|result_node[12]~59_combout\);

-- Location: LCCOMB_X111_Y6_N4
\inst2|inst|inst10|inst4|auto_generated|result_node[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst10|inst4|auto_generated|result_node[4]~5_combout\ = (\inst2|inst|inst9|inst4|auto_generated|result_node[4]~3_combout\ & (\inst2|inst|inst9|inst4|auto_generated|result_node[5]~1_combout\ & 
-- (\inst2|inst|inst10|inst3|inst1|inst4|inst5~0_combout\ $ (\inst8|inst|inst50~0_combout\)))) # (!\inst2|inst|inst9|inst4|auto_generated|result_node[4]~3_combout\ & ((\inst2|inst|inst10|inst3|inst1|inst4|inst5~0_combout\ $ 
-- (!\inst8|inst|inst50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst9|inst4|auto_generated|result_node[4]~3_combout\,
	datab => \inst2|inst|inst9|inst4|auto_generated|result_node[5]~1_combout\,
	datac => \inst2|inst|inst10|inst3|inst1|inst4|inst5~0_combout\,
	datad => \inst8|inst|inst50~0_combout\,
	combout => \inst2|inst|inst10|inst4|auto_generated|result_node[4]~5_combout\);

-- Location: LCCOMB_X114_Y9_N26
\inst4|auto_generated|result_node[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[12]~57_combout\ = (\op[0]~input_o\ & (((!\inst2|inst|inst10|inst4|auto_generated|result_node[4]~5_combout\ & !\inst2|inst|inst10|inst4|auto_generated|result_node[5]~4_combout\)) # (!\op[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst10|inst4|auto_generated|result_node[4]~5_combout\,
	datab => \op[0]~input_o\,
	datac => \inst2|inst|inst10|inst4|auto_generated|result_node[5]~4_combout\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[12]~57_combout\);

-- Location: LCCOMB_X114_Y9_N14
\inst4|auto_generated|result_node[12]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[12]~101_combout\ = ((!\op[1]~input_o\ & (\inst4|auto_generated|result_node[12]~59_combout\ $ (\inst7|inst2|inst7|inst1|inst|inst|1~combout\)))) # (!\inst4|auto_generated|result_node[12]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[12]~59_combout\,
	datab => \inst7|inst2|inst7|inst1|inst|inst|1~combout\,
	datac => \inst4|auto_generated|result_node[12]~57_combout\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[12]~101_combout\);

-- Location: LCCOMB_X114_Y9_N0
\inst4|auto_generated|result_node[11]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[11]~60_combout\ = (\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\ & (((\inst7|inst2|inst7|inst1|inst|inst|1~combout\ & !\inst7|inst2|inst7|inst3|inst|inst5~0_combout\)))) # 
-- (!\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\ & ((\inst7|inst2|inst7|inst3|inst|inst|1~0_combout\ & ((!\inst7|inst2|inst7|inst3|inst|inst5~0_combout\))) # (!\inst7|inst2|inst7|inst3|inst|inst|1~0_combout\ & 
-- (\inst7|inst2|inst7|inst1|inst|inst|1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst7|inst3|inst|inst|1~0_combout\,
	datab => \inst7|inst2|inst7|inst2|inst|inst|1~0_combout\,
	datac => \inst7|inst2|inst7|inst1|inst|inst|1~combout\,
	datad => \inst7|inst2|inst7|inst3|inst|inst5~0_combout\,
	combout => \inst4|auto_generated|result_node[11]~60_combout\);

-- Location: LCCOMB_X114_Y9_N2
\inst4|auto_generated|result_node[11]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[11]~61_combout\ = ((\op[1]~input_o\ & (\inst2|inst|inst10|inst4|auto_generated|result_node[4]~5_combout\)) # (!\op[1]~input_o\ & ((\inst4|auto_generated|result_node[11]~60_combout\)))) # (!\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst10|inst4|auto_generated|result_node[4]~5_combout\,
	datab => \inst4|auto_generated|result_node[11]~60_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[11]~61_combout\);

-- Location: LCCOMB_X114_Y9_N22
\inst4|auto_generated|result_node[10]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[10]~63_combout\ = (\inst7|inst2|inst7|inst1|inst|inst|1~combout\ & (\inst7|inst2|inst7|inst3|inst|inst|1~0_combout\ $ ((!\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\)))) # 
-- (!\inst7|inst2|inst7|inst1|inst|inst|1~combout\ & ((\inst7|inst2|inst7|inst3|inst|inst|1~0_combout\ & (!\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\ & !\inst7|inst2|inst7|inst3|inst|inst5~0_combout\)) # (!\inst7|inst2|inst7|inst3|inst|inst|1~0_combout\ 
-- & (\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\ & \inst7|inst2|inst7|inst3|inst|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst7|inst3|inst|inst|1~0_combout\,
	datab => \inst7|inst2|inst7|inst2|inst|inst|1~0_combout\,
	datac => \inst7|inst2|inst7|inst1|inst|inst|1~combout\,
	datad => \inst7|inst2|inst7|inst3|inst|inst5~0_combout\,
	combout => \inst4|auto_generated|result_node[10]~63_combout\);

-- Location: LCCOMB_X114_Y9_N20
\inst4|auto_generated|result_node[10]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[10]~62_combout\ = (!\inst2|inst|inst10|inst4|auto_generated|result_node[5]~4_combout\ & \inst2|inst|inst10|inst4|auto_generated|result_node[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst|inst10|inst4|auto_generated|result_node[5]~4_combout\,
	datad => \inst2|inst|inst10|inst4|auto_generated|result_node[4]~5_combout\,
	combout => \inst4|auto_generated|result_node[10]~62_combout\);

-- Location: LCCOMB_X114_Y9_N24
\inst4|auto_generated|result_node[10]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[10]~64_combout\ = ((\op[1]~input_o\ & ((\inst4|auto_generated|result_node[10]~62_combout\))) # (!\op[1]~input_o\ & (\inst4|auto_generated|result_node[10]~63_combout\))) # (!\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[10]~63_combout\,
	datab => \inst4|auto_generated|result_node[10]~62_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[10]~64_combout\);

-- Location: LCCOMB_X114_Y9_N4
\inst4|auto_generated|result_node[9]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[9]~66_combout\ = (\inst7|inst2|inst7|inst3|inst|inst|1~0_combout\ & (\inst7|inst2|inst7|inst3|inst|inst5~0_combout\ & ((\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\) # 
-- (!\inst7|inst2|inst7|inst1|inst|inst|1~combout\)))) # (!\inst7|inst2|inst7|inst3|inst|inst|1~0_combout\ & (\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\ & (!\inst7|inst2|inst7|inst1|inst|inst|1~combout\ & 
-- !\inst7|inst2|inst7|inst3|inst|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst7|inst3|inst|inst|1~0_combout\,
	datab => \inst7|inst2|inst7|inst2|inst|inst|1~0_combout\,
	datac => \inst7|inst2|inst7|inst1|inst|inst|1~combout\,
	datad => \inst7|inst2|inst7|inst3|inst|inst5~0_combout\,
	combout => \inst4|auto_generated|result_node[9]~66_combout\);

-- Location: LCCOMB_X114_Y9_N18
\inst4|auto_generated|result_node[9]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[9]~65_combout\ = (!\inst2|inst|inst10|inst4|auto_generated|result_node[4]~5_combout\ & (\inst2|inst|inst10|inst4|auto_generated|result_node[5]~4_combout\ & \op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst10|inst4|auto_generated|result_node[4]~5_combout\,
	datac => \inst2|inst|inst10|inst4|auto_generated|result_node[5]~4_combout\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[9]~65_combout\);

-- Location: LCCOMB_X114_Y9_N6
\inst4|auto_generated|result_node[9]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[9]~67_combout\ = (\inst4|auto_generated|result_node[9]~65_combout\) # (((\inst4|auto_generated|result_node[9]~66_combout\ & !\op[1]~input_o\)) # (!\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[9]~66_combout\,
	datab => \inst4|auto_generated|result_node[9]~65_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[9]~67_combout\);

-- Location: LCCOMB_X113_Y9_N20
\inst4|auto_generated|result_node[8]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[8]~68_combout\ = (\inst7|inst2|inst7|inst3|inst|inst5~0_combout\ & ((\inst7|inst2|inst7|inst1|inst|inst|1~combout\ & ((\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\))) # (!\inst7|inst2|inst7|inst1|inst|inst|1~combout\ & 
-- (\inst7|inst2|inst7|inst3|inst|inst|1~0_combout\)))) # (!\inst7|inst2|inst7|inst3|inst|inst5~0_combout\ & (\inst7|inst2|inst7|inst3|inst|inst|1~0_combout\ & (\inst7|inst2|inst7|inst1|inst|inst|1~combout\ $ 
-- (\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst7|inst1|inst|inst|1~combout\,
	datab => \inst7|inst2|inst7|inst3|inst|inst5~0_combout\,
	datac => \inst7|inst2|inst7|inst3|inst|inst|1~0_combout\,
	datad => \inst7|inst2|inst7|inst2|inst|inst|1~0_combout\,
	combout => \inst4|auto_generated|result_node[8]~68_combout\);

-- Location: LCCOMB_X113_Y9_N30
\inst4|auto_generated|result_node[8]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[8]~69_combout\ = ((\inst4|auto_generated|result_node[8]~68_combout\ & !\op[1]~input_o\)) # (!\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \inst4|auto_generated|result_node[8]~68_combout\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[8]~69_combout\);

-- Location: LCCOMB_X114_Y9_N10
\inst4|auto_generated|result_node[7]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[7]~71_combout\ = (\inst7|inst2|inst7|inst3|inst|inst5~0_combout\ & (\inst4|auto_generated|result_node[7]~58_combout\ & (\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\ $ 
-- (\inst7|inst2|inst7|inst3|inst|inst|1~0_combout\)))) # (!\inst7|inst2|inst7|inst3|inst|inst5~0_combout\ & (!\inst7|inst2|inst7|inst2|inst|inst|1~0_combout\ & (\inst4|auto_generated|result_node[7]~58_combout\ $ 
-- (\inst7|inst2|inst7|inst3|inst|inst|1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|inst2|inst7|inst3|inst|inst5~0_combout\,
	datab => \inst7|inst2|inst7|inst2|inst|inst|1~0_combout\,
	datac => \inst4|auto_generated|result_node[7]~58_combout\,
	datad => \inst7|inst2|inst7|inst3|inst|inst|1~0_combout\,
	combout => \inst4|auto_generated|result_node[7]~71_combout\);

-- Location: LCCOMB_X114_Y9_N16
\inst4|auto_generated|result_node[10]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[10]~70_combout\ = (\inst2|inst|inst10|inst4|auto_generated|result_node[4]~5_combout\ & (!\inst2|inst|inst10|inst4|auto_generated|result_node[5]~4_combout\ & \op[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst10|inst4|auto_generated|result_node[4]~5_combout\,
	datac => \inst2|inst|inst10|inst4|auto_generated|result_node[5]~4_combout\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[10]~70_combout\);

-- Location: LCCOMB_X114_Y9_N12
\inst4|auto_generated|result_node[7]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[7]~72_combout\ = (\inst4|auto_generated|result_node[10]~70_combout\) # (((\inst4|auto_generated|result_node[7]~71_combout\ & !\op[1]~input_o\)) # (!\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[7]~71_combout\,
	datab => \inst4|auto_generated|result_node[10]~70_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[7]~72_combout\);

-- Location: LCCOMB_X112_Y8_N20
\inst4|auto_generated|result_node[16]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[16]~73_combout\ = (\inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\ & (!\in[1]~input_o\ & ((\in[8]~input_o\) # (!\in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\,
	datac => \in[1]~input_o\,
	datad => \in[8]~input_o\,
	combout => \inst4|auto_generated|result_node[16]~73_combout\);

-- Location: LCCOMB_X113_Y8_N28
\inst4|auto_generated|result_node[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[20]~74_combout\ = (\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ & (!\inst4|auto_generated|result_node[16]~73_combout\ & (\inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\ $ 
-- (!\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\)))) # (!\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ & (!\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ & (\inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\ $ 
-- (!\inst4|auto_generated|result_node[16]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\,
	datab => \inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\,
	datac => \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\,
	datad => \inst4|auto_generated|result_node[16]~73_combout\,
	combout => \inst4|auto_generated|result_node[20]~74_combout\);

-- Location: LCCOMB_X113_Y8_N6
\inst4|auto_generated|result_node[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[20]~75_combout\ = (\op[1]~input_o\ & (((\op[0]~input_o\) # (\inst4|auto_generated|result_node[20]~74_combout\)))) # (!\op[1]~input_o\ & (((!\op[0]~input_o\)) # (!\inst4|auto_generated|result_node[20]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \inst4|auto_generated|result_node[20]~22_combout\,
	datac => \op[0]~input_o\,
	datad => \inst4|auto_generated|result_node[20]~74_combout\,
	combout => \inst4|auto_generated|result_node[20]~75_combout\);

-- Location: LCCOMB_X112_Y8_N14
\inst4|auto_generated|result_node[16]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[16]~76_combout\ = (\inst4|auto_generated|result_node[16]~73_combout\ & ((\inst1|inst2|inst|inst4|inst4~0_combout\ & ((\inst1|inst2|inst1|inst|inst|inst|inst5~combout\) # (!\in[1]~input_o\))) # 
-- (!\inst1|inst2|inst|inst4|inst4~0_combout\ & (\inst1|inst2|inst1|inst|inst|inst|inst5~combout\ & !\in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst|inst4|inst4~0_combout\,
	datab => \inst1|inst2|inst1|inst|inst|inst|inst5~combout\,
	datac => \in[1]~input_o\,
	datad => \inst4|auto_generated|result_node[16]~73_combout\,
	combout => \inst4|auto_generated|result_node[16]~76_combout\);

-- Location: LCCOMB_X113_Y8_N8
\inst4|auto_generated|result_node[19]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[19]~77_combout\ = (\inst4|auto_generated|result_node[16]~76_combout\ & (\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ & (!\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ & 
-- \inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[16]~76_combout\,
	datab => \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\,
	datac => \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\,
	datad => \inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\,
	combout => \inst4|auto_generated|result_node[19]~77_combout\);

-- Location: LCCOMB_X113_Y8_N2
\inst4|auto_generated|result_node[19]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[19]~78_combout\ = (!\inst4|auto_generated|result_node[16]~73_combout\ & ((\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ & ((\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\) # 
-- (!\inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\))) # (!\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ & (!\inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\ & \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\,
	datab => \inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\,
	datac => \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\,
	datad => \inst4|auto_generated|result_node[16]~73_combout\,
	combout => \inst4|auto_generated|result_node[19]~78_combout\);

-- Location: LCCOMB_X113_Y8_N12
\inst4|auto_generated|result_node[19]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[19]~102_combout\ = ((\inst4|auto_generated|result_node[19]~77_combout\) # ((\op[0]~input_o\) # (\inst4|auto_generated|result_node[19]~78_combout\))) # (!\op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \inst4|auto_generated|result_node[19]~77_combout\,
	datac => \op[0]~input_o\,
	datad => \inst4|auto_generated|result_node[19]~78_combout\,
	combout => \inst4|auto_generated|result_node[19]~102_combout\);

-- Location: LCCOMB_X113_Y8_N18
\inst4|auto_generated|result_node[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[5]~28_combout\ = (\op[1]~input_o\ & !\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	combout => \inst4|auto_generated|result_node[5]~28_combout\);

-- Location: LCCOMB_X113_Y8_N4
\inst4|auto_generated|result_node[18]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[18]~79_combout\ = (\inst1|inst2|inst1|inst|inst2|inst|inst5~0_combout\ & (!\in[3]~input_o\ & !\inst4|auto_generated|result_node[16]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst2|inst1|inst|inst2|inst|inst5~0_combout\,
	datac => \in[3]~input_o\,
	datad => \inst4|auto_generated|result_node[16]~73_combout\,
	combout => \inst4|auto_generated|result_node[18]~79_combout\);

-- Location: LCCOMB_X113_Y8_N20
\inst4|auto_generated|result_node[18]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[18]~108_combout\ = (\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ & (\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ & ((\inst4|auto_generated|result_node[18]~79_combout\) # 
-- (!\inst4|auto_generated|result_node[16]~73_combout\)))) # (!\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ & ((\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\) # ((\inst4|auto_generated|result_node[18]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\,
	datab => \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\,
	datac => \inst4|auto_generated|result_node[18]~79_combout\,
	datad => \inst4|auto_generated|result_node[16]~73_combout\,
	combout => \inst4|auto_generated|result_node[18]~108_combout\);

-- Location: LCCOMB_X113_Y8_N22
\inst4|auto_generated|result_node[18]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[18]~109_combout\ = ((\inst4|auto_generated|result_node[18]~108_combout\ & ((\inst4|auto_generated|result_node[18]~79_combout\) # (!\inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\)))) # 
-- (!\inst4|auto_generated|result_node[5]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[5]~28_combout\,
	datab => \inst4|auto_generated|result_node[18]~108_combout\,
	datac => \inst4|auto_generated|result_node[18]~79_combout\,
	datad => \inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\,
	combout => \inst4|auto_generated|result_node[18]~109_combout\);

-- Location: LCCOMB_X113_Y8_N30
\inst4|auto_generated|result_node[17]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[17]~80_combout\ = (\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ & (\inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\ $ ((!\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\)))) # 
-- (!\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ & ((\inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\ & (!\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ & !\inst4|auto_generated|result_node[16]~73_combout\)) # 
-- (!\inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\ & (\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ & \inst4|auto_generated|result_node[16]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\,
	datab => \inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\,
	datac => \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\,
	datad => \inst4|auto_generated|result_node[16]~73_combout\,
	combout => \inst4|auto_generated|result_node[17]~80_combout\);

-- Location: LCCOMB_X113_Y8_N14
\inst4|auto_generated|result_node[17]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[17]~103_combout\ = ((\op[0]~input_o\) # (\inst4|auto_generated|result_node[17]~80_combout\)) # (!\op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \inst4|auto_generated|result_node[17]~80_combout\,
	combout => \inst4|auto_generated|result_node[17]~103_combout\);

-- Location: LCCOMB_X112_Y8_N16
\inst4|auto_generated|result_node[16]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[16]~81_combout\ = (\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ & ((\inst4|auto_generated|result_node[16]~76_combout\) # ((!\inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\ & 
-- !\inst4|auto_generated|result_node[16]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\,
	datab => \inst4|auto_generated|result_node[16]~76_combout\,
	datac => \inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\,
	datad => \inst4|auto_generated|result_node[16]~73_combout\,
	combout => \inst4|auto_generated|result_node[16]~81_combout\);

-- Location: LCCOMB_X112_Y8_N26
\inst4|auto_generated|result_node[16]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[16]~82_combout\ = ((\inst4|auto_generated|result_node[16]~81_combout\ & ((\inst4|auto_generated|result_node[16]~76_combout\) # (!\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\))) # 
-- (!\inst4|auto_generated|result_node[16]~81_combout\ & (!\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ & \inst4|auto_generated|result_node[16]~76_combout\))) # (!\inst4|auto_generated|result_node[5]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[16]~81_combout\,
	datab => \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\,
	datac => \inst4|auto_generated|result_node[16]~76_combout\,
	datad => \inst4|auto_generated|result_node[5]~28_combout\,
	combout => \inst4|auto_generated|result_node[16]~82_combout\);

-- Location: LCCOMB_X112_Y8_N12
\inst4|auto_generated|result_node[15]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[15]~83_combout\ = (\inst1|inst2|inst1|inst|inst2|inst|inst5~0_combout\ & ((\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ & ((\inst4|auto_generated|result_node[16]~73_combout\) # 
-- (!\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\))) # (!\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ & (\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ $ (\inst4|auto_generated|result_node[16]~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\,
	datab => \inst1|inst2|inst1|inst|inst2|inst|inst5~0_combout\,
	datac => \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\,
	datad => \inst4|auto_generated|result_node[16]~73_combout\,
	combout => \inst4|auto_generated|result_node[15]~83_combout\);

-- Location: LCCOMB_X110_Y8_N16
\inst4|auto_generated|result_node[15]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[15]~84_combout\ = (!\in[2]~input_o\ & (!\in[1]~input_o\ & ((\in[8]~input_o\) # (!\in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[8]~input_o\,
	datab => \in[0]~input_o\,
	datac => \in[2]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst4|auto_generated|result_node[15]~84_combout\);

-- Location: LCCOMB_X111_Y8_N12
\inst1|inst2|inst2|inst|inst2|inst|inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst2|inst2|inst|inst2|inst|inst5~0_combout\ = (\inst1|inst2|inst2|inst|inst1|inst|inst5~0_combout\ & (((\in[8]~input_o\) # (!\in[2]~input_o\)))) # (!\inst1|inst2|inst2|inst|inst1|inst|inst5~0_combout\ & (\inst1|inst2|inst1|inst5|inst4~1_combout\ & 
-- ((!\in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst2|inst|inst1|inst|inst5~0_combout\,
	datab => \inst1|inst2|inst1|inst5|inst4~1_combout\,
	datac => \in[8]~input_o\,
	datad => \in[2]~input_o\,
	combout => \inst1|inst2|inst2|inst|inst2|inst|inst5~0_combout\);

-- Location: LCCOMB_X110_Y8_N2
\inst4|auto_generated|result_node[15]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[15]~85_combout\ = (\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ & (\inst4|auto_generated|result_node[15]~84_combout\ & (\inst1|inst2|inst2|inst|inst2|inst|inst5~0_combout\ & 
-- !\inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\,
	datab => \inst4|auto_generated|result_node[15]~84_combout\,
	datac => \inst1|inst2|inst2|inst|inst2|inst|inst5~0_combout\,
	datad => \inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\,
	combout => \inst4|auto_generated|result_node[15]~85_combout\);

-- Location: LCCOMB_X112_Y8_N30
\inst4|auto_generated|result_node[15]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[15]~86_combout\ = ((!\in[3]~input_o\ & ((\inst4|auto_generated|result_node[15]~83_combout\) # (\inst4|auto_generated|result_node[15]~85_combout\)))) # (!\inst4|auto_generated|result_node[5]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[15]~83_combout\,
	datab => \inst4|auto_generated|result_node[5]~28_combout\,
	datac => \inst4|auto_generated|result_node[15]~85_combout\,
	datad => \in[3]~input_o\,
	combout => \inst4|auto_generated|result_node[15]~86_combout\);

-- Location: LCCOMB_X113_Y8_N16
\inst4|auto_generated|result_node[14]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[14]~87_combout\ = (\inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\ & (!\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ & (\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ $ 
-- (!\inst4|auto_generated|result_node[16]~73_combout\)))) # (!\inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\ & (\inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\ & (\inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\ $ 
-- (!\inst4|auto_generated|result_node[16]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst3|inst|inst3|inst|inst5~0_combout\,
	datab => \inst1|inst2|inst1|inst|inst3|inst|inst5~0_combout\,
	datac => \inst1|inst2|inst2|inst|inst3|inst|inst4~1_combout\,
	datad => \inst4|auto_generated|result_node[16]~73_combout\,
	combout => \inst4|auto_generated|result_node[14]~87_combout\);

-- Location: LCCOMB_X113_Y8_N0
\inst4|auto_generated|result_node[14]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[14]~104_combout\ = ((\inst4|auto_generated|result_node[14]~87_combout\) # (\op[0]~input_o\)) # (!\op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \inst4|auto_generated|result_node[14]~87_combout\,
	datac => \op[0]~input_o\,
	combout => \inst4|auto_generated|result_node[14]~104_combout\);

-- Location: LCCOMB_X110_Y6_N6
\inst4|auto_generated|result_node[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[27]~88_combout\ = (\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ & (\inst8|inst|inst50~0_combout\ & (\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ $ 
-- (\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\)))) # (!\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ & (\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\ & (\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ $ 
-- (\inst8|inst|inst50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\,
	datab => \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\,
	datac => \inst8|inst|inst50~0_combout\,
	datad => \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\,
	combout => \inst4|auto_generated|result_node[27]~88_combout\);

-- Location: LCCOMB_X113_Y8_N10
\inst4|auto_generated|result_node[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[27]~89_combout\ = ((\op[0]~input_o\ & (\inst4|auto_generated|result_node[27]~88_combout\)) # (!\op[0]~input_o\ & ((!\inst4|auto_generated|result_node[20]~22_combout\)))) # (!\op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[27]~88_combout\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \inst4|auto_generated|result_node[20]~22_combout\,
	combout => \inst4|auto_generated|result_node[27]~89_combout\);

-- Location: LCCOMB_X109_Y6_N0
\inst12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12~0_combout\ = (\op[0]~input_o\ & \op[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst12~0_combout\);

-- Location: LCCOMB_X111_Y6_N22
\inst4|auto_generated|result_node[26]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[26]~90_combout\ = (\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ & ((\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\) # (!\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\))) # 
-- (!\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ & (!\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ & \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\,
	datac => \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\,
	datad => \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\,
	combout => \inst4|auto_generated|result_node[26]~90_combout\);

-- Location: LCCOMB_X111_Y6_N0
\inst4|auto_generated|result_node[26]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[26]~91_combout\ = ((\inst4|auto_generated|result_node[26]~90_combout\ & (\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ & !\inst8|inst|inst50~0_combout\)) # (!\inst4|auto_generated|result_node[26]~90_combout\ & 
-- ((\inst8|inst|inst50~0_combout\)))) # (!\inst12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~0_combout\,
	datab => \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\,
	datac => \inst4|auto_generated|result_node[26]~90_combout\,
	datad => \inst8|inst|inst50~0_combout\,
	combout => \inst4|auto_generated|result_node[26]~91_combout\);

-- Location: LCCOMB_X111_Y6_N26
\inst4|auto_generated|result_node[25]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[25]~92_combout\ = (!\in[8]~input_o\ & (!\in[9]~input_o\ & ((\in[6]~input_o\) # (\in[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[6]~input_o\,
	datab => \in[8]~input_o\,
	datac => \in[7]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst4|auto_generated|result_node[25]~92_combout\);

-- Location: LCCOMB_X111_Y6_N28
\inst4|auto_generated|result_node[25]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[25]~93_combout\ = (\inst4|auto_generated|result_node[25]~92_combout\ & (((\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\)))) # (!\inst4|auto_generated|result_node[25]~92_combout\ & 
-- (!\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ & ((\inst8|inst|inst50~0_combout\) # (\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst50~0_combout\,
	datab => \inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\,
	datac => \inst4|auto_generated|result_node[25]~92_combout\,
	datad => \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\,
	combout => \inst4|auto_generated|result_node[25]~93_combout\);

-- Location: LCCOMB_X111_Y6_N14
\inst4|auto_generated|result_node[25]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[25]~94_combout\ = ((\inst4|auto_generated|result_node[25]~93_combout\ & ((\inst4|auto_generated|result_node[25]~92_combout\) # (\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\))) # 
-- (!\inst4|auto_generated|result_node[25]~93_combout\ & (\inst4|auto_generated|result_node[25]~92_combout\ & \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\))) # (!\inst12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~0_combout\,
	datab => \inst4|auto_generated|result_node[25]~93_combout\,
	datac => \inst4|auto_generated|result_node[25]~92_combout\,
	datad => \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\,
	combout => \inst4|auto_generated|result_node[25]~94_combout\);

-- Location: LCCOMB_X110_Y6_N24
\inst4|auto_generated|result_node[24]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[24]~95_combout\ = (\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ & (\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ $ (((\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\))))) # 
-- (!\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ & ((\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ & (\inst8|inst|inst50~0_combout\ & \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\)) # 
-- (!\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ & (!\inst8|inst|inst50~0_combout\ & !\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\,
	datab => \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\,
	datac => \inst8|inst|inst50~0_combout\,
	datad => \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\,
	combout => \inst4|auto_generated|result_node[24]~95_combout\);

-- Location: LCCOMB_X113_Y9_N4
\inst4|auto_generated|result_node[24]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[24]~105_combout\ = ((\inst4|auto_generated|result_node[24]~95_combout\) # (!\op[1]~input_o\)) # (!\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \inst4|auto_generated|result_node[24]~95_combout\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[24]~105_combout\);

-- Location: LCCOMB_X110_Y6_N10
\inst4|auto_generated|result_node[23]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[23]~96_combout\ = (\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ & ((\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\) # (!\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\))) # 
-- (!\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ & (!\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ & \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\,
	datac => \inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\,
	datad => \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\,
	combout => \inst4|auto_generated|result_node[23]~96_combout\);

-- Location: LCCOMB_X110_Y6_N20
\inst4|auto_generated|result_node[23]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[23]~97_combout\ = ((!\inst4|auto_generated|result_node[23]~96_combout\ & (\inst8|inst|inst50~0_combout\ $ (\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\)))) # (!\inst12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~0_combout\,
	datab => \inst8|inst|inst50~0_combout\,
	datac => \inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\,
	datad => \inst4|auto_generated|result_node[23]~96_combout\,
	combout => \inst4|auto_generated|result_node[23]~97_combout\);

-- Location: LCCOMB_X110_Y6_N22
\inst4|auto_generated|result_node[22]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[22]~98_combout\ = (\inst8|inst|inst50~0_combout\ & (\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ & (\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ $ 
-- (!\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\)))) # (!\inst8|inst|inst50~0_combout\ & ((\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ & ((!\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\))) # 
-- (!\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ & (\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\,
	datab => \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\,
	datac => \inst8|inst|inst50~0_combout\,
	datad => \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\,
	combout => \inst4|auto_generated|result_node[22]~98_combout\);

-- Location: LCCOMB_X113_Y9_N22
\inst4|auto_generated|result_node[22]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[22]~106_combout\ = ((\inst4|auto_generated|result_node[22]~98_combout\) # (!\op[1]~input_o\)) # (!\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \inst4|auto_generated|result_node[22]~98_combout\,
	datad => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[22]~106_combout\);

-- Location: LCCOMB_X110_Y6_N16
\inst4|auto_generated|result_node[21]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[21]~99_combout\ = (\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ & (\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\ & (\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ $ 
-- (\inst8|inst|inst50~0_combout\)))) # (!\inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\ & (\inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\ & (\inst8|inst|inst50~0_combout\ $ (!\inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst12|inst3|inst1|inst8|inst5~0_combout\,
	datab => \inst2|inst|inst10|inst3|inst1|inst7|inst5~0_combout\,
	datac => \inst8|inst|inst50~0_combout\,
	datad => \inst2|inst|inst10|inst3|inst1|inst3|inst5~2_combout\,
	combout => \inst4|auto_generated|result_node[21]~99_combout\);

-- Location: LCCOMB_X113_Y8_N26
\inst4|auto_generated|result_node[21]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|result_node[21]~107_combout\ = (\inst4|auto_generated|result_node[21]~99_combout\) # ((!\op[1]~input_o\) # (!\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|result_node[21]~99_combout\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	combout => \inst4|auto_generated|result_node[21]~107_combout\);

-- Location: LCCOMB_X109_Y6_N10
\inst3|inst|inst|inst58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst|inst58~1_combout\ = (\in[3]~input_o\ & \in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \in[3]~input_o\,
	datad => \in[2]~input_o\,
	combout => \inst3|inst|inst|inst58~1_combout\);

-- Location: LCCOMB_X109_Y6_N28
\inst3|inst|inst|inst38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst|inst38~0_combout\ = (\in[3]~input_o\) # ((\in[2]~input_o\ & ((!\in[1]~input_o\) # (!\in[0]~input_o\))) # (!\in[2]~input_o\ & ((\in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[2]~input_o\,
	datab => \in[3]~input_o\,
	datac => \in[0]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst3|inst|inst|inst38~0_combout\);

-- Location: LCCOMB_X109_Y6_N30
\inst11|auto_generated|result_node[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[6]~36_combout\ = ((\inst12~0_combout\) # ((\inst3|inst|inst|inst58~1_combout\ & \inst3|inst|inst|inst58~0_combout\))) # (!\inst3|inst|inst|inst38~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst|inst58~1_combout\,
	datab => \inst3|inst|inst|inst58~0_combout\,
	datac => \inst3|inst|inst|inst38~0_combout\,
	datad => \inst12~0_combout\,
	combout => \inst11|auto_generated|result_node[6]~36_combout\);

-- Location: LCCOMB_X110_Y8_N12
\inst11|auto_generated|result_node[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[5]~37_combout\ = (\in[0]~input_o\ & (\in[3]~input_o\ $ (((\in[2]~input_o\ & !\in[1]~input_o\))))) # (!\in[0]~input_o\ & ((\in[3]~input_o\) # ((\in[2]~input_o\) # (!\in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \in[3]~input_o\,
	datac => \in[2]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst11|auto_generated|result_node[5]~37_combout\);

-- Location: LCCOMB_X110_Y8_N14
\inst11|auto_generated|result_node[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node\(5) = ((\op[0]~input_o\ & \op[1]~input_o\)) # (!\inst11|auto_generated|result_node[5]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|auto_generated|result_node[5]~37_combout\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node\(5));

-- Location: LCCOMB_X110_Y8_N6
\inst11|auto_generated|result_node[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[4]~38_combout\ = (\in[1]~input_o\ & (((\in[3]~input_o\)) # (!\in[0]~input_o\))) # (!\in[1]~input_o\ & ((\in[2]~input_o\ & ((\in[3]~input_o\))) # (!\in[2]~input_o\ & (!\in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \in[3]~input_o\,
	datac => \in[2]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst11|auto_generated|result_node[4]~38_combout\);

-- Location: LCCOMB_X110_Y8_N24
\inst11|auto_generated|result_node[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node\(4) = ((\op[0]~input_o\ & \op[1]~input_o\)) # (!\inst11|auto_generated|result_node[4]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|auto_generated|result_node[4]~38_combout\,
	datab => \op[0]~input_o\,
	datac => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node\(4));

-- Location: LCCOMB_X110_Y8_N0
\inst11|auto_generated|result_node[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[3]~39_combout\ = (\in[0]~input_o\ & ((\in[2]~input_o\ $ (!\in[1]~input_o\)))) # (!\in[0]~input_o\ & ((\in[3]~input_o\ & (!\in[2]~input_o\ & \in[1]~input_o\)) # (!\in[3]~input_o\ & (\in[2]~input_o\ & !\in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \in[3]~input_o\,
	datac => \in[2]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst11|auto_generated|result_node[3]~39_combout\);

-- Location: LCCOMB_X110_Y8_N26
\inst11|auto_generated|result_node[3]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[3]~67_combout\ = (\inst11|auto_generated|result_node[3]~39_combout\) # ((\op[1]~input_o\ & \op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \inst11|auto_generated|result_node[3]~39_combout\,
	datac => \op[0]~input_o\,
	combout => \inst11|auto_generated|result_node[3]~67_combout\);

-- Location: LCCOMB_X109_Y6_N8
\inst11|auto_generated|result_node[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[2]~40_combout\ = (\inst12~0_combout\) # ((\inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\ & (!\in[0]~input_o\ & \in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2|inst|inst|inst3|inst|inst4~0_combout\,
	datab => \inst12~0_combout\,
	datac => \in[0]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst11|auto_generated|result_node[2]~40_combout\);

-- Location: LCCOMB_X109_Y6_N26
\inst11|auto_generated|result_node[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[2]~41_combout\ = (\inst11|auto_generated|result_node[2]~40_combout\) # ((\inst3|inst|inst|inst58~1_combout\ & ((\in[1]~input_o\) # (!\in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|inst|inst58~1_combout\,
	datab => \inst11|auto_generated|result_node[2]~40_combout\,
	datac => \in[0]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst11|auto_generated|result_node[2]~41_combout\);

-- Location: LCCOMB_X110_Y8_N18
\inst11|auto_generated|result_node[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[1]~42_combout\ = (\in[3]~input_o\ & ((\in[0]~input_o\ & ((\in[1]~input_o\))) # (!\in[0]~input_o\ & (\in[2]~input_o\)))) # (!\in[3]~input_o\ & (\in[2]~input_o\ & (\in[0]~input_o\ $ (\in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \in[3]~input_o\,
	datac => \in[2]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst11|auto_generated|result_node[1]~42_combout\);

-- Location: LCCOMB_X110_Y8_N4
\inst11|auto_generated|result_node[1]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[1]~68_combout\ = (\inst11|auto_generated|result_node[1]~42_combout\) # ((\op[1]~input_o\ & \op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \inst11|auto_generated|result_node[1]~42_combout\,
	datac => \op[0]~input_o\,
	combout => \inst11|auto_generated|result_node[1]~68_combout\);

-- Location: LCCOMB_X110_Y8_N20
\inst11|auto_generated|result_node[0]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[0]~43_combout\ = (\in[3]~input_o\ & (\in[0]~input_o\ & (\in[2]~input_o\ $ (\in[1]~input_o\)))) # (!\in[3]~input_o\ & (!\in[1]~input_o\ & (\in[0]~input_o\ $ (\in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[0]~input_o\,
	datab => \in[3]~input_o\,
	datac => \in[2]~input_o\,
	datad => \in[1]~input_o\,
	combout => \inst11|auto_generated|result_node[0]~43_combout\);

-- Location: LCCOMB_X110_Y8_N22
\inst11|auto_generated|result_node[0]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[0]~69_combout\ = (\inst11|auto_generated|result_node[0]~43_combout\) # ((\op[1]~input_o\ & \op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \inst11|auto_generated|result_node[0]~43_combout\,
	datac => \op[0]~input_o\,
	combout => \inst11|auto_generated|result_node[0]~69_combout\);

-- Location: LCCOMB_X109_Y6_N12
\inst11|auto_generated|result_node[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[13]~44_combout\ = ((\op[0]~input_o\ & \op[1]~input_o\)) # (!\in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[4]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node[13]~44_combout\);

-- Location: LCCOMB_X109_Y7_N24
\inst11|auto_generated|result_node[20]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[20]~46_combout\ = (\in[5]~input_o\ & (!\in[8]~input_o\ & (\in[7]~input_o\ $ (!\in[6]~input_o\)))) # (!\in[5]~input_o\ & (!\in[6]~input_o\ & (\in[7]~input_o\ $ (!\in[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[8]~input_o\,
	datac => \in[5]~input_o\,
	datad => \in[6]~input_o\,
	combout => \inst11|auto_generated|result_node[20]~46_combout\);

-- Location: LCCOMB_X110_Y6_N18
\inst11|auto_generated|result_node[20]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[20]~45_combout\ = (\in[2]~input_o\ & (!\in[5]~input_o\ & (\in[4]~input_o\ $ (!\in[3]~input_o\)))) # (!\in[2]~input_o\ & (!\in[3]~input_o\ & (\in[4]~input_o\ $ (!\in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[4]~input_o\,
	datab => \in[2]~input_o\,
	datac => \in[3]~input_o\,
	datad => \in[5]~input_o\,
	combout => \inst11|auto_generated|result_node[20]~45_combout\);

-- Location: LCCOMB_X109_Y6_N14
\inst11|auto_generated|result_node[20]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[20]~70_combout\ = (\op[0]~input_o\ & ((\op[1]~input_o\ & ((\inst11|auto_generated|result_node[20]~45_combout\))) # (!\op[1]~input_o\ & (\inst11|auto_generated|result_node[20]~46_combout\)))) # (!\op[0]~input_o\ & 
-- (\inst11|auto_generated|result_node[20]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|auto_generated|result_node[20]~46_combout\,
	datab => \inst11|auto_generated|result_node[20]~45_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node[20]~70_combout\);

-- Location: LCCOMB_X109_Y6_N6
\inst11|auto_generated|result_node[19]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[19]~48_combout\ = ((\in[3]~input_o\) # ((!\op[1]~input_o\) # (!\op[0]~input_o\))) # (!\in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[4]~input_o\,
	datab => \in[3]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node[19]~48_combout\);

-- Location: LCCOMB_X110_Y6_N12
\inst11|auto_generated|result_node[19]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[19]~47_combout\ = (\in[4]~input_o\ & (((!\in[3]~input_o\ & !\in[5]~input_o\)) # (!\in[2]~input_o\))) # (!\in[4]~input_o\ & (!\in[2]~input_o\ & (!\in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[4]~input_o\,
	datab => \in[2]~input_o\,
	datac => \in[3]~input_o\,
	datad => \in[5]~input_o\,
	combout => \inst11|auto_generated|result_node[19]~47_combout\);

-- Location: LCCOMB_X109_Y6_N24
\inst11|auto_generated|result_node[19]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[19]~49_combout\ = (\inst11|auto_generated|result_node[19]~48_combout\ & ((\in[5]~input_o\) # ((\inst12~0_combout\ & \inst11|auto_generated|result_node[19]~47_combout\)))) # 
-- (!\inst11|auto_generated|result_node[19]~48_combout\ & (\inst12~0_combout\ & (\inst11|auto_generated|result_node[19]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|auto_generated|result_node[19]~48_combout\,
	datab => \inst12~0_combout\,
	datac => \inst11|auto_generated|result_node[19]~47_combout\,
	datad => \in[5]~input_o\,
	combout => \inst11|auto_generated|result_node[19]~49_combout\);

-- Location: LCCOMB_X109_Y6_N2
\inst11|auto_generated|result_node[19]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[19]~50_combout\ = (\inst11|auto_generated|result_node[19]~49_combout\ & (!\in[6]~input_o\ & \in[7]~input_o\)) # (!\inst11|auto_generated|result_node[19]~49_combout\ & (\in[6]~input_o\ & !\in[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|auto_generated|result_node[19]~49_combout\,
	datac => \in[6]~input_o\,
	datad => \in[7]~input_o\,
	combout => \inst11|auto_generated|result_node[19]~50_combout\);

-- Location: LCCOMB_X109_Y6_N4
\inst11|auto_generated|result_node[19]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[19]~51_combout\ = (\inst11|auto_generated|result_node[19]~49_combout\ & (!\inst12~0_combout\ & (\inst11|auto_generated|result_node[19]~50_combout\ $ (!\in[8]~input_o\)))) # 
-- (!\inst11|auto_generated|result_node[19]~49_combout\ & ((\inst12~0_combout\) # ((\inst11|auto_generated|result_node[19]~50_combout\ & !\in[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|auto_generated|result_node[19]~50_combout\,
	datab => \inst11|auto_generated|result_node[19]~49_combout\,
	datac => \in[8]~input_o\,
	datad => \inst12~0_combout\,
	combout => \inst11|auto_generated|result_node[19]~51_combout\);

-- Location: LCCOMB_X109_Y7_N10
\inst11|auto_generated|result_node[18]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[18]~52_combout\ = (\in[3]~input_o\ & (((!\in[5]~input_o\ & \in[2]~input_o\)))) # (!\in[3]~input_o\ & ((\in[4]~input_o\ & (!\in[5]~input_o\)) # (!\in[4]~input_o\ & ((\in[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[4]~input_o\,
	datab => \in[3]~input_o\,
	datac => \in[5]~input_o\,
	datad => \in[2]~input_o\,
	combout => \inst11|auto_generated|result_node[18]~52_combout\);

-- Location: LCCOMB_X109_Y7_N28
\inst11|auto_generated|result_node[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[18]~53_combout\ = (\in[6]~input_o\ & (((!\in[8]~input_o\ & \in[5]~input_o\)))) # (!\in[6]~input_o\ & ((\in[7]~input_o\ & (!\in[8]~input_o\)) # (!\in[7]~input_o\ & ((\in[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[8]~input_o\,
	datac => \in[5]~input_o\,
	datad => \in[6]~input_o\,
	combout => \inst11|auto_generated|result_node[18]~53_combout\);

-- Location: LCCOMB_X109_Y7_N22
\inst11|auto_generated|result_node[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[18]~71_combout\ = (\op[0]~input_o\ & ((\op[1]~input_o\ & (\inst11|auto_generated|result_node[18]~52_combout\)) # (!\op[1]~input_o\ & ((\inst11|auto_generated|result_node[18]~53_combout\))))) # (!\op[0]~input_o\ & 
-- (((\inst11|auto_generated|result_node[18]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|auto_generated|result_node[18]~52_combout\,
	datab => \inst11|auto_generated|result_node[18]~53_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node[18]~71_combout\);

-- Location: LCCOMB_X109_Y7_N6
\inst11|auto_generated|result_node[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[17]~54_combout\ = (\in[2]~input_o\ & (\in[4]~input_o\ $ ((!\in[3]~input_o\)))) # (!\in[2]~input_o\ & ((\in[4]~input_o\ & (!\in[3]~input_o\ & !\in[5]~input_o\)) # (!\in[4]~input_o\ & (\in[3]~input_o\ & \in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[4]~input_o\,
	datab => \in[3]~input_o\,
	datac => \in[5]~input_o\,
	datad => \in[2]~input_o\,
	combout => \inst11|auto_generated|result_node[17]~54_combout\);

-- Location: LCCOMB_X109_Y7_N16
\inst11|auto_generated|result_node[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[17]~55_combout\ = (\in[5]~input_o\ & (\in[7]~input_o\ $ (((!\in[6]~input_o\))))) # (!\in[5]~input_o\ & ((\in[7]~input_o\ & (!\in[8]~input_o\ & !\in[6]~input_o\)) # (!\in[7]~input_o\ & (\in[8]~input_o\ & 
-- \in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[8]~input_o\,
	datac => \in[5]~input_o\,
	datad => \in[6]~input_o\,
	combout => \inst11|auto_generated|result_node[17]~55_combout\);

-- Location: LCCOMB_X109_Y7_N8
\inst11|auto_generated|result_node[17]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[17]~72_combout\ = (\op[0]~input_o\ & ((\op[1]~input_o\ & (\inst11|auto_generated|result_node[17]~54_combout\)) # (!\op[1]~input_o\ & ((\inst11|auto_generated|result_node[17]~55_combout\))))) # (!\op[0]~input_o\ & 
-- (((\inst11|auto_generated|result_node[17]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|auto_generated|result_node[17]~54_combout\,
	datab => \inst11|auto_generated|result_node[17]~55_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node[17]~72_combout\);

-- Location: LCCOMB_X109_Y7_N12
\inst11|auto_generated|result_node[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[16]~57_combout\ = (\in[7]~input_o\ & (\in[8]~input_o\ & ((\in[6]~input_o\) # (!\in[5]~input_o\)))) # (!\in[7]~input_o\ & (!\in[8]~input_o\ & (!\in[5]~input_o\ & \in[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[8]~input_o\,
	datac => \in[5]~input_o\,
	datad => \in[6]~input_o\,
	combout => \inst11|auto_generated|result_node[16]~57_combout\);

-- Location: LCCOMB_X109_Y7_N2
\inst11|auto_generated|result_node[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[16]~56_combout\ = (\in[4]~input_o\ & (\in[5]~input_o\ & ((\in[3]~input_o\) # (!\in[2]~input_o\)))) # (!\in[4]~input_o\ & (\in[3]~input_o\ & (!\in[5]~input_o\ & !\in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[4]~input_o\,
	datab => \in[3]~input_o\,
	datac => \in[5]~input_o\,
	datad => \in[2]~input_o\,
	combout => \inst11|auto_generated|result_node[16]~56_combout\);

-- Location: LCCOMB_X109_Y7_N18
\inst11|auto_generated|result_node[16]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[16]~73_combout\ = (\op[0]~input_o\ & ((\op[1]~input_o\ & ((\inst11|auto_generated|result_node[16]~56_combout\))) # (!\op[1]~input_o\ & (\inst11|auto_generated|result_node[16]~57_combout\)))) # (!\op[0]~input_o\ & 
-- (\inst11|auto_generated|result_node[16]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|auto_generated|result_node[16]~57_combout\,
	datab => \inst11|auto_generated|result_node[16]~56_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node[16]~73_combout\);

-- Location: LCCOMB_X109_Y7_N0
\inst11|auto_generated|result_node[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[15]~59_combout\ = (\in[8]~input_o\ & ((\in[5]~input_o\ & ((\in[6]~input_o\))) # (!\in[5]~input_o\ & (\in[7]~input_o\)))) # (!\in[8]~input_o\ & (\in[7]~input_o\ & (\in[5]~input_o\ $ (\in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[8]~input_o\,
	datac => \in[5]~input_o\,
	datad => \in[6]~input_o\,
	combout => \inst11|auto_generated|result_node[15]~59_combout\);

-- Location: LCCOMB_X109_Y7_N30
\inst11|auto_generated|result_node[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[15]~58_combout\ = (\in[3]~input_o\ & ((\in[2]~input_o\ & ((\in[5]~input_o\))) # (!\in[2]~input_o\ & (\in[4]~input_o\)))) # (!\in[3]~input_o\ & (\in[4]~input_o\ & (\in[5]~input_o\ $ (\in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[4]~input_o\,
	datab => \in[3]~input_o\,
	datac => \in[5]~input_o\,
	datad => \in[2]~input_o\,
	combout => \inst11|auto_generated|result_node[15]~58_combout\);

-- Location: LCCOMB_X109_Y7_N20
\inst11|auto_generated|result_node[15]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[15]~74_combout\ = (\op[0]~input_o\ & ((\op[1]~input_o\ & ((\inst11|auto_generated|result_node[15]~58_combout\))) # (!\op[1]~input_o\ & (\inst11|auto_generated|result_node[15]~59_combout\)))) # (!\op[0]~input_o\ & 
-- (\inst11|auto_generated|result_node[15]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \inst11|auto_generated|result_node[15]~59_combout\,
	datac => \inst11|auto_generated|result_node[15]~58_combout\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node[15]~74_combout\);

-- Location: LCCOMB_X109_Y7_N4
\inst11|auto_generated|result_node[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[14]~61_combout\ = (\in[7]~input_o\ & (!\in[6]~input_o\ & (\in[8]~input_o\ $ (!\in[5]~input_o\)))) # (!\in[7]~input_o\ & (\in[5]~input_o\ & (\in[8]~input_o\ $ (!\in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[8]~input_o\,
	datac => \in[5]~input_o\,
	datad => \in[6]~input_o\,
	combout => \inst11|auto_generated|result_node[14]~61_combout\);

-- Location: LCCOMB_X109_Y7_N26
\inst11|auto_generated|result_node[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[14]~60_combout\ = (\in[4]~input_o\ & (!\in[3]~input_o\ & (\in[5]~input_o\ $ (!\in[2]~input_o\)))) # (!\in[4]~input_o\ & (\in[2]~input_o\ & (\in[3]~input_o\ $ (!\in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[4]~input_o\,
	datab => \in[3]~input_o\,
	datac => \in[5]~input_o\,
	datad => \in[2]~input_o\,
	combout => \inst11|auto_generated|result_node[14]~60_combout\);

-- Location: LCCOMB_X109_Y7_N14
\inst11|auto_generated|result_node[14]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[14]~75_combout\ = (\op[0]~input_o\ & ((\op[1]~input_o\ & ((\inst11|auto_generated|result_node[14]~60_combout\))) # (!\op[1]~input_o\ & (\inst11|auto_generated|result_node[14]~61_combout\)))) # (!\op[0]~input_o\ & 
-- (\inst11|auto_generated|result_node[14]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \inst11|auto_generated|result_node[14]~61_combout\,
	datac => \inst11|auto_generated|result_node[14]~60_combout\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node[14]~75_combout\);

-- Location: LCCOMB_X108_Y7_N20
\inst11|auto_generated|result_node[27]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[27]~81_combout\ = (\in[6]~input_o\ & (!\in[9]~input_o\ & (\in[7]~input_o\ $ (!\in[8]~input_o\)))) # (!\in[6]~input_o\ & (!\in[7]~input_o\ & (\in[8]~input_o\ $ (!\in[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[6]~input_o\,
	datac => \in[8]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst11|auto_generated|result_node[27]~81_combout\);

-- Location: LCCOMB_X108_Y7_N14
\inst11|auto_generated|result_node[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[27]~82_combout\ = (\op[0]~input_o\ & ((\op[1]~input_o\ & (\inst11|auto_generated|result_node[27]~81_combout\)) # (!\op[1]~input_o\ & ((!\in[9]~input_o\))))) # (!\op[0]~input_o\ & (((!\in[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|auto_generated|result_node[27]~81_combout\,
	datab => \in[9]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node[27]~82_combout\);

-- Location: LCCOMB_X108_Y7_N12
\inst8|inst|inst34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|inst|inst34~0_combout\ = (\in[7]~input_o\ & ((\in[9]~input_o\) # ((!\in[6]~input_o\ & \in[8]~input_o\)))) # (!\in[7]~input_o\ & ((\in[8]~input_o\ $ (\in[9]~input_o\)) # (!\in[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[6]~input_o\,
	datac => \in[8]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst8|inst|inst34~0_combout\);

-- Location: LCCOMB_X108_Y7_N8
\inst11|auto_generated|result_node[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node\(26) = ((!\op[1]~input_o\) # (!\op[0]~input_o\)) # (!\inst8|inst|inst34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|inst|inst34~0_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node\(26));

-- Location: LCCOMB_X108_Y7_N30
\inst11|auto_generated|result_node[25]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[25]~62_combout\ = (\in[7]~input_o\ & (\in[6]~input_o\ & ((!\in[9]~input_o\)))) # (!\in[7]~input_o\ & ((\in[8]~input_o\ & ((!\in[9]~input_o\))) # (!\in[8]~input_o\ & (\in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[6]~input_o\,
	datac => \in[8]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst11|auto_generated|result_node[25]~62_combout\);

-- Location: LCCOMB_X108_Y7_N2
\inst11|auto_generated|result_node[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[25]~76_combout\ = ((\inst11|auto_generated|result_node[25]~62_combout\) # (!\op[1]~input_o\)) # (!\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \inst11|auto_generated|result_node[25]~62_combout\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node[25]~76_combout\);

-- Location: LCCOMB_X108_Y7_N16
\inst11|auto_generated|result_node[24]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[24]~63_combout\ = (\in[6]~input_o\ & (\in[7]~input_o\ $ ((!\in[8]~input_o\)))) # (!\in[6]~input_o\ & ((\in[7]~input_o\ & (!\in[8]~input_o\ & \in[9]~input_o\)) # (!\in[7]~input_o\ & (\in[8]~input_o\ & !\in[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[6]~input_o\,
	datac => \in[8]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst11|auto_generated|result_node[24]~63_combout\);

-- Location: LCCOMB_X108_Y7_N28
\inst11|auto_generated|result_node[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[24]~77_combout\ = (\inst11|auto_generated|result_node[24]~63_combout\) # ((!\op[1]~input_o\) # (!\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|auto_generated|result_node[24]~63_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node[24]~77_combout\);

-- Location: LCCOMB_X108_Y7_N18
\inst11|auto_generated|result_node[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[23]~64_combout\ = (\in[8]~input_o\ & (\in[9]~input_o\ & ((\in[7]~input_o\) # (!\in[6]~input_o\)))) # (!\in[8]~input_o\ & (\in[7]~input_o\ & (!\in[6]~input_o\ & !\in[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[6]~input_o\,
	datac => \in[8]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst11|auto_generated|result_node[23]~64_combout\);

-- Location: LCCOMB_X108_Y7_N22
\inst11|auto_generated|result_node[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[23]~78_combout\ = (\inst11|auto_generated|result_node[23]~64_combout\) # ((!\op[1]~input_o\) # (!\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|auto_generated|result_node[23]~64_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node[23]~78_combout\);

-- Location: LCCOMB_X108_Y7_N4
\inst11|auto_generated|result_node[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[22]~65_combout\ = (\in[7]~input_o\ & ((\in[6]~input_o\ & ((\in[9]~input_o\))) # (!\in[6]~input_o\ & (\in[8]~input_o\)))) # (!\in[7]~input_o\ & (\in[8]~input_o\ & (\in[6]~input_o\ $ (\in[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[6]~input_o\,
	datac => \in[8]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst11|auto_generated|result_node[22]~65_combout\);

-- Location: LCCOMB_X108_Y7_N0
\inst11|auto_generated|result_node[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[22]~79_combout\ = ((\inst11|auto_generated|result_node[22]~65_combout\) # (!\op[1]~input_o\)) # (!\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datac => \inst11|auto_generated|result_node[22]~65_combout\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node[22]~79_combout\);

-- Location: LCCOMB_X108_Y7_N6
\inst11|auto_generated|result_node[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[21]~66_combout\ = (\in[8]~input_o\ & (!\in[7]~input_o\ & (\in[6]~input_o\ $ (!\in[9]~input_o\)))) # (!\in[8]~input_o\ & (\in[6]~input_o\ & (\in[7]~input_o\ $ (!\in[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[7]~input_o\,
	datab => \in[6]~input_o\,
	datac => \in[8]~input_o\,
	datad => \in[9]~input_o\,
	combout => \inst11|auto_generated|result_node[21]~66_combout\);

-- Location: LCCOMB_X108_Y7_N26
\inst11|auto_generated|result_node[21]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|auto_generated|result_node[21]~80_combout\ = (\inst11|auto_generated|result_node[21]~66_combout\) # ((!\op[1]~input_o\) # (!\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|auto_generated|result_node[21]~66_combout\,
	datac => \op[0]~input_o\,
	datad => \op[1]~input_o\,
	combout => \inst11|auto_generated|result_node[21]~80_combout\);

ww_hex0(6) <= \hex0[6]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex1(6) <= \hex1[6]~output_o\;

ww_hex1(5) <= \hex1[5]~output_o\;

ww_hex1(4) <= \hex1[4]~output_o\;

ww_hex1(3) <= \hex1[3]~output_o\;

ww_hex1(2) <= \hex1[2]~output_o\;

ww_hex1(1) <= \hex1[1]~output_o\;

ww_hex1(0) <= \hex1[0]~output_o\;

ww_hex2(6) <= \hex2[6]~output_o\;

ww_hex2(5) <= \hex2[5]~output_o\;

ww_hex2(4) <= \hex2[4]~output_o\;

ww_hex2(3) <= \hex2[3]~output_o\;

ww_hex2(2) <= \hex2[2]~output_o\;

ww_hex2(1) <= \hex2[1]~output_o\;

ww_hex2(0) <= \hex2[0]~output_o\;

ww_hex3(6) <= \hex3[6]~output_o\;

ww_hex3(5) <= \hex3[5]~output_o\;

ww_hex3(4) <= \hex3[4]~output_o\;

ww_hex3(3) <= \hex3[3]~output_o\;

ww_hex3(2) <= \hex3[2]~output_o\;

ww_hex3(1) <= \hex3[1]~output_o\;

ww_hex3(0) <= \hex3[0]~output_o\;

ww_hex4(6) <= \hex4[6]~output_o\;

ww_hex4(5) <= \hex4[5]~output_o\;

ww_hex4(4) <= \hex4[4]~output_o\;

ww_hex4(3) <= \hex4[3]~output_o\;

ww_hex4(2) <= \hex4[2]~output_o\;

ww_hex4(1) <= \hex4[1]~output_o\;

ww_hex4(0) <= \hex4[0]~output_o\;

ww_hex5(6) <= \hex5[6]~output_o\;

ww_hex5(5) <= \hex5[5]~output_o\;

ww_hex5(4) <= \hex5[4]~output_o\;

ww_hex5(3) <= \hex5[3]~output_o\;

ww_hex5(2) <= \hex5[2]~output_o\;

ww_hex5(1) <= \hex5[1]~output_o\;

ww_hex5(0) <= \hex5[0]~output_o\;

ww_hex6(6) <= \hex6[6]~output_o\;

ww_hex6(5) <= \hex6[5]~output_o\;

ww_hex6(4) <= \hex6[4]~output_o\;

ww_hex6(3) <= \hex6[3]~output_o\;

ww_hex6(2) <= \hex6[2]~output_o\;

ww_hex6(1) <= \hex6[1]~output_o\;

ww_hex6(0) <= \hex6[0]~output_o\;

ww_hex7(6) <= \hex7[6]~output_o\;

ww_hex7(5) <= \hex7[5]~output_o\;

ww_hex7(4) <= \hex7[4]~output_o\;

ww_hex7(3) <= \hex7[3]~output_o\;

ww_hex7(2) <= \hex7[2]~output_o\;

ww_hex7(1) <= \hex7[1]~output_o\;

ww_hex7(0) <= \hex7[0]~output_o\;
END structure;


