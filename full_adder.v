module full_adder(a,b,cin,sum,carry);
	input a,b,cin;
	output  sum,carry;
	 //always@(*)begin
	  //sum = a^b^cin;
	  //carry = a&b | b&cin | a&cin;
	 //assign sum = a^b^cin;
	 //assign carry = a&b | b&cin | a&cin;
	 xor g1 (sum,a,b,cin);
	 and g2 (n1,a,b);
	 and g3 (n2,b,cin);
	 and g4 (n3,a,cin);
	 or g5 (carry,n1,n2,n3);
	// end
endmodule

module tb;
	reg a,b,cin;
	wire sum,carry;
	integer i;
	full_adder dut(a,b,cin,sum,carry);

	initial begin
	//repeat(10)begin
	for(i=0; i<8;i=i+1)begin
	{a,b,cin} = i;
	#2;
	$display( "A:-%d B:-%d cin:-%d || sum:-%d carry:-%d",a,b,cin,sum,carry);
	end
	end
endmodule	
// =================================================================================================
//#output;-
//A:-0 B:-0 cin:-0 || sum:-0 carry:-0
// A:-0 B:-0 cin:-1 || sum:-1 carry:-0
//A:-0 B:-1 cin:-0 || sum:-1 carry:-0
//A:-0 B:-1 cin:-1 || sum:-0 carry:-1
//A:-1 B:-0 cin:-0 || sum:-1 carry:-0
// A:-1 B:-0 cin:-1 || sum:-0 carry:-1
//A:-1 B:-1 cin:-0 || sum:-0 carry:-1
// A:-1 B:-1 cin:-1 || sum:-1 carry:-1


