-- system_0_tri_state_bridge_0_pinSharer_0.vhd

-- This file was auto-generated from altera_tristate_conduit_pin_sharer_hw.tcl.  If you edit it your changes
-- will probably be lost.
-- 
-- Generated using ACDS version 13.0sp1 232 at 2021.05.24.00:05:24

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity system_0_tri_state_bridge_0_pinSharer_0 is
	port (
		clk_clk                       : in  std_logic                     := '0';             --   clk.clk
		reset_reset                   : in  std_logic                     := '0';             -- reset.reset
		request                       : out std_logic;                                        --   tcm.request
		grant                         : in  std_logic                     := '0';             --      .grant
		tri_state_bridge_0_address    : out std_logic_vector(21 downto 0);                    --      .tri_state_bridge_0_address_out
		tri_state_bridge_0_readn      : out std_logic_vector(0 downto 0);                     --      .tri_state_bridge_0_readn_out
		write_n_to_the_cfi_flash_0    : out std_logic_vector(0 downto 0);                     --      .write_n_to_the_cfi_flash_0_out
		tri_state_bridge_0_data       : out std_logic_vector(7 downto 0);                     --      .tri_state_bridge_0_data_out
		tri_state_bridge_0_data_in    : in  std_logic_vector(7 downto 0)  := (others => '0'); --      .tri_state_bridge_0_data_in
		tri_state_bridge_0_data_outen : out std_logic;                                        --      .tri_state_bridge_0_data_outen
		select_n_to_the_cfi_flash_0   : out std_logic_vector(0 downto 0);                     --      .select_n_to_the_cfi_flash_0_out
		tcs0_request                  : in  std_logic                     := '0';             --  tcs0.request
		tcs0_grant                    : out std_logic;                                        --      .grant
		tcs0_address_out              : in  std_logic_vector(21 downto 0) := (others => '0'); --      .address_out
		tcs0_read_n_out               : in  std_logic_vector(0 downto 0)  := (others => '0'); --      .read_n_out
		tcs0_write_n_out              : in  std_logic_vector(0 downto 0)  := (others => '0'); --      .write_n_out
		tcs0_data_out                 : in  std_logic_vector(7 downto 0)  := (others => '0'); --      .data_out
		tcs0_data_in                  : out std_logic_vector(7 downto 0);                     --      .data_in
		tcs0_data_outen               : in  std_logic                     := '0';             --      .data_outen
		tcs0_chipselect_n_out         : in  std_logic_vector(0 downto 0)  := (others => '0')  --      .chipselect_n_out
	);
end entity system_0_tri_state_bridge_0_pinSharer_0;

architecture rtl of system_0_tri_state_bridge_0_pinSharer_0 is
	component system_0_tri_state_bridge_0_pinSharer_0_pin_sharer is
		port (
			clk                           : in  std_logic                     := 'X';             -- clk
			reset                         : in  std_logic                     := 'X';             -- reset
			request                       : out std_logic;                                        -- request
			grant                         : in  std_logic                     := 'X';             -- grant
			tri_state_bridge_0_address    : out std_logic_vector(21 downto 0);                    -- tri_state_bridge_0_address_out
			tri_state_bridge_0_readn      : out std_logic_vector(0 downto 0);                     -- tri_state_bridge_0_readn_out
			write_n_to_the_cfi_flash_0    : out std_logic_vector(0 downto 0);                     -- write_n_to_the_cfi_flash_0_out
			tri_state_bridge_0_data       : out std_logic_vector(7 downto 0);                     -- tri_state_bridge_0_data_out
			tri_state_bridge_0_data_in    : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- tri_state_bridge_0_data_in
			tri_state_bridge_0_data_outen : out std_logic;                                        -- tri_state_bridge_0_data_outen
			select_n_to_the_cfi_flash_0   : out std_logic_vector(0 downto 0);                     -- select_n_to_the_cfi_flash_0_out
			tcs0_request                  : in  std_logic                     := 'X';             -- request
			tcs0_grant                    : out std_logic;                                        -- grant
			tcs0_tcm_address_out          : in  std_logic_vector(21 downto 0) := (others => 'X'); -- address_out
			tcs0_tcm_read_n_out           : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- read_n_out
			tcs0_tcm_write_n_out          : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- write_n_out
			tcs0_tcm_data_out             : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- data_out
			tcs0_tcm_data_in              : out std_logic_vector(7 downto 0);                     -- data_in
			tcs0_tcm_data_outen           : in  std_logic                     := 'X';             -- data_outen
			tcs0_tcm_chipselect_n_out     : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- chipselect_n_out
			ack                           : out std_logic;                                        -- ready
			next_grant                    : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- data
			arb_cfi_flash_0_tcm           : out std_logic                                         -- valid
		);
	end component system_0_tri_state_bridge_0_pinSharer_0_pin_sharer;

	component system_0_tri_state_bridge_0_pinSharer_0_arbiter is
		port (
			clk         : in  std_logic                    := 'X'; -- clk
			reset       : in  std_logic                    := 'X'; -- reset
			ack         : in  std_logic                    := 'X'; -- ready
			next_grant  : out std_logic_vector(0 downto 0);        -- data
			sink0_valid : in  std_logic                    := 'X'  -- valid
		);
	end component system_0_tri_state_bridge_0_pinSharer_0_arbiter;

	signal arbiter_grant_data        : std_logic_vector(0 downto 0); -- arbiter:next_grant -> pin_sharer:next_grant
	signal arbiter_grant_ready       : std_logic;                    -- pin_sharer:ack -> arbiter:ack
	signal pin_sharer_tcs0_arb_valid : std_logic;                    -- pin_sharer:arb_cfi_flash_0_tcm -> arbiter:sink0_valid

begin

	pin_sharer : component system_0_tri_state_bridge_0_pinSharer_0_pin_sharer
		port map (
			clk                           => clk_clk,                       --      clk.clk
			reset                         => reset_reset,                   --    reset.reset
			request                       => request,                       --      tcm.request
			grant                         => grant,                         --         .grant
			tri_state_bridge_0_address    => tri_state_bridge_0_address,    --         .tri_state_bridge_0_address_out
			tri_state_bridge_0_readn      => tri_state_bridge_0_readn,      --         .tri_state_bridge_0_readn_out
			write_n_to_the_cfi_flash_0    => write_n_to_the_cfi_flash_0,    --         .write_n_to_the_cfi_flash_0_out
			tri_state_bridge_0_data       => tri_state_bridge_0_data,       --         .tri_state_bridge_0_data_out
			tri_state_bridge_0_data_in    => tri_state_bridge_0_data_in,    --         .tri_state_bridge_0_data_in
			tri_state_bridge_0_data_outen => tri_state_bridge_0_data_outen, --         .tri_state_bridge_0_data_outen
			select_n_to_the_cfi_flash_0   => select_n_to_the_cfi_flash_0,   --         .select_n_to_the_cfi_flash_0_out
			tcs0_request                  => tcs0_request,                  --     tcs0.request
			tcs0_grant                    => tcs0_grant,                    --         .grant
			tcs0_tcm_address_out          => tcs0_address_out,              --         .address_out
			tcs0_tcm_read_n_out           => tcs0_read_n_out,               --         .read_n_out
			tcs0_tcm_write_n_out          => tcs0_write_n_out,              --         .write_n_out
			tcs0_tcm_data_out             => tcs0_data_out,                 --         .data_out
			tcs0_tcm_data_in              => tcs0_data_in,                  --         .data_in
			tcs0_tcm_data_outen           => tcs0_data_outen,               --         .data_outen
			tcs0_tcm_chipselect_n_out     => tcs0_chipselect_n_out,         --         .chipselect_n_out
			ack                           => arbiter_grant_ready,           --    grant.ready
			next_grant                    => arbiter_grant_data,            --         .data
			arb_cfi_flash_0_tcm           => pin_sharer_tcs0_arb_valid      -- tcs0_arb.valid
		);

	arbiter : component system_0_tri_state_bridge_0_pinSharer_0_arbiter
		port map (
			clk         => clk_clk,                   --       clk.clk
			reset       => reset_reset,               -- clk_reset.reset
			ack         => arbiter_grant_ready,       --     grant.ready
			next_grant  => arbiter_grant_data,        --          .data
			sink0_valid => pin_sharer_tcs0_arb_valid  --     sink0.valid
		);

end architecture rtl; -- of system_0_tri_state_bridge_0_pinSharer_0
