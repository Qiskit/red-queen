OPENQASM 2.0;
include "qelib1.inc";
qreg q13[3];
creg c13[3];
h q13[0];
h q13[1];
h q13[2];
barrier q13[0],q13[1],q13[2];
rz(7*pi) q13[0];
rz(7*pi/2) q13[1];
rz(7*pi/4) q13[2];
barrier q13[0],q13[1],q13[2];
h q13[0];
crz(-pi/2) q13[0],q13[1];
crz(-pi/4) q13[1],q13[2];
h q13[1];
crz(-pi/2) q13[1],q13[2];
h q13[2];
barrier q13[0],q13[1],q13[2];
measure q13[0] -> c13[0];
measure q13[1] -> c13[1];
measure q13[2] -> c13[2];
