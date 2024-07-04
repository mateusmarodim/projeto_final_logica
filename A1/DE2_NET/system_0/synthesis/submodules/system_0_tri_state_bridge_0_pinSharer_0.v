// system_0_tri_state_bridge_0_pinSharer_0.v

// This file was auto-generated from altera_tristate_conduit_pin_sharer_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 13.0sp1 232 at 2024.07.03.21:10:29

`timescale 1 ps / 1 ps
module system_0_tri_state_bridge_0_pinSharer_0 (
		input  wire        clk_clk,                       //   clk.clk
		input  wire        reset_reset,                   // reset.reset
		output wire        request,                       //   tcm.request
		input  wire        grant,                         //      .grant
		output wire [21:0] tri_state_bridge_0_address,    //      .tri_state_bridge_0_address_out
		output wire [0:0]  tri_state_bridge_0_readn,      //      .tri_state_bridge_0_readn_out
		output wire [0:0]  write_n_to_the_cfi_flash_0,    //      .write_n_to_the_cfi_flash_0_out
		output wire [7:0]  tri_state_bridge_0_data,       //      .tri_state_bridge_0_data_out
		input  wire [7:0]  tri_state_bridge_0_data_in,    //      .tri_state_bridge_0_data_in
		output wire        tri_state_bridge_0_data_outen, //      .tri_state_bridge_0_data_outen
		output wire [0:0]  select_n_to_the_cfi_flash_0,   //      .select_n_to_the_cfi_flash_0_out
		input  wire        tcs0_request,                  //  tcs0.request
		output wire        tcs0_grant,                    //      .grant
		input  wire [21:0] tcs0_address_out,              //      .address_out
		input  wire [0:0]  tcs0_read_n_out,               //      .read_n_out
		input  wire [0:0]  tcs0_write_n_out,              //      .write_n_out
		input  wire [7:0]  tcs0_data_out,                 //      .data_out
		output wire [7:0]  tcs0_data_in,                  //      .data_in
		input  wire        tcs0_data_outen,               //      .data_outen
		input  wire [0:0]  tcs0_chipselect_n_out          //      .chipselect_n_out
	);

	wire  [0:0] arbiter_grant_data;        // arbiter:next_grant -> pin_sharer:next_grant
	wire        arbiter_grant_ready;       // pin_sharer:ack -> arbiter:ack
	wire        pin_sharer_tcs0_arb_valid; // pin_sharer:arb_cfi_flash_0_tcm -> arbiter:sink0_valid

	system_0_tri_state_bridge_0_pinSharer_0_pin_sharer pin_sharer (
		.clk                           (clk_clk),                       //      clk.clk
		.reset                         (reset_reset),                   //    reset.reset
		.request                       (request),                       //      tcm.request
		.grant                         (grant),                         //         .grant
		.tri_state_bridge_0_address    (tri_state_bridge_0_address),    //         .tri_state_bridge_0_address_out
		.tri_state_bridge_0_readn      (tri_state_bridge_0_readn),      //         .tri_state_bridge_0_readn_out
		.write_n_to_the_cfi_flash_0    (write_n_to_the_cfi_flash_0),    //         .write_n_to_the_cfi_flash_0_out
		.tri_state_bridge_0_data       (tri_state_bridge_0_data),       //         .tri_state_bridge_0_data_out
		.tri_state_bridge_0_data_in    (tri_state_bridge_0_data_in),    //         .tri_state_bridge_0_data_in
		.tri_state_bridge_0_data_outen (tri_state_bridge_0_data_outen), //         .tri_state_bridge_0_data_outen
		.select_n_to_the_cfi_flash_0   (select_n_to_the_cfi_flash_0),   //         .select_n_to_the_cfi_flash_0_out
		.tcs0_request                  (tcs0_request),                  //     tcs0.request
		.tcs0_grant                    (tcs0_grant),                    //         .grant
		.tcs0_tcm_address_out          (tcs0_address_out),              //         .address_out
		.tcs0_tcm_read_n_out           (tcs0_read_n_out),               //         .read_n_out
		.tcs0_tcm_write_n_out          (tcs0_write_n_out),              //         .write_n_out
		.tcs0_tcm_data_out             (tcs0_data_out),                 //         .data_out
		.tcs0_tcm_data_in              (tcs0_data_in),                  //         .data_in
		.tcs0_tcm_data_outen           (tcs0_data_outen),               //         .data_outen
		.tcs0_tcm_chipselect_n_out     (tcs0_chipselect_n_out),         //         .chipselect_n_out
		.ack                           (arbiter_grant_ready),           //    grant.ready
		.next_grant                    (arbiter_grant_data),            //         .data
		.arb_cfi_flash_0_tcm           (pin_sharer_tcs0_arb_valid)      // tcs0_arb.valid
	);

	system_0_tri_state_bridge_0_pinSharer_0_arbiter arbiter (
		.clk         (clk_clk),                   //       clk.clk
		.reset       (reset_reset),               // clk_reset.reset
		.ack         (arbiter_grant_ready),       //     grant.ready
		.next_grant  (arbiter_grant_data),        //          .data
		.sink0_valid (pin_sharer_tcs0_arb_valid)  //     sink0.valid
	);

endmodule
