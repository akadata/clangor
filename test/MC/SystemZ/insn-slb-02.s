# RUN: not llvm-mc -triple s390x-linux-gnu < %s 2> %t
# RUN: FileCheck < %t %s

#CHECK: error: invalid operand
#CHECK: slb	%r0, -524289
#CHECK: error: invalid operand
#CHECK: slb	%r0, 524288

	slb	%r0, -524289
	slb	%r0, 524288
