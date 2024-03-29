-- megafunction wizard: %LPM_CLSHIFT%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_clshift 

-- ============================================================
-- File Name: desloc_osciloscopio.vhd
-- Megafunction Name(s):
-- 			lpm_clshift
--
-- Simulation Library Files(s):
-- 			
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 9.0 Build 235 06/17/2009 SP 2 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2009 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY desloc_osciloscopio IS
	PORT
	(
		data		: IN STD_LOGIC_VECTOR (19 DOWNTO 0);
		distance		: IN STD_LOGIC ;
		result		: OUT STD_LOGIC_VECTOR (19 DOWNTO 0)
	);
END desloc_osciloscopio;


ARCHITECTURE SYN OF desloc_osciloscopio IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (19 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;
	SIGNAL sub_wire2	: STD_LOGIC_VECTOR (0 DOWNTO 0);
	SIGNAL sub_wire3	: STD_LOGIC ;



	COMPONENT lpm_clshift
	GENERIC (
		lpm_shifttype		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL;
		lpm_widthdist		: NATURAL
	);
	PORT (
			distance	: IN STD_LOGIC_VECTOR (0 DOWNTO 0);
			direction	: IN STD_LOGIC ;
			data	: IN STD_LOGIC_VECTOR (19 DOWNTO 0);
			result	: OUT STD_LOGIC_VECTOR (19 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	sub_wire3    <= '1';
	result    <= sub_wire0(19 DOWNTO 0);
	sub_wire1    <= distance;
	sub_wire2(0)    <= sub_wire1;

	lpm_clshift_component : lpm_clshift
	GENERIC MAP (
		lpm_shifttype => "LOGICAL",
		lpm_type => "LPM_CLSHIFT",
		lpm_width => 20,
		lpm_widthdist => 1
	)
	PORT MAP (
		distance => sub_wire2,
		direction => sub_wire3,
		data => data,
		result => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "FLEX10K"
-- Retrieval info: PRIVATE: LPM_SHIFTTYPE NUMERIC "0"
-- Retrieval info: PRIVATE: LPM_WIDTH NUMERIC "20"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: lpm_width_varies NUMERIC "0"
-- Retrieval info: PRIVATE: lpm_widthdist NUMERIC "1"
-- Retrieval info: PRIVATE: lpm_widthdist_style NUMERIC "0"
-- Retrieval info: PRIVATE: port_direction NUMERIC "1"
-- Retrieval info: CONSTANT: LPM_SHIFTTYPE STRING "LOGICAL"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_CLSHIFT"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "20"
-- Retrieval info: CONSTANT: LPM_WIDTHDIST NUMERIC "1"
-- Retrieval info: USED_PORT: data 0 0 20 0 INPUT NODEFVAL data[19..0]
-- Retrieval info: USED_PORT: distance 0 0 0 0 INPUT NODEFVAL distance
-- Retrieval info: USED_PORT: result 0 0 20 0 OUTPUT NODEFVAL result[19..0]
-- Retrieval info: CONNECT: @distance 0 0 1 0 distance 0 0 0 0
-- Retrieval info: CONNECT: @data 0 0 20 0 data 0 0 20 0
-- Retrieval info: CONNECT: result 0 0 20 0 @result 0 0 20 0
-- Retrieval info: CONNECT: @direction 0 0 0 0 VCC 0 0 0 0
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL desloc_osciloscopio.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL desloc_osciloscopio.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL desloc_osciloscopio.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL desloc_osciloscopio.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL desloc_osciloscopio_inst.vhd FALSE
