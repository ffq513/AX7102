vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/clocking/mig_7series_v2_4_clk_ibuf.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/clocking/mig_7series_v2_4_infrastructure.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/clocking/mig_7series_v2_4_iodelay_ctrl.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/clocking/mig_7series_v2_4_tempmon.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_arb_mux.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_arb_row_col.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_arb_select.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_bank_cntrl.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_bank_common.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_bank_compare.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_bank_mach.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_bank_queue.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_bank_state.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_col_mach.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_mc.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_rank_cntrl.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_rank_common.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_rank_mach.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/controller/mig_7series_v2_4_round_robin_arb.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v2_4_ecc_buf.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v2_4_ecc_dec_fix.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v2_4_ecc_gen.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v2_4_ecc_merge_enc.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ecc/mig_7series_v2_4_fi_xor.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ip_top/mig_7series_v2_4_memc_ui_top_std.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ip_top/mig_7series_v2_4_mem_intfc.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_byte_group_io.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_byte_lane.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_calib_top.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_if_post_fifo.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_mc_phy.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_mc_phy_wrapper.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_of_pre_fifo.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_4lanes.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_dqs_found_cal.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_dqs_found_cal_hr.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_init.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_cntlr.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_data.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_edge.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_lim.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_mux.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_po_cntlr.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_samp.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_oclkdelay_cal.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_prbs_rdlvl.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_rdlvl.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_tempmon.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_top.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_wrcal.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_wrlvl.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_wrlvl_off_delay.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_ddr_prbs_gen.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_poc_cc.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_poc_edge_store.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_poc_meta.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_poc_pd.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_poc_tap_base.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/phy/mig_7series_v2_4_poc_top.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ui/mig_7series_v2_4_ui_cmd.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ui/mig_7series_v2_4_ui_rd_data.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ui/mig_7series_v2_4_ui_top.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ui/mig_7series_v2_4_ui_wr_data.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ddr3_mig_sim.v" \
"../../../../sd_ddr_vga.srcs/sources_1/ip/ddr3/ddr3/user_design/rtl/ddr3.v" \


vlog -work xil_defaultlib "glbl.v"

