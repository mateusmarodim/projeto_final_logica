LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY top_avalon IS
PORT ( clock, resetn : IN STD_LOGIC;
		 chipselect    : IN  STD_LOGIC;
		 writedata     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
       write_en      : IN  STD_LOGIC;
       readdata      : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
   	 add           : IN STD_LOGIC_VECTOR(1 downto 0);
       read_en       : IN STD_LOGIC

);
END top_avalon;

ARCHITECTURE Y OF top_avalon IS

	COMPONENT reg32
		PORT(
			clock  : IN STD_LOGIC;
			resetn : IN STD_LOGIC;
			WE 	 : IN STD_LOGIC;
			D 		 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			Q 		 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT cont_7
		PORT ( 
			clk : in STD_LOGIC;
			clk50: in std_logic;
		   rst : in STD_LOGIC;
			read_en : in STD_LOGIC;
         load : in STD_LOGIC;
         load_value : in STD_LOGIC_VECTOR (7 downto 0);
         counter : out STD_LOGIC_VECTOR (7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT divisor
		PORT (
			CLK: in std_logic;
			RST: in std_logic;
			DIV50: out std_logic
		);
	END COMPONENT;

	
--------------------------------------------------------
--
-- ADD:  0 horario, 1 anti horario
--								
-- Writedata: (8 bits)
--------------------------------------------------------

	-----------
	signal reset : std_logic;
	
	-- Reg 1 --
	signal write_enable_r1 : std_logic;
	signal read_enable_r1  : std_logic;
	signal r1_out: STD_LOGIC_VECTOR(31 DOWNTO 0);

	-- Reg 2 --
	signal write_enable_r2, read_enable_r2 : std_logic;
	signal r2_out: STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	-- Divisor 50 --
	signal clock50: std_logic;
	
	-- Clockwise cron --
	signal rot_clockwise, cron_en1: std_logic;
	signal rot_time: std_logic_vector(7 downto 0);
	signal cron_load_1: std_logic;
	signal cron_rd_en_1 :std_logic;
	signal cron_value_1: std_logic_vector(7 downto 0);
	
	-- Counter-clockwise cron --
	signal rot_c_clockwise, cron_en2: std_logic;
	signal rot_c_time: std_logic_vector(7 downto 0);
	signal cron_load_2: std_logic;
	signal cron_rd_en_2 :std_logic;
	signal cron_value_2: std_logic_vector(7 downto 0);

BEGIN
	
	reset <= not resetn;
	
	write_enable_r1 <= write_en and chipselect and (not add(1)) and (not add(0)); -- add 00 (0)
	write_enable_r2 <= write_en and chipselect and (not add(1)) and (    add(0)); -- add 01 (1)
	
	read_enable_r1 <= read_en and chipselect and (not add(1)) and (not add(0)); -- add 00 (0) 
	read_enable_r2 <= read_en and chipselect and (not add(1)) and (    add(0)); -- add 01 (1)
	
	cron_load_1 <= write_en and chipselect and      add(1)  and not add(0); -- add 10 (2)
	cron_load_2 <= write_en and chipselect and      add(1)  and     add(0); -- add 11 (3)
	
	cron_rd_en_1 <= read_en and chipselect and (    add(1)) and (not add(0)); -- add 10 (2)
	cron_rd_en_2 <= read_en and chipselect and      add(1)  and  	  add(0); -- add 11 (3)
	

	

	-- Div50 --
	div50 : divisor
	port map ( 
		CLK	=> clock,
		RST	=> reset,
		DIV50	=> clock50
	);
	
	-- Clockwise --
	r1 : reg32
	port map (
		clock 	=> clock,
		resetn 	=> reset,
		WE       => write_enable_r1,
		D 		   => writedata,
		Q 		   => r1_out
	);
	
	r2 : reg32
	port map (
		clock 	=> clock,
		resetn 	=> reset,
		WE       => write_enable_r2,
		D 		   => writedata,
		Q 		   => r2_out
	);

	cron1 : cont_7 
	port map (
		clk			=> clock,
		clk50			=> clock50,
		rst			=> reset,
		read_en		=> cron_rd_en_1,
		load			=> cron_load_1,
		load_value	=> r1_out(7 downto 0),
		counter		=> cron_value_1
	);
	
	-- Counter clockwise --
	cron2 : cont_7
	port map (
		clk			=> clock,
		clk50			=> clock50,
		rst			=> reset,
		read_en		=> cron_rd_en_2,
		load			=> cron_load_2,
		load_value	=> r2_out(7 downto 0),
		counter		=> cron_value_2
	);
	
	
   readdata <= x"000000" & cron_value_1 when cron_rd_en_1 = '1' else
               x"000000" & cron_value_2 when cron_rd_en_2 = '1' else (others => 'Z');
END Y;