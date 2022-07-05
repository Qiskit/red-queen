OPENQASM 2.0;
include "qelib1.inc";
qreg q7[3];
creg c7[3];
h q7[0];
h q7[1];
h q7[2];
barrier q7[0],q7[1],q7[2];
rz(4*pi) q7[0];
rz(2*pi) q7[1];
rz(pi) q7[2];
barrier q7[0],q7[1],q7[2];
h q7[0];
crz(-pi/2) q7[0],q7[1];
crz(-pi/4) q7[1],q7[2];
h q7[1];
crz(-pi/2) q7[1],q7[2];
h q7[2];
barrier q7[0],q7[1],q7[2];
measure q7[0] -> c7[0];
measure q7[1] -> c7[1];
measure q7[2] -> c7[2];
