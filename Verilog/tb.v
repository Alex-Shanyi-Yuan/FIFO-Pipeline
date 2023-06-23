module tb();
    reg okClk;
    always #10 okClk=~okClk;

    reg reset;
    reg [31:0] data_in;
    wire [31:0] data_out;

    reg wr_in_en, rd_mid_en, rd_out_en;
    wire cache_rd_en;
    wire [255:0] cache_data;

    wire [6:0] pipe_in_rd_count, pipe_out_wr_count;
    wire [9:0] pipe_in_wr_count, pipe_out_rd_count;

    wire [20:1] MSTREAM;

    wire write_enable;
    wire [63:0] patt_out;

    reg pipe_in_ready, pipe_out_ready;

    initial begin
        okClk = 1;
        reset = 1;

        #100
        reset = 0; // need to give 340ns after reset
        
        #500
        
        #20
        data_in = 32'h000fffff;
        wr_in_en = 1;

        #20
        data_in = 32'h000eeeee;
        
        #20
        data_in = 32'h000ddddd;
        rd_mid_en = 1;

        #20
        data_in = 32'h000ccccc;
        
        #20
        data_in = 32'h000bbbbb;

        #20
        data_in = 32'h000aaaaa;
        
        #20
        data_in = 32'h00099999;

        #20
        data_in = 32'h00088888;
        
        #20
        data_in = 32'h00077777;

        #20
        data_in = 32'h00066666;
        
        #20
        data_in = 32'h00055555;

        #20
        data_in = 32'h00044444;
        
        #20
        data_in = 32'h00033333;

        #20
        data_in = 32'h00022222;
        
        #20
        data_in = 32'h00011111;

        #20
        data_in = 32'h00000000;
        
        #20
        data_in = 32'h00011111;
        
        #20
        data_in = 32'h00022222;
        
        #20
        data_in = 32'h00033333;
        
        #20
        data_in = 32'h00044444;
        
        #20
        data_in = 32'h00055555;
        
        #20
        data_in = 32'h00066666;
        
        #20
        data_in = 32'h00077777;
        
        #20
        data_in = 32'h00088888;
        
        #20
        data_in = 32'h00099999;
        
        #20
        data_in = 32'h000aaaaa;
        
        #20
        data_in = 32'h000bbbbb;
        
        #20
        data_in = 32'h000ccccc;
        
        #20
        data_in = 32'h000ddddd;
        
        #20
        data_in = 32'h000eeeee;
        
        #20
        data_in = 32'h000fffff;
        
        #20
        data_in = 32'h000eeeee;
                
        #20
        wr_in_en = 0;
        
        #300
        rd_out_en = 1;
        
        #10000
        $finish;
    end

    fifo_w32_1024_r256_128 okPipeIn_fifo (
	.rst(reset),
	.wr_clk(okClk),
	.rd_clk(okClk),
	.din(data_in), // Bus [31 : 0]
	.wr_en(wr_in_en),
	.rd_en(cache_rd_en),
	.dout(cache_data), // Bus [256 : 0]
	.full(pipe_in_full),
	.empty(cache_empty),
	.valid(cache_valid),
	.rd_data_count(pipe_in_rd_count), // Bus [6 : 0]
	.wr_data_count(pipe_in_wr_count)); // Bus [9 : 0]

    patternToSensors_v0 u_patternToSensors(				
    .clk(okClk), 	//clk for reading mstream
    .stream_clk(okClk),  //clk for writing pattern
    .reset(reset),		
            
    .Num_Pat(2), // just put 2 if no clue
    .MSTREAMOUT(MSTREAM[20:1]),	// unused in our case
    .stream_en_i(rd_mid_en),
    .stream_en_o(EN_STREAM),
                
    //flags for the fifo containing input MSTREAM32 data
    .MSTREAM32(cache_data),
    .empty(cache_empty),
    .valid(cache_valid),
    .rd_en(cache_rd_en),

    .DO(patt_out),
    .valid_fifo(write_enable));

    fifo_w64_128_r32_256 okPipeOut_fifo (
	.rst(reset),
	.wr_clk(okClk),
	.rd_clk(okClk),
	.din(patt_out), // Bus [64 : 0]
	.wr_en(write_enable),
	.rd_en(rd_out_en),
	.dout(data_out), // Bus [31 : 0]
	.full(pipe_out_full),
	.empty(pipe_out_empty),
	.valid(valid_out),   // can connect this to ready signal of pipeout
	.rd_data_count(pipe_out_rd_count), // Bus [9 : 0]
	.wr_data_count(pipe_out_wr_count)); // Bus [6 : 0]

    //Block Throttle
    always @(posedge okClk) begin
        // Check for enough space in input FIFO to pipe in another block
        if(pipe_in_wr_count <= (1024-128) ) begin
            pipe_in_ready <= 1'b1;
        end
        else begin
            pipe_in_ready <= 1'b0;
        end

        // Check for enough space in output FIFO to pipe out another block
        if(pipe_out_rd_count >= 128) begin
            pipe_out_ready <= 1'b1;
        end
        else begin
            pipe_out_ready <= 1'b0;
        end
    end

endmodule