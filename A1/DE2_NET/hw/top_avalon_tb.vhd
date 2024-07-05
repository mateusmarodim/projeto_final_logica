LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY tb_top_avalon IS
END tb_top_avalon;

ARCHITECTURE behavior OF tb_top_avalon IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT top_avalon
    PORT(
         clock : IN  std_logic;
         resetn : IN  std_logic;
         chipselect : IN  std_logic;
         writedata : IN  std_logic_vector(31 DOWNTO 0);
         write_en : IN  std_logic;
         readdata : OUT  std_logic_vector(31 DOWNTO 0);
         add : IN  std_logic_vector(1 downto 0);
         read_en : IN  std_logic
        );
    END COMPONENT;
    
    -- Inputs
    signal clock : std_logic := '0';
    signal resetn : std_logic := '0';
    signal chipselect : std_logic := '0';
    signal writedata : std_logic_vector(31 DOWNTO 0) := (others => '0');
    signal write_en : std_logic := '0';
    signal add : std_logic_vector(1 downto 0) := "00";
    signal read_en : std_logic := '0';

    -- Outputs
    signal readdata : std_logic_vector(31 DOWNTO 0);

    -- Clock period definitions
    constant clock_period : time := 10 ns;
    
BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: top_avalon PORT MAP (
          clock => clock,
          resetn => resetn,
          chipselect => chipselect,
          writedata => writedata,
          write_en => write_en,
          readdata => readdata,
          add => add,
          read_en => read_en
        );

    -- Clock process definitions
    clock_process :process
    begin
        clock <= '0';
        wait for clock_period/2;
        clock <= '1';
        wait for clock_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin		
        -- hold reset state for 100 ns.
        wait for 100 ns;  
        resetn <= '1';
        wait for 20 ns;

        -- Send the value 100 to cron1
        chipselect <= '1';
        writedata <= x"00000064"; -- 100 in hexadecimal
        write_en <= '1';
        add <= "00"; -- Write to cron1
        wait for 20 ns;
        write_en <= '0';
        chipselect <= '0';
        
        -- Read from cron1
        wait for 20 ns;
        chipselect <= '1';
        write_en <= '1';
        add <= "10"; -- Read from cron1
        wait for 20 ns;
        write_en <= '0';
        chipselect <= '0';
		  
		   
        -- Read from cron1
        wait for 20 ns;
        chipselect <= '1';
        read_en <= '1';
        add <= "10"; -- Read from cron1
        wait for 20 ns;
        read_en <= '0';
        chipselect <= '0';

        -- Add a wait statement to observe results
        wait for 100 ns;

        -- End simulation
        wait;
    end process;

END;
