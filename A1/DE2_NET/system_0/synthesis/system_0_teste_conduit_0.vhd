-- system_0_teste_conduit_0.vhd

-- Generated using ACDS version 13.0sp1 232 at 2024.07.03.21:10:14

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity system_0_teste_conduit_0 is
	port (
		writedata  : in  std_logic_vector(31 downto 0) := (others => '0'); -- avalon_slave_0.writedata
		readdata   : out std_logic_vector(31 downto 0);                    --               .readdata
		add        : in  std_logic                     := '0';             --               .address
		chipselect : in  std_logic                     := '0';             --               .chipselect
		write_en   : in  std_logic                     := '0';             --               .write
		read_en    : in  std_logic                     := '0';             --               .read
		clock      : in  std_logic                     := '0';             --     clock_sink.clk
		resetn     : in  std_logic                     := '0';             --     reset_sink.reset_n
		led_en     : out std_logic                                         --    conduit_end.export
	);
end entity system_0_teste_conduit_0;

architecture rtl of system_0_teste_conduit_0 is
	component top_avalon is
		port (
			writedata  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			readdata   : out std_logic_vector(31 downto 0);                    -- readdata
			add        : in  std_logic                     := 'X';             -- address
			chipselect : in  std_logic                     := 'X';             -- chipselect
			write_en   : in  std_logic                     := 'X';             -- write
			read_en    : in  std_logic                     := 'X';             -- read
			clock      : in  std_logic                     := 'X';             -- clk
			resetn     : in  std_logic                     := 'X';             -- reset_n
			led_en     : out std_logic                                         -- export
		);
	end component top_avalon;

begin

	teste_conduit_0 : component top_avalon
		port map (
			writedata  => writedata,  -- avalon_slave_0.writedata
			readdata   => readdata,   --               .readdata
			add        => add,        --               .address
			chipselect => chipselect, --               .chipselect
			write_en   => write_en,   --               .write
			read_en    => read_en,    --               .read
			clock      => clock,      --     clock_sink.clk
			resetn     => resetn,     --     reset_sink.reset_n
			led_en     => led_en      --    conduit_end.export
		);

end architecture rtl; -- of system_0_teste_conduit_0
