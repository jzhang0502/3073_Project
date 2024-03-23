	VGA_Nios u0 (
		.clk_clk             (<connected-to-clk_clk>),             //          clk.clk
		.sdram_addr          (<connected-to-sdram_addr>),          //        sdram.addr
		.sdram_ba            (<connected-to-sdram_ba>),            //             .ba
		.sdram_cas_n         (<connected-to-sdram_cas_n>),         //             .cas_n
		.sdram_cke           (<connected-to-sdram_cke>),           //             .cke
		.sdram_cs_n          (<connected-to-sdram_cs_n>),          //             .cs_n
		.sdram_dq            (<connected-to-sdram_dq>),            //             .dq
		.sdram_dqm           (<connected-to-sdram_dqm>),           //             .dqm
		.sdram_ras_n         (<connected-to-sdram_ras_n>),         //             .ras_n
		.sdram_we_n          (<connected-to-sdram_we_n>),          //             .we_n
		.ledr10_out_export   (<connected-to-ledr10_out_export>),   //   ledr10_out.export
		.sw10_in_export      (<connected-to-sw10_in_export>),      //      sw10_in.export
		.key2_in_export      (<connected-to-key2_in_export>),      //      key2_in.export
		.pxl_data_out_export (<connected-to-pxl_data_out_export>), // pxl_data_out.export
		.pxl_addr_out_export (<connected-to-pxl_addr_out_export>)  // pxl_addr_out.export
	);

