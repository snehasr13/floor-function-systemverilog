-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"
-- CREATED		"Wed Dec 05 18:56:12 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Remainder_next_state_logic_mealy IS 
	PORT
	(
		c :  IN  STD_LOGIC;
		a :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		current_state :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		next_state :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END Remainder_next_state_logic_mealy;

ARCHITECTURE bdf_type OF Remainder_next_state_logic_mealy IS 

SIGNAL	a0b :  STD_LOGIC;
SIGNAL	a1b :  STD_LOGIC;
SIGNAL	c_a1_a0 :  STD_LOGIC;
SIGNAL	c_a1_a0b :  STD_LOGIC;
SIGNAL	c_a1b_a0 :  STD_LOGIC;
SIGNAL	c_a1b_a0b :  STD_LOGIC;
SIGNAL	cb :  STD_LOGIC;
SIGNAL	next_state_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;


BEGIN 



cb <= NOT(c);



SYNTHESIZED_WIRE_0 <= current_state(0) OR current_state(2) OR current_state(1) OR current_state(3) OR current_state(4) OR current_state(5);


c_a1b_a0 <= c AND a1b AND a(0);


c_a1_a0b <= c AND a(1) AND a0b;


c_a1_a0 <= c AND a(1) AND a(0);


next_state_ALTERA_SYNTHESIZED(5) <= cb AND SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_1 <= current_state(1) AND c_a1b_a0b;


a1b <= NOT(a(1));



SYNTHESIZED_WIRE_4 <= current_state(2) AND c_a1b_a0;


SYNTHESIZED_WIRE_2 <= current_state(3) AND c_a1_a0b;


SYNTHESIZED_WIRE_3 <= current_state(4) AND c_a1_a0;


next_state_ALTERA_SYNTHESIZED(4) <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4;


SYNTHESIZED_WIRE_6 <= current_state(0) AND c_a1_a0;


SYNTHESIZED_WIRE_5 <= current_state(2) AND c_a1b_a0b;


SYNTHESIZED_WIRE_15 <= current_state(3) AND c_a1b_a0;


SYNTHESIZED_WIRE_13 <= current_state(4) AND c_a1_a0b;


SYNTHESIZED_WIRE_17 <= SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6;


SYNTHESIZED_WIRE_14 <= current_state(5) AND c_a1_a0;


a0b <= NOT(a(0));



SYNTHESIZED_WIRE_8 <= c_a1_a0b AND current_state(0);


SYNTHESIZED_WIRE_7 <= c_a1_a0 AND current_state(1);


SYNTHESIZED_WIRE_20 <= c_a1b_a0b AND current_state(3);


SYNTHESIZED_WIRE_18 <= c_a1b_a0 AND current_state(4);


SYNTHESIZED_WIRE_19 <= c_a1_a0b AND current_state(5);


SYNTHESIZED_WIRE_22 <= SYNTHESIZED_WIRE_7 OR SYNTHESIZED_WIRE_8;


SYNTHESIZED_WIRE_10 <= c_a1b_a0 AND current_state(0);


SYNTHESIZED_WIRE_9 <= c_a1_a0b AND current_state(1);


SYNTHESIZED_WIRE_25 <= c_a1_a0 AND current_state(2);


SYNTHESIZED_WIRE_23 <= c_a1b_a0b AND current_state(4);


SYNTHESIZED_WIRE_24 <= c_a1b_a0 AND current_state(5);


SYNTHESIZED_WIRE_27 <= SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10;


SYNTHESIZED_WIRE_12 <= c_a1b_a0b AND current_state(0);


SYNTHESIZED_WIRE_11 <= c_a1b_a0 AND current_state(1);


SYNTHESIZED_WIRE_30 <= c_a1_a0b AND current_state(2);


SYNTHESIZED_WIRE_28 <= c_a1_a0 AND current_state(3);


SYNTHESIZED_WIRE_29 <= c_a1b_a0b AND current_state(5);


SYNTHESIZED_WIRE_32 <= SYNTHESIZED_WIRE_11 OR SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_16 <= SYNTHESIZED_WIRE_13 OR SYNTHESIZED_WIRE_14 OR SYNTHESIZED_WIRE_15;


next_state_ALTERA_SYNTHESIZED(3) <= SYNTHESIZED_WIRE_16 OR SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_21 <= SYNTHESIZED_WIRE_18 OR SYNTHESIZED_WIRE_19 OR SYNTHESIZED_WIRE_20;


next_state_ALTERA_SYNTHESIZED(2) <= SYNTHESIZED_WIRE_21 OR SYNTHESIZED_WIRE_22;


SYNTHESIZED_WIRE_26 <= SYNTHESIZED_WIRE_23 OR SYNTHESIZED_WIRE_24 OR SYNTHESIZED_WIRE_25;


next_state_ALTERA_SYNTHESIZED(1) <= SYNTHESIZED_WIRE_26 OR SYNTHESIZED_WIRE_27;


SYNTHESIZED_WIRE_31 <= SYNTHESIZED_WIRE_28 OR SYNTHESIZED_WIRE_29 OR SYNTHESIZED_WIRE_30;


next_state_ALTERA_SYNTHESIZED(0) <= SYNTHESIZED_WIRE_31 OR SYNTHESIZED_WIRE_32;


c_a1b_a0b <= c AND a1b AND a0b;

next_state <= next_state_ALTERA_SYNTHESIZED;

END bdf_type;