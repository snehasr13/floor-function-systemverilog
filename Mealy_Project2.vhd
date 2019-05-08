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
-- CREATED		"Wed Dec 05 18:57:52 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Mealy_Project2 IS 
	PORT
	(
		c :  IN  STD_LOGIC;
		Clk :  IN  STD_LOGIC;
		Reset_bar :  IN  STD_LOGIC;
		en :  IN  STD_LOGIC;
		a :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		shift_control :  OUT  STD_LOGIC;
		current_state :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		next_state :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		q :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		Q_output :  OUT  STD_LOGIC_VECTOR(29 DOWNTO 0)
	);
END Mealy_Project2;

ARCHITECTURE bdf_type OF Mealy_Project2 IS 

COMPONENT quotient_output_logic_mealy
	PORT(c : IN STD_LOGIC;
		 a : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 current_state : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 shift_control : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT remainder_next_state_logic_mealy
	PORT(c : IN STD_LOGIC;
		 a : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 current_state : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 next_state : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;

COMPONENT shift_register_30bit
	PORT(pri : IN STD_LOGIC;
		 clr : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 d1 : IN STD_LOGIC;
		 d0 : IN STD_LOGIC;
		 Q_output : OUT STD_LOGIC_VECTOR(29 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	current_state_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	next_state_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL	q_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	shift_control_ALTERA_SYNTHESIZED :  STD_LOGIC;


BEGIN 



b2v_inst : quotient_output_logic_mealy
PORT MAP(c => c,
		 a => a,
		 current_state => current_state_ALTERA_SYNTHESIZED,
		 shift_control => shift_control_ALTERA_SYNTHESIZED,
		 q => q_ALTERA_SYNTHESIZED);


b2v_inst1 : remainder_next_state_logic_mealy
PORT MAP(c => c,
		 a => a,
		 current_state => current_state_ALTERA_SYNTHESIZED,
		 next_state => next_state_ALTERA_SYNTHESIZED);


PROCESS(Clk,Reset_bar)
BEGIN
IF (Reset_bar = '0') THEN
	current_state_ALTERA_SYNTHESIZED(5) <= '1';
ELSIF (RISING_EDGE(Clk)) THEN
	IF (en = '1') THEN
	current_state_ALTERA_SYNTHESIZED(5) <= next_state_ALTERA_SYNTHESIZED(5);
	END IF;
END IF;
END PROCESS;


PROCESS(Clk,Reset_bar)
BEGIN
IF (Reset_bar = '0') THEN
	current_state_ALTERA_SYNTHESIZED(4) <= '0';
ELSIF (RISING_EDGE(Clk)) THEN
	IF (en = '1') THEN
	current_state_ALTERA_SYNTHESIZED(4) <= next_state_ALTERA_SYNTHESIZED(4);
	END IF;
END IF;
END PROCESS;


PROCESS(Clk,Reset_bar)
BEGIN
IF (Reset_bar = '0') THEN
	current_state_ALTERA_SYNTHESIZED(3) <= '0';
ELSIF (RISING_EDGE(Clk)) THEN
	IF (en = '1') THEN
	current_state_ALTERA_SYNTHESIZED(3) <= next_state_ALTERA_SYNTHESIZED(3);
	END IF;
END IF;
END PROCESS;


b2v_inst4 : shift_register_30bit
PORT MAP(clr => shift_control_ALTERA_SYNTHESIZED,
		 clk => Clk,
		 d1 => q_ALTERA_SYNTHESIZED(1),
		 d0 => q_ALTERA_SYNTHESIZED(0),
		 Q_output => Q_output);


PROCESS(Clk,Reset_bar)
BEGIN
IF (Reset_bar = '0') THEN
	current_state_ALTERA_SYNTHESIZED(1) <= '0';
ELSIF (RISING_EDGE(Clk)) THEN
	IF (en = '1') THEN
	current_state_ALTERA_SYNTHESIZED(1) <= next_state_ALTERA_SYNTHESIZED(1);
	END IF;
END IF;
END PROCESS;


PROCESS(Clk,Reset_bar)
BEGIN
IF (Reset_bar = '0') THEN
	current_state_ALTERA_SYNTHESIZED(2) <= '0';
ELSIF (RISING_EDGE(Clk)) THEN
	IF (en = '1') THEN
	current_state_ALTERA_SYNTHESIZED(2) <= next_state_ALTERA_SYNTHESIZED(2);
	END IF;
END IF;
END PROCESS;


PROCESS(Clk,Reset_bar)
BEGIN
IF (Reset_bar = '0') THEN
	current_state_ALTERA_SYNTHESIZED(0) <= '0';
ELSIF (RISING_EDGE(Clk)) THEN
	IF (en = '1') THEN
	current_state_ALTERA_SYNTHESIZED(0) <= next_state_ALTERA_SYNTHESIZED(0);
	END IF;
END IF;
END PROCESS;

shift_control <= shift_control_ALTERA_SYNTHESIZED;
current_state <= current_state_ALTERA_SYNTHESIZED;
next_state <= next_state_ALTERA_SYNTHESIZED;
q <= q_ALTERA_SYNTHESIZED;

END bdf_type;