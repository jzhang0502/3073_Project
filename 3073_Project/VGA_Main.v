module VGA_Main(
	input CLOCK_50,
	input [9:0] SW
);
	
	wire clk_25;


	vga_controller ctrl(
		.VGA_DATA(),
		VGA_CLK(),
		VGA_ADDR(),
		VGA_R(),
		VGA_G(),
		VGA_B(),
		VGA_HS(),
		VGA_VS()
	);

	VGA_Clock clk(
		.inclk0(CLOCK_50),
		.c0(clk_25)
	);

	Pixel_Buffer ram(
		.clock(clk_25),
		.data(),
		.rdaddress(),
		.wraddress(),
		.wren(),
		.q()
	);


endmodule 