
    wire dl_reset;
    wire dl_clock;
    assign dl_reset = ap_rst_n;
    assign dl_clock = ap_clk;
    wire [1:0] proc_0_data_FIFO_blk;
    wire [1:0] proc_0_data_PIPO_blk;
    wire [1:0] proc_0_start_FIFO_blk;
    wire [1:0] proc_0_TLF_FIFO_blk;
    wire [1:0] proc_0_input_sync_blk;
    wire [1:0] proc_0_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_0;
    reg [1:0] proc_dep_vld_vec_0_reg;
    wire [1:0] in_chan_dep_vld_vec_0;
    wire [7:0] in_chan_dep_data_vec_0;
    wire [1:0] token_in_vec_0;
    wire [1:0] out_chan_dep_vld_vec_0;
    wire [3:0] out_chan_dep_data_0;
    wire [1:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [3:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_2_0;
    wire [3:0] dep_chan_data_2_0;
    wire token_2_0;
    wire [1:0] proc_1_data_FIFO_blk;
    wire [1:0] proc_1_data_PIPO_blk;
    wire [1:0] proc_1_start_FIFO_blk;
    wire [1:0] proc_1_TLF_FIFO_blk;
    wire [1:0] proc_1_input_sync_blk;
    wire [1:0] proc_1_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_1;
    reg [1:0] proc_dep_vld_vec_1_reg;
    wire [1:0] in_chan_dep_vld_vec_1;
    wire [7:0] in_chan_dep_data_vec_1;
    wire [1:0] token_in_vec_1;
    wire [1:0] out_chan_dep_vld_vec_1;
    wire [3:0] out_chan_dep_data_1;
    wire [1:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [3:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_2_1;
    wire [3:0] dep_chan_data_2_1;
    wire token_2_1;
    wire [2:0] proc_2_data_FIFO_blk;
    wire [2:0] proc_2_data_PIPO_blk;
    wire [2:0] proc_2_start_FIFO_blk;
    wire [2:0] proc_2_TLF_FIFO_blk;
    wire [2:0] proc_2_input_sync_blk;
    wire [2:0] proc_2_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_2;
    reg [2:0] proc_dep_vld_vec_2_reg;
    wire [2:0] in_chan_dep_vld_vec_2;
    wire [11:0] in_chan_dep_data_vec_2;
    wire [2:0] token_in_vec_2;
    wire [2:0] out_chan_dep_vld_vec_2;
    wire [3:0] out_chan_dep_data_2;
    wire [2:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_0_2;
    wire [3:0] dep_chan_data_0_2;
    wire token_0_2;
    wire dep_chan_vld_1_2;
    wire [3:0] dep_chan_data_1_2;
    wire token_1_2;
    wire dep_chan_vld_3_2;
    wire [3:0] dep_chan_data_3_2;
    wire token_3_2;
    wire [0:0] proc_3_data_FIFO_blk;
    wire [0:0] proc_3_data_PIPO_blk;
    wire [0:0] proc_3_start_FIFO_blk;
    wire [0:0] proc_3_TLF_FIFO_blk;
    wire [0:0] proc_3_input_sync_blk;
    wire [0:0] proc_3_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_3;
    reg [0:0] proc_dep_vld_vec_3_reg;
    wire [0:0] in_chan_dep_vld_vec_3;
    wire [3:0] in_chan_dep_data_vec_3;
    wire [0:0] token_in_vec_3;
    wire [0:0] out_chan_dep_vld_vec_3;
    wire [3:0] out_chan_dep_data_3;
    wire [0:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_2_3;
    wire [3:0] dep_chan_data_2_3;
    wire token_2_3;
    wire [3:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [3:0] origin;

    reg ap_done_reg_0;// for module dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_continue;
        end
    end

    reg ap_done_reg_1;// for module dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_done & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_continue;
        end
    end

    reg ap_done_reg_2;// for module dataflow_in_loop_VITIS_LOOP_245_1_1_U0.post_process_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= dataflow_in_loop_VITIS_LOOP_245_1_1_U0.post_process_U0.ap_done & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.post_process_U0.ap_continue;
        end
    end

    // Process: dataflow_in_loop_VITIS_LOOP_245_1_1_U0.dataflow_in_loop_VITIS_LOOP_245_1_1_Block_newFuncRoot_proc_U0
    reconstruct_hls_deadlock_detect_unit #(4, 0, 2, 2) reconstruct_hls_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0;
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0;
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0 | (dataflow_in_loop_VITIS_LOOP_245_1_1_U0.ap_sync_dataflow_in_loop_VITIS_LOOP_245_1_1_Block_newFuncRoot_proc_U0_ap_ready & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.dataflow_in_loop_VITIS_LOOP_245_1_1_Block_newFuncRoot_proc_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.ap_sync_getLocalImages_single_U0_ap_ready);
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0;
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0;
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0 | (dataflow_in_loop_VITIS_LOOP_245_1_1_U0.ap_sync_dataflow_in_loop_VITIS_LOOP_245_1_1_Block_newFuncRoot_proc_U0_ap_ready & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.dataflow_in_loop_VITIS_LOOP_245_1_1_Block_newFuncRoot_proc_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.ap_sync_Image_extract_next_U0_ap_ready);
    assign proc_0_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[3 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_2_0;
    assign in_chan_dep_data_vec_0[7 : 4] = dep_chan_data_2_0;
    assign token_in_vec_0[1] = token_2_0;
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[0];
    assign dep_chan_vld_0_2 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_2 = out_chan_dep_data_0;
    assign token_0_2 = token_out_vec_0[1];

    // Process: dataflow_in_loop_VITIS_LOOP_245_1_1_U0.getLocalImages_single_U0
    reconstruct_hls_deadlock_detect_unit #(4, 1, 2, 2) reconstruct_hls_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.getLocalImages_single_U0.localImages_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0;
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0 | (dataflow_in_loop_VITIS_LOOP_245_1_1_U0.ap_sync_getLocalImages_single_U0_ap_ready & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.getLocalImages_single_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.ap_sync_Image_extract_next_U0_ap_ready);
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0;
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0;
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0 | (dataflow_in_loop_VITIS_LOOP_245_1_1_U0.ap_sync_getLocalImages_single_U0_ap_ready & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.getLocalImages_single_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.ap_sync_dataflow_in_loop_VITIS_LOOP_245_1_1_Block_newFuncRoot_proc_U0_ap_ready);
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[3 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_2_1;
    assign in_chan_dep_data_vec_1[7 : 4] = dep_chan_data_2_1;
    assign token_in_vec_1[1] = token_2_1;
    assign dep_chan_vld_1_2 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_2 = out_chan_dep_data_1;
    assign token_1_2 = token_out_vec_1[0];
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[1];

    // Process: dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0
    reconstruct_hls_deadlock_detect_unit #(4, 2, 3, 3) reconstruct_hls_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.localImages_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0 | (dataflow_in_loop_VITIS_LOOP_245_1_1_U0.ap_sync_Image_extract_next_U0_ap_ready & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.ap_sync_getLocalImages_single_U0_ap_ready);
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0;
    assign proc_2_data_PIPO_blk[1] = 1'b0 | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_16_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_16_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_1_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_1_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_2_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_2_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_3_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_3_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_4_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_4_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_5_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_5_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_6_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_6_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_7_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_7_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_8_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_8_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_9_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_9_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_10_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_10_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_11_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_11_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_12_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_12_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_13_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_13_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_14_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_14_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_15_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_15_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_14_134_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_14_134_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_13_133_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_13_133_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_12_132_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_12_132_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_11_131_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_11_131_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_10_130_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_10_130_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_9_129_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_9_129_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_8_128_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_8_128_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_7_127_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_7_127_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_6_126_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_6_126_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_5_125_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_5_125_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_4_124_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_4_124_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_3_123_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_3_123_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_2_122_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_2_122_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_1_121_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_1_121_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_16_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_16_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_1_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_1_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_2_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_2_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_3_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_3_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_4_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_4_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_5_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_5_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_6_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_6_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_7_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_7_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_8_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_8_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_9_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_9_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_10_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_10_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_11_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_11_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_12_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_12_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_13_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_13_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_14_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_14_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_15_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_15_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_14_120_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_14_120_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_13_119_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_13_119_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_12_118_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_12_118_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_11_117_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_11_117_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_10_116_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_10_116_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_9_115_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_9_115_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_8_114_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_8_114_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_7_113_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_7_113_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_6_112_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_6_112_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_5_111_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_5_111_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_4_110_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_4_110_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_3_109_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_3_109_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_2_108_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_2_108_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_1_107_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_1_107_U.t_read) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_U.i_full_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_done & ap_done_reg_0 & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_U.t_read);
    assign proc_2_start_FIFO_blk[1] = 1'b0;
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0;
    assign proc_2_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    assign proc_2_data_FIFO_blk[2] = 1'b0;
    assign proc_2_data_PIPO_blk[2] = 1'b0;
    assign proc_2_start_FIFO_blk[2] = 1'b0;
    assign proc_2_TLF_FIFO_blk[2] = 1'b0;
    assign proc_2_input_sync_blk[2] = 1'b0 | (dataflow_in_loop_VITIS_LOOP_245_1_1_U0.ap_sync_Image_extract_next_U0_ap_ready & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.Image_extract_next_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.ap_sync_dataflow_in_loop_VITIS_LOOP_245_1_1_Block_newFuncRoot_proc_U0_ap_ready);
    assign proc_2_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_2[2] = dl_detect_out ? proc_dep_vld_vec_2_reg[2] : (proc_2_data_FIFO_blk[2] | proc_2_data_PIPO_blk[2] | proc_2_start_FIFO_blk[2] | proc_2_TLF_FIFO_blk[2] | proc_2_input_sync_blk[2] | proc_2_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_0_2;
    assign in_chan_dep_data_vec_2[3 : 0] = dep_chan_data_0_2;
    assign token_in_vec_2[0] = token_0_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_1_2;
    assign in_chan_dep_data_vec_2[7 : 4] = dep_chan_data_1_2;
    assign token_in_vec_2[1] = token_1_2;
    assign in_chan_dep_vld_vec_2[2] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[11 : 8] = dep_chan_data_3_2;
    assign token_in_vec_2[2] = token_3_2;
    assign dep_chan_vld_2_1 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_1 = out_chan_dep_data_2;
    assign token_2_1 = token_out_vec_2[0];
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[1];
    assign dep_chan_vld_2_0 = out_chan_dep_vld_vec_2[2];
    assign dep_chan_data_2_0 = out_chan_dep_data_2;
    assign token_2_0 = token_out_vec_2[2];

    // Process: dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0
    reconstruct_hls_deadlock_detect_unit #(4, 3, 1, 1) reconstruct_hls_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0;
    assign proc_3_data_PIPO_blk[0] = 1'b0 | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_16_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_16_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_1_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_1_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_2_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_2_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_3_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_3_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_4_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_4_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_5_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_5_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_6_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_6_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_7_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_7_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_8_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_8_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_9_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_9_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_10_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_10_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_11_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_11_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_12_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_12_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_13_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_13_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_14_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_14_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_15_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_15_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_14_120_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_14_120_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_13_119_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_13_119_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_12_118_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_12_118_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_11_117_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_11_117_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_10_116_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_10_116_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_9_115_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_9_115_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_8_114_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_8_114_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_7_113_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_7_113_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_6_112_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_6_112_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_5_111_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_5_111_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_4_110_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_4_110_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_3_109_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_3_109_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_2_108_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_2_108_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_1_107_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_1_107_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_localImage_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_16_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_16_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_1_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_1_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_2_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_2_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_3_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_3_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_4_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_4_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_5_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_5_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_6_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_6_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_7_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_7_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_8_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_8_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_9_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_9_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_10_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_10_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_11_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_11_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_12_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_12_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_13_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_13_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_14_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_14_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_15_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_15_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_14_134_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_14_134_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_13_133_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_13_133_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_12_132_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_12_132_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_11_131_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_11_131_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_10_130_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_10_130_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_9_129_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_9_129_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_8_128_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_8_128_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_7_127_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_7_127_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_6_126_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_6_126_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_5_125_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_5_125_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_4_124_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_4_124_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_3_123_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_3_123_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_2_122_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_2_122_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_1_121_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_1_121_U.i_write) | (~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_U.t_empty_n & dataflow_in_loop_VITIS_LOOP_245_1_1_U0.matrix_sum_prod_U0.ap_idle & ~dataflow_in_loop_VITIS_LOOP_245_1_1_U0.curr_fullImage_U.i_write);
    assign proc_3_start_FIFO_blk[0] = 1'b0;
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[3 : 0] = dep_chan_data_2_3;
    assign token_in_vec_3[0] = token_2_3;
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[0];


`include "reconstruct_hls_deadlock_report_unit.vh"
