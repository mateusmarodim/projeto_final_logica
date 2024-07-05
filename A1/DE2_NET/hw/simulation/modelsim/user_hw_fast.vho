-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/05/2024 19:53:18"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	user_hw IS
    PORT (
	clock : IN std_logic;
	resetn : IN std_logic;
	chipselect : IN std_logic;
	writedata : IN std_logic_vector(31 DOWNTO 0);
	write_en : IN std_logic;
	readdata : OUT std_logic_vector(31 DOWNTO 0);
	add : IN std_logic;
	read_en : IN std_logic;
	led_en : OUT std_logic
	);
END user_hw;

-- Design Ports Information
-- readdata[0]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[1]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[2]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[3]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[4]	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[5]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[6]	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[7]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[8]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[9]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[10]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[11]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[12]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[13]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[14]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[15]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[16]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[17]	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[18]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[19]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[20]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[21]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[22]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[23]	=>  Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[24]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[25]	=>  Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[26]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[27]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[28]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[29]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[30]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- readdata[31]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_en	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- chipselect	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- read_en	=>  Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- add	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- write_en	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[8]	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[9]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[10]	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[11]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[12]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[13]	=>  Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[14]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[15]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[16]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[17]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[18]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[19]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[20]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[21]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[22]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[23]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[24]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[25]	=>  Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[26]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[27]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[28]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[29]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[30]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writedata[31]	=>  Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF user_hw IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_chipselect : std_logic;
SIGNAL ww_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_write_en : std_logic;
SIGNAL ww_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_add : std_logic;
SIGNAL ww_read_en : std_logic;
SIGNAL ww_led_en : std_logic;
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \resetn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \write_en~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \chipselect~combout\ : std_logic;
SIGNAL \add~combout\ : std_logic;
SIGNAL \resetn~combout\ : std_logic;
SIGNAL \resetn~clkctrl_outclk\ : std_logic;
SIGNAL \write_enable_r1~0_combout\ : std_logic;
SIGNAL \read_en~combout\ : std_logic;
SIGNAL \readdata~0_combout\ : std_logic;
SIGNAL \readdata~1_combout\ : std_logic;
SIGNAL \readdata~2_combout\ : std_logic;
SIGNAL \readdata~3_combout\ : std_logic;
SIGNAL \readdata~4_combout\ : std_logic;
SIGNAL \readdata~5_combout\ : std_logic;
SIGNAL \readdata~6_combout\ : std_logic;
SIGNAL \readdata~7_combout\ : std_logic;
SIGNAL \readdata~8_combout\ : std_logic;
SIGNAL \readdata~9_combout\ : std_logic;
SIGNAL \readdata~10_combout\ : std_logic;
SIGNAL \readdata~11_combout\ : std_logic;
SIGNAL \readdata~12_combout\ : std_logic;
SIGNAL \readdata~13_combout\ : std_logic;
SIGNAL \readdata~14_combout\ : std_logic;
SIGNAL \readdata~15_combout\ : std_logic;
SIGNAL \readdata~16_combout\ : std_logic;
SIGNAL \readdata~17_combout\ : std_logic;
SIGNAL \readdata~18_combout\ : std_logic;
SIGNAL \readdata~19_combout\ : std_logic;
SIGNAL \readdata~20_combout\ : std_logic;
SIGNAL \readdata~21_combout\ : std_logic;
SIGNAL \readdata~22_combout\ : std_logic;
SIGNAL \readdata~23_combout\ : std_logic;
SIGNAL \readdata~24_combout\ : std_logic;
SIGNAL \readdata~25_combout\ : std_logic;
SIGNAL \readdata~26_combout\ : std_logic;
SIGNAL \readdata~27_combout\ : std_logic;
SIGNAL \readdata~28_combout\ : std_logic;
SIGNAL \readdata~29_combout\ : std_logic;
SIGNAL \readdata~30_combout\ : std_logic;
SIGNAL \readdata~31_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \r1|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \writedata~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~10_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_resetn <= resetn;
ww_chipselect <= chipselect;
ww_writedata <= writedata;
ww_write_en <= write_en;
readdata <= ww_readdata;
ww_add <= add;
ww_read_en <= read_en;
led_en <= ww_led_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\resetn~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \resetn~combout\);
\ALT_INV_Equal0~10_combout\ <= NOT \Equal0~10_combout\;

-- Location: LCCOMB_X4_Y1_N8
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\r1|Q\(18) & (!\r1|Q\(19) & (!\r1|Q\(16) & !\r1|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(18),
	datab => \r1|Q\(19),
	datac => \r1|Q\(16),
	datad => \r1|Q\(17),
	combout => \Equal0~3_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\write_en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_write_en,
	combout => \write_en~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\chipselect~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_chipselect,
	combout => \chipselect~combout\);

-- Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\add~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_add,
	combout => \add~combout\);

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(0),
	combout => \writedata~combout\(0));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\resetn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_resetn,
	combout => \resetn~combout\);

-- Location: CLKCTRL_G1
\resetn~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \resetn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \resetn~clkctrl_outclk\);

-- Location: LCCOMB_X4_Y3_N22
\write_enable_r1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \write_enable_r1~0_combout\ = (\write_en~combout\ & (\chipselect~combout\ & !\add~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_en~combout\,
	datab => \chipselect~combout\,
	datad => \add~combout\,
	combout => \write_enable_r1~0_combout\);

-- Location: LCFF_X4_Y1_N1
\r1|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(0),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(0));

-- Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\read_en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_read_en,
	combout => \read_en~combout\);

-- Location: LCCOMB_X4_Y1_N0
\readdata~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~0_combout\ = (\chipselect~combout\ & (\read_en~combout\ & (\add~combout\ $ (\r1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(0),
	datad => \read_en~combout\,
	combout => \readdata~0_combout\);

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(1),
	combout => \writedata~combout\(1));

-- Location: LCFF_X4_Y1_N19
\r1|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(1),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(1));

-- Location: LCCOMB_X4_Y1_N18
\readdata~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~1_combout\ = (\chipselect~combout\ & (\read_en~combout\ & (\add~combout\ $ (\r1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(1),
	datad => \read_en~combout\,
	combout => \readdata~1_combout\);

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(2),
	combout => \writedata~combout\(2));

-- Location: LCFF_X4_Y1_N21
\r1|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(2),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(2));

-- Location: LCCOMB_X4_Y1_N20
\readdata~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~2_combout\ = (\chipselect~combout\ & (\read_en~combout\ & (\add~combout\ $ (\r1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(2),
	datad => \read_en~combout\,
	combout => \readdata~2_combout\);

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(3),
	combout => \writedata~combout\(3));

-- Location: LCFF_X4_Y1_N15
\r1|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(3),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(3));

-- Location: LCCOMB_X4_Y1_N14
\readdata~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~3_combout\ = (\chipselect~combout\ & (\read_en~combout\ & (\add~combout\ $ (\r1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(3),
	datad => \read_en~combout\,
	combout => \readdata~3_combout\);

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(4),
	combout => \writedata~combout\(4));

-- Location: LCFF_X4_Y1_N25
\r1|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(4),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(4));

-- Location: LCCOMB_X4_Y1_N24
\readdata~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~4_combout\ = (\chipselect~combout\ & (\read_en~combout\ & (\add~combout\ $ (\r1|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(4),
	datad => \read_en~combout\,
	combout => \readdata~4_combout\);

-- Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(5),
	combout => \writedata~combout\(5));

-- Location: LCFF_X4_Y1_N11
\r1|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(5),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(5));

-- Location: LCCOMB_X4_Y1_N10
\readdata~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~5_combout\ = (\chipselect~combout\ & (\read_en~combout\ & (\add~combout\ $ (\r1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(5),
	datad => \read_en~combout\,
	combout => \readdata~5_combout\);

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(6),
	combout => \writedata~combout\(6));

-- Location: LCFF_X4_Y1_N29
\r1|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(6),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(6));

-- Location: LCCOMB_X4_Y1_N28
\readdata~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~6_combout\ = (\chipselect~combout\ & (\read_en~combout\ & (\add~combout\ $ (\r1|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(6),
	datad => \read_en~combout\,
	combout => \readdata~6_combout\);

-- Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(7),
	combout => \writedata~combout\(7));

-- Location: LCFF_X4_Y1_N7
\r1|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(7),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(7));

-- Location: LCCOMB_X4_Y1_N6
\readdata~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~7_combout\ = (\chipselect~combout\ & (\read_en~combout\ & (\add~combout\ $ (\r1|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(7),
	datad => \read_en~combout\,
	combout => \readdata~7_combout\);

-- Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(8),
	combout => \writedata~combout\(8));

-- Location: LCFF_X4_Y3_N17
\r1|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(8),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(8));

-- Location: LCCOMB_X4_Y3_N16
\readdata~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~8_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\,
	datab => \read_en~combout\,
	datac => \r1|Q\(8),
	datad => \chipselect~combout\,
	combout => \readdata~8_combout\);

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(9),
	combout => \writedata~combout\(9));

-- Location: LCFF_X4_Y3_N11
\r1|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(9),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(9));

-- Location: LCCOMB_X4_Y3_N10
\readdata~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~9_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\,
	datab => \read_en~combout\,
	datac => \r1|Q\(9),
	datad => \chipselect~combout\,
	combout => \readdata~9_combout\);

-- Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(10),
	combout => \writedata~combout\(10));

-- Location: LCFF_X4_Y3_N29
\r1|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(10),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(10));

-- Location: LCCOMB_X4_Y3_N28
\readdata~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~10_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\,
	datab => \read_en~combout\,
	datac => \r1|Q\(10),
	datad => \chipselect~combout\,
	combout => \readdata~10_combout\);

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(11),
	combout => \writedata~combout\(11));

-- Location: LCFF_X4_Y3_N15
\r1|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(11),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(11));

-- Location: LCCOMB_X4_Y3_N14
\readdata~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~11_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\,
	datab => \read_en~combout\,
	datac => \r1|Q\(11),
	datad => \chipselect~combout\,
	combout => \readdata~11_combout\);

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(12),
	combout => \writedata~combout\(12));

-- Location: LCFF_X4_Y3_N25
\r1|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(12),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(12));

-- Location: LCCOMB_X4_Y3_N24
\readdata~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~12_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\,
	datab => \read_en~combout\,
	datac => \r1|Q\(12),
	datad => \chipselect~combout\,
	combout => \readdata~12_combout\);

-- Location: PIN_V5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(13),
	combout => \writedata~combout\(13));

-- Location: LCFF_X4_Y3_N19
\r1|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(13),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(13));

-- Location: LCCOMB_X4_Y3_N18
\readdata~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~13_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\,
	datab => \read_en~combout\,
	datac => \r1|Q\(13),
	datad => \chipselect~combout\,
	combout => \readdata~13_combout\);

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(14),
	combout => \writedata~combout\(14));

-- Location: LCFF_X4_Y3_N21
\r1|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(14),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(14));

-- Location: LCCOMB_X4_Y3_N20
\readdata~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~14_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\,
	datab => \read_en~combout\,
	datac => \r1|Q\(14),
	datad => \chipselect~combout\,
	combout => \readdata~14_combout\);

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(15),
	combout => \writedata~combout\(15));

-- Location: LCFF_X4_Y3_N31
\r1|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(15),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(15));

-- Location: LCCOMB_X4_Y3_N30
\readdata~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~15_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add~combout\,
	datab => \read_en~combout\,
	datac => \r1|Q\(15),
	datad => \chipselect~combout\,
	combout => \readdata~15_combout\);

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(16),
	combout => \writedata~combout\(16));

-- Location: LCFF_X4_Y1_N17
\r1|Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(16),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(16));

-- Location: LCCOMB_X4_Y1_N16
\readdata~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~16_combout\ = (\chipselect~combout\ & (\read_en~combout\ & (\add~combout\ $ (\r1|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(16),
	datad => \read_en~combout\,
	combout => \readdata~16_combout\);

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(17),
	combout => \writedata~combout\(17));

-- Location: LCFF_X4_Y1_N27
\r1|Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(17),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(17));

-- Location: LCCOMB_X4_Y1_N26
\readdata~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~17_combout\ = (\chipselect~combout\ & (\read_en~combout\ & (\add~combout\ $ (\r1|Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(17),
	datad => \read_en~combout\,
	combout => \readdata~17_combout\);

-- Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(18),
	combout => \writedata~combout\(18));

-- Location: LCFF_X4_Y1_N13
\r1|Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(18),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(18));

-- Location: LCCOMB_X4_Y1_N12
\readdata~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~18_combout\ = (\chipselect~combout\ & (\read_en~combout\ & (\add~combout\ $ (\r1|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(18),
	datad => \read_en~combout\,
	combout => \readdata~18_combout\);

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(19),
	combout => \writedata~combout\(19));

-- Location: LCFF_X4_Y1_N31
\r1|Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(19),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(19));

-- Location: LCCOMB_X4_Y1_N30
\readdata~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~19_combout\ = (\chipselect~combout\ & (\read_en~combout\ & (\add~combout\ $ (\r1|Q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(19),
	datad => \read_en~combout\,
	combout => \readdata~19_combout\);

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(20),
	combout => \writedata~combout\(20));

-- Location: LCFF_X16_Y1_N17
\r1|Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(20),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(20));

-- Location: LCCOMB_X16_Y1_N16
\readdata~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~20_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(20),
	datad => \chipselect~combout\,
	combout => \readdata~20_combout\);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(21),
	combout => \writedata~combout\(21));

-- Location: LCFF_X16_Y1_N27
\r1|Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(21),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(21));

-- Location: LCCOMB_X16_Y1_N26
\readdata~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~21_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(21),
	datad => \chipselect~combout\,
	combout => \readdata~21_combout\);

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(22),
	combout => \writedata~combout\(22));

-- Location: LCFF_X16_Y1_N21
\r1|Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(22),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(22));

-- Location: LCCOMB_X16_Y1_N20
\readdata~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~22_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(22),
	datad => \chipselect~combout\,
	combout => \readdata~22_combout\);

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(23),
	combout => \writedata~combout\(23));

-- Location: LCFF_X16_Y1_N31
\r1|Q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(23),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(23));

-- Location: LCCOMB_X16_Y1_N30
\readdata~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~23_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(23),
	datad => \chipselect~combout\,
	combout => \readdata~23_combout\);

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(24),
	combout => \writedata~combout\(24));

-- Location: LCFF_X16_Y1_N25
\r1|Q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(24),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(24));

-- Location: LCCOMB_X16_Y1_N24
\readdata~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~24_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(24),
	datad => \chipselect~combout\,
	combout => \readdata~24_combout\);

-- Location: PIN_AE9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(25),
	combout => \writedata~combout\(25));

-- Location: LCFF_X16_Y1_N19
\r1|Q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(25),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(25));

-- Location: LCCOMB_X16_Y1_N18
\readdata~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~25_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(25),
	datad => \chipselect~combout\,
	combout => \readdata~25_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(26),
	combout => \writedata~combout\(26));

-- Location: LCFF_X16_Y1_N13
\r1|Q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(26),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(26));

-- Location: LCCOMB_X16_Y1_N12
\readdata~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~26_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(26),
	datad => \chipselect~combout\,
	combout => \readdata~26_combout\);

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(27),
	combout => \writedata~combout\(27));

-- Location: LCFF_X16_Y1_N23
\r1|Q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(27),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(27));

-- Location: LCCOMB_X16_Y1_N22
\readdata~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~27_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(27),
	datad => \chipselect~combout\,
	combout => \readdata~27_combout\);

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(28),
	combout => \writedata~combout\(28));

-- Location: LCFF_X16_Y1_N1
\r1|Q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(28),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(28));

-- Location: LCCOMB_X16_Y1_N0
\readdata~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~28_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(28),
	datad => \chipselect~combout\,
	combout => \readdata~28_combout\);

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(29),
	combout => \writedata~combout\(29));

-- Location: LCFF_X16_Y1_N11
\r1|Q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(29),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(29));

-- Location: LCCOMB_X16_Y1_N10
\readdata~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~29_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(29),
	datad => \chipselect~combout\,
	combout => \readdata~29_combout\);

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(30),
	combout => \writedata~combout\(30));

-- Location: LCFF_X16_Y1_N29
\r1|Q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(30),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(30));

-- Location: LCCOMB_X16_Y1_N28
\readdata~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~30_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(30),
	datad => \chipselect~combout\,
	combout => \readdata~30_combout\);

-- Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writedata[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_writedata(31),
	combout => \writedata~combout\(31));

-- Location: LCFF_X16_Y1_N7
\r1|Q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \writedata~combout\(31),
	aclr => \resetn~clkctrl_outclk\,
	sload => VCC,
	ena => \write_enable_r1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q\(31));

-- Location: LCCOMB_X16_Y1_N6
\readdata~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \readdata~31_combout\ = (\read_en~combout\ & (\chipselect~combout\ & (\add~combout\ $ (\r1|Q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \read_en~combout\,
	datab => \add~combout\,
	datac => \r1|Q\(31),
	datad => \chipselect~combout\,
	combout => \readdata~31_combout\);

-- Location: LCCOMB_X16_Y1_N4
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\r1|Q\(20) & (!\r1|Q\(23) & (!\r1|Q\(22) & !\r1|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(20),
	datab => \r1|Q\(23),
	datac => \r1|Q\(22),
	datad => \r1|Q\(21),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X16_Y1_N8
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\r1|Q\(29) & (!\r1|Q\(30) & (!\r1|Q\(31) & !\r1|Q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(29),
	datab => \r1|Q\(30),
	datac => \r1|Q\(31),
	datad => \r1|Q\(28),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X16_Y1_N2
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\r1|Q\(26) & (!\r1|Q\(27) & (!\r1|Q\(24) & !\r1|Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(26),
	datab => \r1|Q\(27),
	datac => \r1|Q\(24),
	datad => \r1|Q\(25),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X16_Y1_N14
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X4_Y1_N2
\Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\r1|Q\(5) & (!\r1|Q\(6) & (!\r1|Q\(4) & !\r1|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(5),
	datab => \r1|Q\(6),
	datac => \r1|Q\(4),
	datad => \r1|Q\(7),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X4_Y1_N4
\Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (!\r1|Q\(2) & (!\r1|Q\(0) & (!\r1|Q\(3) & !\r1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(2),
	datab => \r1|Q\(0),
	datac => \r1|Q\(3),
	datad => \r1|Q\(1),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X4_Y3_N26
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\r1|Q\(9) & (!\r1|Q\(11) & (!\r1|Q\(8) & !\r1|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(9),
	datab => \r1|Q\(11),
	datac => \r1|Q\(8),
	datad => \r1|Q\(10),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X4_Y3_N8
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\r1|Q\(12) & !\r1|Q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r1|Q\(12),
	datad => \r1|Q\(13),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X4_Y3_N12
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\r1|Q\(14) & (\Equal0~6_combout\ & (\Equal0~5_combout\ & !\r1|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(14),
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \r1|Q\(15),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X4_Y1_N22
\Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~4_combout\ & (\Equal0~8_combout\ & (\Equal0~9_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~10_combout\);

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(0));

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(1));

-- Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(2));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(3));

-- Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(4));

-- Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(5));

-- Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(6));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(7));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(8));

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(9));

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(10));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(11));

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(12));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(13));

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(14));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(15));

-- Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(16));

-- Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(17));

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(18));

-- Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(19));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(20));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(21));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(22));

-- Location: PIN_Y11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(23));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(24));

-- Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(25));

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(26));

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(27));

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(28));

-- Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(29));

-- Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(30));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\readdata[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \readdata~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_readdata(31));

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_en);
END structure;


