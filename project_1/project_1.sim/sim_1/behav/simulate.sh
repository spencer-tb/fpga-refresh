#!/bin/sh -f
xv_path="/opt/Xilinx/Vivado/2015.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim Hello_world_tb_behav -key {Behavioral:sim_1:Functional:Hello_world_tb} -tclbatch Hello_world_tb.tcl -log simulate.log
