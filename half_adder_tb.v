`timescale 1ns / 1ps
module half_adder_tb;
	reg a;
	reg b;
	wire sum;
	wire carry;
	half_adder uut (.a(a),.b(b),.sum(sum),.carry(carry));
	initial begin
		a = 0;
		b = 0;
		$display("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
		#10;
		a = 0;
		b = 1;
		$display("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
		#10;
		a = 1;
		b = 0;
		$display("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
		#10;
		a = 1;
		b = 1;
		$display("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
		#10;
		$finish;
	end
endmodule 