OPENQASM 2.0;
include "qelib1.inc";
qreg q21[4];
creg c21[4];
h q21[0];
h q21[1];
h q21[2];
h q21[3];
barrier q21[0],q21[1],q21[2],q21[3];
rz(11*pi) q21[0];
rz(11*pi/2) q21[1];
rz(11*pi/4) q21[2];
rz(11*pi/8) q21[3];
barrier q21[0],q21[1],q21[2],q21[3];
h q21[0];
crz(-pi/2) q21[0],q21[1];
crz(-pi/4) q21[1],q21[2];
crz(-pi/8) q21[2],q21[3];
h q21[1];
crz(-pi/2) q21[1],q21[2];
crz(-pi/4) q21[2],q21[3];
h q21[2];
crz(-pi/2) q21[2],q21[3];
h q21[3];
barrier q21[0],q21[1],q21[2],q21[3];
measure q21[0] -> c21[0];
measure q21[1] -> c21[1];
measure q21[2] -> c21[2];
measure q21[3] -> c21[3];
