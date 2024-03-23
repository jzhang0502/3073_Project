
module VGA_Nios (
	clk_clk,
	sdram_addr,
	sdram_ba,
	sdram_cas_n,
	sdram_cke,
	sdram_cs_n,
	sdram_dq,
	sdram_dqm,
	sdram_ras_n,
	sdram_we_n,
	ledr10_out_export,
	sw10_in_export,
	key2_in_export,
	pxl_data_out_export,
	pxl_addr_out_export);	

	input		clk_clk;
	output	[12:0]	sdram_addr;
	output	[1:0]	sdram_ba;
	output		sdram_cas_n;
	output		sdram_cke;
	output		sdram_cs_n;
	inout	[15:0]	sdram_dq;
	output	[1:0]	sdram_dqm;
	output		sdram_ras_n;
	output		sdram_we_n;
	output	[9:0]	ledr10_out_export;
	input	[9:0]	sw10_in_export;
	input	[1:0]	key2_in_export;
	output	[3:0]	pxl_data_out_export;
	output	[13:0]	pxl_addr_out_export;
endmodule
