library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cont_mod_100 is
    port (
        EN: in std_logic;
        RST: in std_logic;
        CLK: in std_logic;
        CLR: in std_logic;
        CLR_OUT: out std_logic; -- saída para informar para o contador dos segundos (cont_mod_60 BCD) quando chega em 99
        DEZENA: out std_logic_vector(3 downto 0);
        UNIDADE: out std_logic_vector(3 downto 0)
    );
end entity;

architecture a_cont_mod_100 of cont_mod_100 is
component cont_4 is
    port(
		CLK: in std_logic;
		RST: in std_logic;
		EN: in std_logic;
		CLR: in std_logic;
		Q: out std_logic_vector(3 downto 0)
	);
end component;

signal en_dezena_s: std_logic; 
signal clr_dezena_s: std_logic;
signal out_dezena_s: std_logic_vector(3 downto 0);

signal clr_unidade_s: std_logic;
signal out_unidade_s: std_logic_vector(3 downto 0);

begin
    -- instanciando um contador de 4 bits (BCD) para as dezenas e um para as unidades
    CONT_DEZENA: cont_4 port map(
        CLK => CLK,
        RST => RST,
        EN => en_dezena_s,
        CLR => clr_dezena_s,
        Q => out_dezena_s
    );
    CONT_UNIDADE: cont_4 port map(
        CLK => CLK,
        RST => RST,
        EN => EN,
        CLR => clr_unidade_s,
        Q => out_unidade_s
    );
    
    -- esse contador é o nível mais baixo, então não depende de nenhum sinal externo 
    en_dezena_s <= '1' when out_unidade_s = "1001" else '0';
    clr_dezena_s <= '1' when CLR = '1' or (out_unidade_s = "1001" and out_dezena_s = "1001") else '0';
    clr_unidade_s <= '1' when CLR = '1' or out_unidade_s = "1001" else '0';

    CLR_OUT <= '1' when CLR = '1' or (out_unidade_s = "1001" and out_dezena_s = "1001") else '0';
    DEZENA <= out_dezena_s;
    UNIDADE <= out_unidade_s;
end architecture;