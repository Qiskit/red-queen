OPENQASM 2.0;
include "qelib1.inc";
qreg q36[5];
creg c36[5];
x q36[4];
x q36[1];
x q36[0];
barrier q36[0],q36[1],q36[2],q36[3],q36[4];
h q36[4];
crz(pi/2) q36[3],q36[4];
h q36[3];
crz(pi/4) q36[3],q36[4];
crz(pi/2) q36[2],q36[3];
h q36[2];
crz(pi/8) q36[3],q36[4];
crz(pi/4) q36[2],q36[3];
crz(pi/2) q36[1],q36[2];
h q36[1];
crz(pi/16) q36[3],q36[4];
crz(pi/8) q36[2],q36[3];
crz(pi/4) q36[1],q36[2];
crz(pi/2) q36[0],q36[1];
h q36[0];
barrier q36[0],q36[1],q36[2],q36[3],q36[4];
rz(pi) q36[0];
rz(pi/2) q36[1];
rz(pi/4) q36[2];
rz(pi/8) q36[3];
rz(pi/16) q36[4];
barrier q36[0],q36[1],q36[2],q36[3],q36[4];
h q36[0];
crz(-pi/2) q36[0],q36[1];
crz(-pi/4) q36[1],q36[2];
crz(-pi/8) q36[2],q36[3];
crz(-pi/16) q36[3],q36[4];
h q36[1];
crz(-pi/2) q36[1],q36[2];
crz(-pi/4) q36[2],q36[3];
crz(-pi/8) q36[3],q36[4];
h q36[2];
crz(-pi/2) q36[2],q36[3];
crz(-pi/4) q36[3],q36[4];
h q36[3];
crz(-pi/2) q36[3],q36[4];
h q36[4];
barrier q36[0],q36[1],q36[2],q36[3],q36[4];
measure q36[0] -> c36[0];
measure q36[1] -> c36[1];
measure q36[2] -> c36[2];
measure q36[3] -> c36[3];
measure q36[4] -> c36[4];
