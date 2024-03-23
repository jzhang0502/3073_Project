	component VGA_Nios is
		port (
			clk_clk             : in    std_logic                     := 'X';             -- clk
			sdram_addr          : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_ba            : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_cas_n         : out   std_logic;                                        -- cas_n
			sdram_cke           : out   std_logic;                                        -- cke
			sdram_cs_n          : out   std_logic;                                        -- cs_n
			sdram_dq            : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_dqm           : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_ras_n         : out   std_logic;                                        -- ras_n
			sdram_we_n          : out   std_logic;                                        -- we_n
			ledr10_out_export   : out   std_logic_vector(9 downto 0);                     -- export
			sw10_in_export      : in    std_logic_vector(9 downto 0)  := (others => 'X'); -- export
			key2_in_export      : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			pxl_data_out_export : out   std_logic_vector(3 downto 0);                     -- export
			pxl_addr_out_export : out   std_logic_vector(13 downto 0)                     -- export
		);
	end component VGA_Nios;

	u0 : component VGA_Nios
		port map (
			clk_clk             => CONNECTED_TO_clk_clk,             --          clk.clk
			sdram_addr          => CONNECTED_TO_sdram_addr,          --        sdram.addr
			sdram_ba            => CONNECTED_TO_sdram_ba,            --             .ba
			sdram_cas_n         => CONNECTED_TO_sdram_cas_n,         --             .cas_n
			sdram_cke           => CONNECTED_TO_sdram_cke,           --             .cke
			sdram_cs_n          => CONNECTED_TO_sdram_cs_n,          --             .cs_n
			sdram_dq            => CONNECTED_TO_sdram_dq,            --             .dq
			sdram_dqm           => CONNECTED_TO_sdram_dqm,           --             .dqm
			sdram_ras_n         => CONNECTED_TO_sdram_ras_n,         --             .ras_n
			sdram_we_n          => CONNECTED_TO_sdram_we_n,          --             .we_n
			ledr10_out_export   => CONNECTED_TO_ledr10_out_export,   --   ledr10_out.export
			sw10_in_export      => CONNECTED_TO_sw10_in_export,      --      sw10_in.export
			key2_in_export      => CONNECTED_TO_key2_in_export,      --      key2_in.export
			pxl_data_out_export => CONNECTED_TO_pxl_data_out_export, -- pxl_data_out.export
			pxl_addr_out_export => CONNECTED_TO_pxl_addr_out_export  -- pxl_addr_out.export
		);

