module fsm(
	input wire clk,
	input wire reset,
	input wire start,
	input wire [1:0]opcode,
	input wire count_ed_0,
	input wire shift_reg_out,
 	output reg alu_inp_sel_1,
	output reg [1:0]alu_inp_sel_2,
	output reg alu_out_sel,
	output reg [1:0]shift_inp_sel,
 	output reg load_shift_reg,
	output reg shift,
	output reg clear,
	output reg ready
	);
	parameter 	[2:0]IDLE 		= 0,
	 	      	ADDITION 		= 1,
			SUBTRACTION		=2,
			SUBTRACTION_1S_COM 	=3,
			SUBTRACTION_2S_COM 	=4,
			SUBTRACTION_ADD  	=5,
			MULTIPLICATION 		= 6,
			MULTIPLICATION_SHIFT_E	=7,
			MULTIPLICATION_SHIFT_D  =8,
			MULTIPLICATION_SHIFT_add =9,
			RESULT			=10;
	reg     		[2:0]pstate, nstate;


	always@(*) begin:NSOL
		begin:NSL
				case(pstate)
				IDLE 			: begin
								if(start) begin
									case(opcode)
									2'b00: nstate = ADDITION ;
									2'b01: nstate =  SUBTRACTION;
									2'b10: nstate =  MULTIPLICATION;
									2'b11: nstate =  IDLE;
									default: nstate =  'bx;
									endcase
									end
								else 	nstate=IDLE;
							 end
	 	      		ADDITION 		: nstate =  RESULT;	
				SUBTRACTION		: nstate =  SUBTRACTION_1S_COM;
				SUBTRACTION_1S_COM	: nstate =  SUBTRACTION_2S_COM;
				SUBTRACTION_2S_COM 	: nstate =  SUBTRACTION_ADD; 
				SUBTRACTION_ADD  	: nstate =  RESULT;
				MULTIPLICATION 		: nstate =  shift_reg_out ? MULTIPLICATION_SHIFT_add : MULTIPLICATION_SHIFT_E; 
				MULTIPLICATION_SHIFT_E	: nstate =  MULTIPLICATION_SHIFT_D; 
				MULTIPLICATION_SHIFT_D  : nstate =  RESULT;
				RESULT			: nstate = IDLE;
				default			: nstate = 'bx;	
				endcase
			end
			begin:OL
				case(pstate)
				IDLE			: clear = 1;
				ADDITION 		: begin alu_inp_sel_1=0;	alu_inp_sel_2=0;  alu_out_sel=1; load_shift_reg=1; end
				SUBTRACTION		: begin alu_inp_sel_2=0; alu_out_sel=0; load_shift_reg=1; shift_inp_sel=0;end
				SUBTRACTION_1S_COM	: begin  alu_inp_sel_1=1; alu_inp_sel_2=1; alu_out_sel=1; load_shift_reg=1; shift_inp_sel=0; end
				SUBTRACTION_2S_COM 	: begin alu_inp_sel_1=1; alu_inp_sel_2=1; alu_out_sel=1; load_shift_reg=1; shift_inp_sel=0; end
				SUBTRACTION_ADD  	: begin alu_inp_sel_1=0; alu_inp_sel_2=1; alu_out_sel=1; load_shift_reg=1; shift_inp_sel=0; end
				MULTIPLICATION 		: begin load_shift_reg=1; shift_inp_sel=2; end
				MULTIPLICATION_SHIFT_E	: begin load_shift_reg=0; shift=1; end
				MULTIPLICATION_SHIFT_D  : shift = 0;
				RESULT			: ready =1;
				default			: begin alu_inp_sel_1= 'bx; alu_inp_sel_2= 'bx; alu_out_sel= 'bx; load_shift_reg= 'bx; shift_inp_sel= 'bx;	end
				endcase
			end
		end	
		
	always@(posedge clk or negedge reset) begin: psr
			if(!reset)
				pstate<=IDLE;
			else pstate <= nstate;
		end


endmodule
