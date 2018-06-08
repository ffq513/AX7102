-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
-- Date        : Thu Dec 22 21:02:20 2016
-- Host        : LUO running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/AX7100/t1/gtp_video_example/gtp_example.srcs/sources_1/ip/fifo_2048_32i_8o/fifo_2048_32i_8o_stub.vhdl
-- Design      : fifo_2048_32i_8o
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fifo_2048_32i_8o is
  Port ( 
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );

end fifo_2048_32i_8o;

architecture stub of fifo_2048_32i_8o is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,wr_clk,rd_clk,din[31:0],wr_en,rd_en,dout[7:0],full,almost_full,empty,almost_empty,rd_data_count[12:0],wr_data_count[10:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v13_0_1,Vivado 2015.4";
begin
end;
