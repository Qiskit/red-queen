OPENQASM 2.0;
include "qelib1.inc";
gate mcphase(param0) q0,q1 { cp(pi/2) q0,q1; }
gate mcphase(param0) q0,q1 { cp(pi/4) q0,q1; }
gate mcphase(param0) q0,q1 { cp(pi/8) q0,q1; }
gate cU_1 q0,q1 { mcphase(pi/8) q0,q1; }
gate cU_2 q0,q1 { mcphase(pi/4) q0,q1; }
gate cU_4 q0,q1 { mcphase(pi/2) q0,q1; }
qreg q1[4];
creg c1[3];
x q1[3];
h q1[0];
h q1[1];
h q1[2];
cU_1 q1[0],q1[3];
cU_2 q1[1],q1[3];
cU_4 q1[2],q1[3];
barrier q1[0],q1[1],q1[2],q1[3];
swap q1[0],q1[2];
h q1[0];
cp(-pi/2) q1[0],q1[1];
h q1[1];
cp(-pi/4) q1[0],q1[2];
cp(-pi/2) q1[1],q1[2];
h q1[2];
measure q1[0] -> c1[0];
measure q1[1] -> c1[1];
measure q1[2] -> c1[2];
