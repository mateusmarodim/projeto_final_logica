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

	signal write_enable_r1 : std_logic;
	signal read_enable_r1: std_logic;
	signal r1_out: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal gpio_en : std_logic_vector(3 downto 0);
	signal rot_clockwise: std_logic;
	signal rot_time: std_logic_vector(6 downto 0);
	signal cron_load: std_logic;
	signal cron_current_time: std_logic_vector(6 downto 0);

BEGIN

	rot_clockwise <= r1_out(7);
	rot_time <= r1_out(6 downto 0);

	write_enable_r1 <= write_en and chipselect and (not add);

	r1 : reg32
	
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
		WE       => write_enable_r1,
		D 		   => writedata,
		Q 		   => r1_out
	);
	
	cron : cont_7
	n 
	port map (
		clk 			=> clock,
		rst			=> resetn,
		load			=> cron_load,
		load_value	=> rot_time,
		counter		=> cron_current_time
	);

	process(clock)

	begin
	end process;		

	-- sinais de habilitação de leitura
	read_enable_r1 <= read_en and chipselect and (not add);
	read_enable_r1_n <= read_en and chipselect and add;
	readdata <= r1_out 	when read_enable_r1 = '1' else 
					(others => '0');
	-- led_en <= '1' when r1_out  /= "00000000000000000000000000000000" else '0';
END Y;