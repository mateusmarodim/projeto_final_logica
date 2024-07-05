-- system_0_burst_adapter.vhd

-- Generated using ACDS version 13.0sp1 232 at 2024.07.05.19:58:08

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity system_0_burst_adapter is
	generic (
		PKT_ADDR_H                : integer := 42;
		PKT_ADDR_L                : integer := 18;
		PKT_BEGIN_BURST           : integer := 62;
		PKT_BYTE_CNT_H            : integer := 51;
		PKT_BYTE_CNT_L            : integer := 49;
		PKT_BYTEEN_H              : integer := 17;
		PKT_BYTEEN_L              : integer := 16;
		PKT_BURST_SIZE_H          : integer := 57;
		PKT_BURST_SIZE_L          : integer := 55;
		PKT_BURST_TYPE_H          : integer := 59;
		PKT_BURST_TYPE_L          : integer := 58;
		PKT_BURSTWRAP_H           : integer := 54;
		PKT_BURSTWRAP_L           : integer := 52;
		PKT_TRANS_COMPRESSED_READ : integer := 43;
		PKT_TRANS_WRITE           : integer := 45;
		PKT_TRANS_READ            : integer := 46;
		OUT_NARROW_SIZE           : integer := 0;
		IN_NARROW_SIZE            : integer := 0;
		OUT_FIXED                 : integer := 0;
		OUT_COMPLETE_WRAP         : integer := 0;
		ST_DATA_W                 : integer := 84;
		ST_CHANNEL_W              : integer := 27;
		OUT_BYTE_CNT_H            : integer := 50;
		OUT_BURSTWRAP_H           : integer := 54;
		COMPRESSED_READ_SUPPORT   : integer := 0;
		BYTEENABLE_SYNTHESIS      : integer := 1;
		PIPE_INPUTS               : integer := 0;
		NO_WRAP_SUPPORT           : integer := 0;
		BURSTWRAP_CONST_MASK      : integer := 3;
		BURSTWRAP_CONST_VALUE     : integer := 3
	);
	port (
		clk                   : in  std_logic                     := '0';             --       cr0.clk
		reset                 : in  std_logic                     := '0';             -- cr0_reset.reset
		sink0_valid           : in  std_logic                     := '0';             --     sink0.valid
		sink0_data            : in  std_logic_vector(83 downto 0) := (others => '0'); --          .data
		sink0_channel         : in  std_logic_vector(26 downto 0) := (others => '0'); --          .channel
		sink0_startofpacket   : in  std_logic                     := '0';             --          .startofpacket
		sink0_endofpacket     : in  std_logic                     := '0';             --          .endofpacket
		sink0_ready           : out std_logic;                                        --          .ready
		source0_valid         : out std_logic;                                        --   source0.valid
		source0_data          : out std_logic_vector(83 downto 0);                    --          .data
		source0_channel       : out std_logic_vector(26 downto 0);                    --          .channel
		source0_startofpacket : out std_logic;                                        --          .startofpacket
		source0_endofpacket   : out std_logic;                                        --          .endofpacket
		source0_ready         : in  std_logic                     := '0'              --          .ready
	);
end entity system_0_burst_adapter;

architecture rtl of system_0_burst_adapter is
	component altera_merlin_burst_adapter is
		generic (
			PKT_ADDR_H                : integer := 79;
			PKT_ADDR_L                : integer := 48;
			PKT_BEGIN_BURST           : integer := 81;
			PKT_BYTE_CNT_H            : integer := 5;
			PKT_BYTE_CNT_L            : integer := 0;
			PKT_BYTEEN_H              : integer := 83;
			PKT_BYTEEN_L              : integer := 80;
			PKT_BURST_SIZE_H          : integer := 86;
			PKT_BURST_SIZE_L          : integer := 84;
			PKT_BURST_TYPE_H          : integer := 88;
			PKT_BURST_TYPE_L          : integer := 87;
			PKT_BURSTWRAP_H           : integer := 11;
			PKT_BURSTWRAP_L           : integer := 6;
			PKT_TRANS_COMPRESSED_READ : integer := 14;
			PKT_TRANS_WRITE           : integer := 13;
			PKT_TRANS_READ            : integer := 12;
			OUT_NARROW_SIZE           : integer := 0;
			IN_NARROW_SIZE            : integer := 0;
			OUT_FIXED                 : integer := 0;
			OUT_COMPLETE_WRAP         : integer := 0;
			ST_DATA_W                 : integer := 89;
			ST_CHANNEL_W              : integer := 8;
			OUT_BYTE_CNT_H            : integer := 5;
			OUT_BURSTWRAP_H           : integer := 11;
			COMPRESSED_READ_SUPPORT   : integer := 1;
			BYTEENABLE_SYNTHESIS      : integer := 0;
			PIPE_INPUTS               : integer := 0;
			NO_WRAP_SUPPORT           : integer := 0;
			BURSTWRAP_CONST_MASK      : integer := 0;
			BURSTWRAP_CONST_VALUE     : integer := -1
		);
		port (
			clk                   : in  std_logic                     := 'X';             -- clk
			reset                 : in  std_logic                     := 'X';             -- reset
			sink0_valid           : in  std_logic                     := 'X';             -- valid
			sink0_data            : in  std_logic_vector(83 downto 0) := (others => 'X'); -- data
			sink0_channel         : in  std_logic_vector(26 downto 0) := (others => 'X'); -- channel
			sink0_startofpacket   : in  std_logic                     := 'X';             -- startofpacket
			sink0_endofpacket     : in  std_logic                     := 'X';             -- endofpacket
			sink0_ready           : out std_logic;                                        -- ready
			source0_valid         : out std_logic;                                        -- valid
			source0_data          : out std_logic_vector(83 downto 0);                    -- data
			source0_channel       : out std_logic_vector(26 downto 0);                    -- channel
			source0_startofpacket : out std_logic;                                        -- startofpacket
			source0_endofpacket   : out std_logic;                                        -- endofpacket
			source0_ready         : in  std_logic                     := 'X'              -- ready
		);
	end component altera_merlin_burst_adapter;

begin

	pkt_trans_compressed_read_check : if PKT_TRANS_COMPRESSED_READ /= 43 generate
		assert false report "Supplied generics do not match expected generics" severity Failure;
	end generate;

	burst_adapter : component altera_merlin_burst_adapter
		generic map (
			PKT_ADDR_H                => PKT_ADDR_H,
			PKT_ADDR_L                => PKT_ADDR_L,
			PKT_BEGIN_BURST           => PKT_BEGIN_BURST,
			PKT_BYTE_CNT_H            => PKT_BYTE_CNT_H,
			PKT_BYTE_CNT_L            => PKT_BYTE_CNT_L,
			PKT_BYTEEN_H              => PKT_BYTEEN_H,
			PKT_BYTEEN_L              => PKT_BYTEEN_L,
			PKT_BURST_SIZE_H          => PKT_BURST_SIZE_H,
			PKT_BURST_SIZE_L          => PKT_BURST_SIZE_L,
			PKT_BURST_TYPE_H          => PKT_BURST_TYPE_H,
			PKT_BURST_TYPE_L          => PKT_BURST_TYPE_L,
			PKT_BURSTWRAP_H           => PKT_BURSTWRAP_H,
			PKT_BURSTWRAP_L           => PKT_BURSTWRAP_L,
			PKT_TRANS_COMPRESSED_READ => 43,
			PKT_TRANS_WRITE           => PKT_TRANS_WRITE,
			PKT_TRANS_READ            => PKT_TRANS_READ,
			OUT_NARROW_SIZE           => OUT_NARROW_SIZE,
			IN_NARROW_SIZE            => IN_NARROW_SIZE,
			OUT_FIXED                 => OUT_FIXED,
			OUT_COMPLETE_WRAP         => OUT_COMPLETE_WRAP,
			ST_DATA_W                 => ST_DATA_W,
			ST_CHANNEL_W              => ST_CHANNEL_W,
			OUT_BYTE_CNT_H            => OUT_BYTE_CNT_H,
			OUT_BURSTWRAP_H           => OUT_BURSTWRAP_H,
			COMPRESSED_READ_SUPPORT   => COMPRESSED_READ_SUPPORT,
			BYTEENABLE_SYNTHESIS      => BYTEENABLE_SYNTHESIS,
			PIPE_INPUTS               => PIPE_INPUTS,
			NO_WRAP_SUPPORT           => NO_WRAP_SUPPORT,
			BURSTWRAP_CONST_MASK      => BURSTWRAP_CONST_MASK,
			BURSTWRAP_CONST_VALUE     => BURSTWRAP_CONST_VALUE
		)
		port map (
			clk                   => clk,                   --       cr0.clk
			reset                 => reset,                 -- cr0_reset.reset
			sink0_valid           => sink0_valid,           --     sink0.valid
			sink0_data            => sink0_data,            --          .data
			sink0_channel         => sink0_channel,         --          .channel
			sink0_startofpacket   => sink0_startofpacket,   --          .startofpacket
			sink0_endofpacket     => sink0_endofpacket,     --          .endofpacket
			sink0_ready           => sink0_ready,           --          .ready
			source0_valid         => source0_valid,         --   source0.valid
			source0_data          => source0_data,          --          .data
			source0_channel       => source0_channel,       --          .channel
			source0_startofpacket => source0_startofpacket, --          .startofpacket
			source0_endofpacket   => source0_endofpacket,   --          .endofpacket
			source0_ready         => source0_ready          --          .ready
		);

end architecture rtl; -- of system_0_burst_adapter
