`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2020 20:39:48
// Design Name: 
// Module Name: Hello_world_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Hello_world_tb(

    );
    
    //define i/o
    reg IN;
    wire OUT;
    
    //instantiate unit under test
    Hello_world uut (
        .IN(IN),
        .OUT(OUT)
    );
    
    initial begin
        //wait 100ns for global reset to finish
        #100;
        //init input
        IN = 0;
        //invert input after 500ns
        #500 IN = 1;
    end
    
endmodule
