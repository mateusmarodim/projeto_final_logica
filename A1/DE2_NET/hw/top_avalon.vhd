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
		 led_en			: OUT STD_LOGIC
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
	signal read_enable_r1, read_enable_r1_n: std_logic;
	signal r1_out, r1_out_n: STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN

	write_enable_r1 <= write_en and chipselect and (not add);
	r1_out_n <= not r1_out;

	r1 : reg32
	
	port map (
		clock 	=> clock,
		resetn 	=> resetn,
		WE       => write_enable_r1,
		D 		   => writedata,
		Q 		   => r1_out
	);

	process(clock)

	begin
	end process;		

	-- sinais de habilitação de leitura
	read_enable_r1 <= read_en and chipselect and (not add);
	read_enable_r1_n <= read_en and chipselect and add;
	readdata <= r1_out 	when read_enable_r1 = '1' else 
					r1_out_n when read_enable_r1_n = '1' else
					(others => '0');
	led_en <= '1' when r1_out  /= "00000000000000000000000000000000" else '0';
END Y;