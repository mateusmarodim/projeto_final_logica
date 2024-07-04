library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity cont_7 is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           load : in STD_LOGIC;
           load_value : in STD_LOGIC_VECTOR (7 downto 0);
           counter : out STD_LOGIC_VECTOR (7 downto 0));
end cont_7;

architecture Behavioral of cont_7 is
    signal count : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
begin
    process(clk, rst)
    begin
        if rst = '1' then
            count <= (others => '0');
        elsif rising_edge(clk) then
            if load = '1' then
                count <= load_value;
            else
                count <= count - 1;
            end if;
        end if;
    end process;

    counter <= count;
end Behavioral;
