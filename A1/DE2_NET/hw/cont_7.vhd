library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.numeric_std.all;

entity cont_7 is
    Port ( clk : in STD_LOGIC;
			  clk50: in std_logic;
           rst : in STD_LOGIC;
			  read_en: in STD_LOGIC;
           load : in STD_LOGIC;
           load_value : in STD_LOGIC_VECTOR (7 downto 0);
           counter : out STD_LOGIC_VECTOR (7 downto 0));
end cont_7;

architecture Behavioral of cont_7 is
    signal count : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
begin
    process(clk, rst, clk50)
    begin
        if rst = '1' then
            count <= (others => '0');
		  elsif load = '1' then
                count <= load_value;
        elsif clk50'event and clk50 = '1'and read_en = '0' then
					if count /= "00000000" then
						count <= std_logic_vector(unsigned(count) - 1);
					end if;
        end if;
    end process;

    counter <= count;
end Behavioral;
