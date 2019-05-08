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
-- CREATED		"Wed Dec 05 18:55:23 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Shift_register_30bit IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		clr :  IN  STD_LOGIC;
		pri :  IN  STD_LOGIC;
		d1 :  IN  STD_LOGIC;
		d0 :  IN  STD_LOGIC;
		Q_output :  OUT  STD_LOGIC_VECTOR(29 DOWNTO 0)
	);
END Shift_register_30bit;

ARCHITECTURE bdf_type OF Shift_register_30bit IS 

SIGNAL	en_clr :  STD_LOGIC;
SIGNAL	Q_output_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(29 DOWNTO 0);
SIGNAL	Q_outputQ :  STD_LOGIC_VECTOR(23 TO 23);
SIGNAL	sr_en :  STD_LOGIC;


BEGIN 



en_clr <= sr_en OR clr;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(6) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(6) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(6) <= Q_output_ALTERA_SYNTHESIZED(4);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(5) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(5) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(5) <= Q_output_ALTERA_SYNTHESIZED(3);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(4) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(4) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(4) <= Q_output_ALTERA_SYNTHESIZED(2);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(3) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(3) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(3) <= Q_output_ALTERA_SYNTHESIZED(1);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(2) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(2) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(2) <= Q_output_ALTERA_SYNTHESIZED(0);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(1) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(1) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(1) <= d1;
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(0) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(0) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(0) <= d0;
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(14) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(14) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(14) <= Q_output_ALTERA_SYNTHESIZED(12);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(15) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(15) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(15) <= Q_output_ALTERA_SYNTHESIZED(13);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(16) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(16) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(16) <= Q_output_ALTERA_SYNTHESIZED(14);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(17) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(17) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(17) <= Q_output_ALTERA_SYNTHESIZED(15);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(18) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(18) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(18) <= Q_output_ALTERA_SYNTHESIZED(16);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(19) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(19) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(19) <= Q_output_ALTERA_SYNTHESIZED(17);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(20) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(20) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(20) <= Q_output_ALTERA_SYNTHESIZED(18);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(21) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(21) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(21) <= Q_output_ALTERA_SYNTHESIZED(19);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(22) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(22) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(22) <= Q_output_ALTERA_SYNTHESIZED(20);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_outputQ(23) <= '0';
ELSIF (pri = '0') THEN
	Q_outputQ(23) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_outputQ(23) <= Q_output_ALTERA_SYNTHESIZED(21);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(24) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(24) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(24) <= Q_output_ALTERA_SYNTHESIZED(22);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(25) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(25) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(25) <= Q_outputQ(23);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(26) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(26) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(26) <= Q_output_ALTERA_SYNTHESIZED(24);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(13) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(13) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(13) <= Q_output_ALTERA_SYNTHESIZED(11);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(27) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(27) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(27) <= Q_output_ALTERA_SYNTHESIZED(25);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(28) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(28) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(28) <= Q_output_ALTERA_SYNTHESIZED(26);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(29) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(29) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(29) <= Q_output_ALTERA_SYNTHESIZED(27);
	END IF;
END IF;
END PROCESS;


PROCESS(clk)
BEGIN
IF (RISING_EDGE(clk)) THEN
	sr_en <= clr;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(12) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(12) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(12) <= Q_output_ALTERA_SYNTHESIZED(10);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(11) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(11) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(11) <= Q_output_ALTERA_SYNTHESIZED(9);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(10) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(10) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(10) <= Q_output_ALTERA_SYNTHESIZED(8);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(8) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(8) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(8) <= Q_output_ALTERA_SYNTHESIZED(6);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(9) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(9) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(9) <= Q_output_ALTERA_SYNTHESIZED(7);
	END IF;
END IF;
END PROCESS;


PROCESS(clk,en_clr,pri)
BEGIN
IF (en_clr = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(7) <= '0';
ELSIF (pri = '0') THEN
	Q_output_ALTERA_SYNTHESIZED(7) <= '1';
ELSIF (RISING_EDGE(clk)) THEN
	IF (sr_en = '1') THEN
	Q_output_ALTERA_SYNTHESIZED(7) <= Q_output_ALTERA_SYNTHESIZED(5);
	END IF;
END IF;
END PROCESS;

Q_output <= Q_output_ALTERA_SYNTHESIZED;

END bdf_type;