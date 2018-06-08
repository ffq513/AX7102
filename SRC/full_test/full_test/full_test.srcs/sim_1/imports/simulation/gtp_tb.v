////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 3.6
//  \   \         Application : 7 Series FPGAs Transceivers Wizard 
//  /   /         Filename : gtp_tb.v
// /___/   /\      
// \   \  /  \ 
//  \___\/\___\ 
//
//
// Module gtp_TB
// Generated by Xilinx 7 Series FPGAs Transceivers Wizard 
// 
// 
// (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 


`timescale 1ns / 1ps

module gtp_TB;

//*************************Parameter Declarations******************************

    parameter   TX_REFCLK_PERIOD   =   6.734;
    parameter   RX_REFCLK_PERIOD   =   6.734;
    parameter   SYSCLK_PERIOD      =   10.0;

    parameter   DCLK_PERIOD        =   10.0;
  
//************************Internal Register Declarations***********************

//************************** Register Declarations ****************************        

reg             tx_refclk_n_r;
reg             rx_refclk_n_r;
reg             drp_clk_r;
reg             sysclk_r;
reg             tx_usrclk_r;
reg             rx_usrclk_r;    
reg             gsr_r;
reg             gts_r;
reg             gttx_reset_i;
reg             gtrx_reset_i;
reg             pll0_reset_i;
reg             pll1_reset_i;
reg             track_data_high_r;
reg             track_data_low_r;
//********************************Wire Declarations**********************************

    //--------------------------------- Global Signals ------------------------------
wire            tx_refclk_p_r;
wire            rx_refclk_p_r; 
    
    //-------------------------- Example Module Connections -------------------------
wire            track_data_i;
wire    [3:0]   rxn_in_i;
wire    [3:0]   rxp_in_i;
wire    [3:0]   txn_out_i;
wire    [3:0]   txp_out_i;

//*********************************Main Body of Code**********************************
    // ------------------------------- Tie offs -------------------------------- 
    assign  tied_to_ground_i   = 1'b0;
    
    // ------------------------- GT Serial Connections ------------------------
    assign   rxn_in_i           = txn_out_i;
    assign   rxp_in_i           = txp_out_i;  
    //------------------------------ Global Signals ----------------------------
    
    //Simulate the global reset that occurs after configuration at the beginning
    //of the simulation. 
    assign glbl.GSR = gsr_r;
    assign glbl.GTS = gts_r;

    initial
        begin
            gts_r = 1'b0;        
            gsr_r = 1'b1;
            #(16*TX_REFCLK_PERIOD);
            gsr_r = 1'b0;
    end


    //---------- Generate Reference Clock input to UPPER GTCLK ----------------
    
    initial begin
        tx_refclk_n_r = 1'b1;
    end

    always  
        #(TX_REFCLK_PERIOD/2) tx_refclk_n_r = !tx_refclk_n_r;

    assign tx_refclk_p_r = !tx_refclk_n_r;

    initial begin
        rx_refclk_n_r = 1'b1;
    end

    always  
        #(RX_REFCLK_PERIOD/2) rx_refclk_n_r = !rx_refclk_n_r;

    assign rx_refclk_p_r = !rx_refclk_n_r;
                 
    //------------------------ Generate DRP Clock ----------------------------
    initial begin
        drp_clk_r = 1'b1;
    end

    always  
        #(DCLK_PERIOD/2) drp_clk_r = !drp_clk_r;
      
    //------------------------ Generate System Clock ----------------------------
    initial begin
        sysclk_r = 1'b1;
    end

    always  
        #(SYSCLK_PERIOD/2) sysclk_r = !sysclk_r;
    
    //--------------------------------- Resets ---------------------------------
    initial
    begin
        $display("Timing checks are not valid");
            gttx_reset_i = 1'b0;
            gtrx_reset_i = 1'b0;
            pll0_reset_i = 1'b0;
            pll1_reset_i = 1'b0;
            #(16*TX_REFCLK_PERIOD);
            gttx_reset_i = 1'b1;
            gtrx_reset_i = 1'b1;
            pll0_reset_i = 1'b1;
            pll1_reset_i = 1'b1;
            #200;
            gttx_reset_i = 1'b0;
            gtrx_reset_i = 1'b0;
            pll0_reset_i = 1'b0;
            pll1_reset_i = 1'b0;
        $display("Timing checks are valid");
    end
    
    //----------------------------- Track Data ---------------------------------
 
    initial
    begin
        track_data_high_r = 1'b0;
        #3500000;
        if (track_data_i == 1) begin
            track_data_high_r = 1'b1;
        end
        #2000;
        if ((track_data_high_r == 1'b1) && (track_data_low_r == 1'b0))
        begin
            $display("------- TEST PASSED -------");
            $display("------- Test Completed Successfully-------");
        end
        else
        begin
            $display("####### ERROR: TEST FAILED ! #######");
        end

        $stop;
    end

    initial
    begin
        track_data_low_r = 1'b0;
        #3500000;
        @(negedge track_data_i) begin
            track_data_low_r = 1'b1;
        end
    end    
 
 

    //----------------- Instantiate an gtp_exdes module  -----------------

    gtp_exdes 
    gtp_exdes_i
    (
         .Q0_CLK0_GTREFCLK_PAD_N_IN           (tx_refclk_n_r), 
         .Q0_CLK0_GTREFCLK_PAD_P_IN           (tx_refclk_p_r),
        .DRP_CLK_IN_P                        (drp_clk_r),
        .DRP_CLK_IN_N                        (~drp_clk_r),
        .GTTX_RESET_IN                       (gttx_reset_i),
        .GTRX_RESET_IN                       (gtrx_reset_i),
        .PLL0_RESET_IN                       (pll0_reset_i),
        .PLL1_RESET_IN                       (pll1_reset_i),
        .TRACK_DATA_OUT                      (track_data_i),
        .RXN_IN                              (rxn_in_i),
        .RXP_IN                              (rxp_in_i),
        .TXN_OUT                             (txn_out_i),
        .TXP_OUT                             (txp_out_i)
    );

endmodule
