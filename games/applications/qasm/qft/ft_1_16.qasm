OPENQASM 2.0;
include "qelib1.inc";
qreg q30[5];
creg c30[5];
x q30[4];
barrier q30[0],q30[1],q30[2],q30[3],q30[4];
h q30[4];
crz(pi/2) q30[3],q30[4];
h q30[3];
crz(pi/4) q30[3],q30[4];
crz(pi/2) q30[2],q30[3];
h q30[2];
crz(pi/8) q30[3],q30[4];
crz(pi/4) q30[2],q30[3];
crz(pi/2) q30[1],q30[2];
h q30[1];
crz(pi/16) q30[3],q30[4];
crz(pi/8) q30[2],q30[3];
crz(pi/4) q30[1],q30[2];
crz(pi/2) q30[0],q30[1];
h q30[0];
barrier q30[0],q30[1],q30[2],q30[3],q30[4];
rz(pi) q30[0];
rz(pi/2) q30[1];
rz(pi/4) q30[2];
rz(pi/8) q30[3];
rz(pi/16) q30[4];
barrier q30[0],q30[1],q30[2],q30[3],q30[4];
h q30[0];
crz(-pi/2) q30[0],q30[1];
crz(-pi/4) q30[1],q30[2];
crz(-pi/8) q30[2],q30[3];
crz(-pi/16) q30[3],q30[4];
h q30[1];
crz(-pi/2) q30[1],q30[2];
crz(-pi/4) q30[2],q30[3];
crz(-pi/8) q30[3],q30[4];
h q30[2];
crz(-pi/2) q30[2],q30[3];
crz(-pi/4) q30[3],q30[4];
h q30[3];
crz(-pi/2) q30[3],q30[4];
h q30[4];
barrier q30[0],q30[1],q30[2],q30[3],q30[4];
measure q30[0] -> c30[0];
measure q30[1] -> c30[1];
measure q30[2] -> c30[2];
measure q30[3] -> c30[3];
measure q30[4] -> c30[4];
