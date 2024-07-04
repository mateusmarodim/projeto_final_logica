LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY top_avalon IS
PORT ( clock, resetn : IN STD_LOGIC;
		 chipselect    : IN  STD_LOGIC;
		 writedata     : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
       write_en      : IN  STD_LOGIC;
       readdata      : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
   	 add           : IN STD_LOGIC;
       read_en       : IN STD_LOGIC;
		 gpio_en			: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)

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
		   rst : in STD_LOGIC;
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
-- ADD: 1 horario, 0 anti horario
--								
-- Writedata: 
--------------------------------------------------------

	-- Reg 1 --
	signal write_enable_r1 : std_logic;
	signal read_enable_r1, read_enable_r1_n: std_logic;
	signal r1_out: STD_LOGIC_VECTOR(31 DOWNTO 0);

	-- Reg 2 --
	signal write_enable_r2 : std_logic;
	signal r2_out: STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	-- Divisor 50 --
	--signal clock50: std_logic;
	
	-- Clockwise cron --
	signal rot_clockwise: std_logic;
	signal rot_time: std_logic_vector(7 downto 0);
	signal cron_load: std_logic;
	signal cron_current_time: std_logic_vector(7 downto 0);
	
	-- Counter-clockwise cron --
	signal rot_c_clockwise: std_logic;
	signal rot_c_time: std_logic_vector(7 downto 0);
	signal cron_load_2: std_logic;
	signal cron_current_time_2: std_logic_vector(7 downto 0);

BEGIN

	rot_clockwise <= r1_out(7);
	rot_time <= r1_out(7 downto 0);

	write_enable_r1 <= write_en and chipselect and (not add);
	write_enable_r2 <= write_en and chipselect and (add);
	
	-- Clockwise --
	cron1 : cont_7 
	port map (
		clk 			=> clock,
		rst			=> resetn,
		load			=> cron_load,
		load_value	=> rot_time,
		counter		=> cron_current_time
	);
	
	r1 : reg32
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
		WE       => write_enable_r1,
		D 		   => writedata,
		Q 		   => r1_out
	);
	
	-- Counter clockwise --
	cron2 : cont_7
	port map (
		clk			=> clock,
		rst			=> resetn,
		load			=> cron_load_2,
		load_value	=> rot_c_time,
		counter		=> cron_current_time_2
	);

	r2 : reg32
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
		WE       => write_enable_r2,
		D 		   => writedata,
		Q 		   => r2_out
	);

	process(clock)

	begin
	end process;		

	-- sinais de habilitação de leitura
	read_enable_r1 <= read_en and chipselect and (not add);
	read_enable_r1_n <= read_en and chipselect and add;
	
	readdata <= r1_out 	when read_enable_r1 = '1' else
					r2_out	when read_enable_r1_n = '1' else
					(others => '0');
	-- led_en <= '1' when r1_out  /= "00000000000000000000000000000000" else '0';
END Y;