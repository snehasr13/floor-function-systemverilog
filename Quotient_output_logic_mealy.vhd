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
-- CREATED		"Wed Dec 05 18:57:20 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Quotient_output_logic_mealy IS 
	PORT
	(
		c :  IN  STD_LOGIC;
		a :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		current_state :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		shift_control :  OUT  STD_LOGIC;
		q :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END Quotient_output_logic_mealy;

ARCHITECTURE bdf_type OF Quotient_output_logic_mealy IS 

SIGNAL	a1b :  STD_LOGIC;
SIGNAL	a1oa0 :  STD_LOGIC;
SIGNAL	and_out :  STD_LOGIC;
SIGNAL	aS2 :  STD_LOGIC;
SIGNAL	cS5 :  STD_LOGIC;
SIGNAL	q_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



a1b <= NOT(a(1));



SYNTHESIZED_WIRE_0 <= current_state(3) AND a(0) AND a(1);


q_ALTERA_SYNTHESIZED(0) <= and_out OR SYNTHESIZED_WIRE_0 OR current_state(4) OR SYNTHESIZED_WIRE_1;


cS5 <= current_state(5) AND c;


shift_control <= cS5 OR current_state(3) OR current_state(4) OR current_state(2) OR current_state(1) OR current_state(0);


aS2 <= current_state(2) AND a(1);


a1oa0 <= a(1) OR a(0);


q_ALTERA_SYNTHESIZED(1) <= current_state(3) OR current_state(4) OR aS2;


and_out <= current_state(1) AND a1oa0;


SYNTHESIZED_WIRE_1 <= current_state(2) AND a1b;

q <= q_ALTERA_SYNTHESIZED;

END bdf_type;