VV ?= vivado
VV_FLAGS := -quiet -nojournal -notrace -mode batch

bit:
	$(VV) $(VV_FLAGS) -source mk_bit.tcl

clean:
	${RM} -r .Xil/
	${RM} *.txt *.bit *.dcp
