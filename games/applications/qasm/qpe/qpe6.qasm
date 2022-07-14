OPENQASM 2.0;
include "qelib1.inc";
gate mcphase(param0) q0,q1 { cp(2*pi) q0,q1; }
gate mcphase(param0) q0,q1 { cp(pi) q0,q1; }
gate mcphase(param0) q0,q1 { cp(pi/2) q0,q1; }
gate mcphase(param0) q0,q1 { cp(pi/4) q0,q1; }
gate mcphase(param0) q0,q1 { cp(pi/8) q0,q1; }
gate cU_1 q0,q1 { mcphase(pi/8) q0,q1; }
gate cU_2 q0,q1 { mcphase(pi/4) q0,q1; }
gate cU_4 q0,q1 { mcphase(pi/2) q0,q1; }
gate cU_8 q0,q1 { mcphase(pi) q0,q1; }
gate cU_16 q0,q1 { mcphase(2*pi) q0,q1; }
qreg q0[6];
creg c0[5];
x q0[5];
h q0[0];
h q0[1];
h q0[2];
h q0[3];
h q0[4];
cU_1 q0[0],q0[5];
cU_2 q0[1],q0[5];
cU_4 q0[2],q0[5];
cU_8 q0[3],q0[5];
cU_16 q0[4],q0[5];
barrier q0[0],q0[1],q0[2],q0[3],q0[4],q0[5];
swap q0[0],q0[4];
swap q0[1],q0[3];
h q0[0];
cp(-pi/2) q0[0],q0[1];
h q0[1];
cp(-pi/4) q0[0],q0[2];
cp(-pi/2) q0[1],q0[2];
h q0[2];
cp(-pi/8) q0[0],q0[3];
cp(-pi/4) q0[1],q0[3];
cp(-pi/2) q0[2],q0[3];
h q0[3];
cp(-pi/16) q0[0],q0[4];
cp(-pi/8) q0[1],q0[4];
cp(-pi/4) q0[2],q0[4];
cp(-pi/2) q0[3],q0[4];
h q0[4];
measure q0[0] -> c0[0];
measure q0[1] -> c0[1];
measure q0[2] -> c0[2];
measure q0[3] -> c0[3];
measure q0[4] -> c0[4];
