OPENQASM 2.0;
include "qelib1.inc";
gate mcphase(param0) q0,q1 { cp(pi/4) q0,q1; }
gate mcphase(param0) q0,q1 { cp(pi/8) q0,q1; }
gate cU_1 q0,q1 { mcphase(pi/8) q0,q1; }
gate cU_2 q0,q1 { mcphase(pi/4) q0,q1; }
qreg q0[3];
creg c0[2];
x q0[2];
h q0[0];
h q0[1];
cU_1 q0[0],q0[2];
cU_2 q0[1],q0[2];
barrier q0[0],q0[1],q0[2];
swap q0[0],q0[1];
h q0[0];
cp(-pi/2) q0[0],q0[1];
h q0[1];
measure q0[0] -> c0[0];
measure q0[1] -> c0[1];
