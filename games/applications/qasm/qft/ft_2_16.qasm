OPENQASM 2.0;
include "qelib1.inc";
qreg q31[5];
creg c31[5];
h q31[0];
h q31[1];
h q31[2];
h q31[3];
h q31[4];
barrier q31[0],q31[1],q31[2],q31[3],q31[4];
rz(16*pi) q31[0];
rz(8*pi) q31[1];
rz(4*pi) q31[2];
rz(2*pi) q31[3];
rz(pi) q31[4];
barrier q31[0],q31[1],q31[2],q31[3],q31[4];
h q31[0];
crz(-pi/2) q31[0],q31[1];
crz(-pi/4) q31[1],q31[2];
crz(-pi/8) q31[2],q31[3];
crz(-pi/16) q31[3],q31[4];
h q31[1];
crz(-pi/2) q31[1],q31[2];
crz(-pi/4) q31[2],q31[3];
crz(-pi/8) q31[3],q31[4];
h q31[2];
crz(-pi/2) q31[2],q31[3];
crz(-pi/4) q31[3],q31[4];
h q31[3];
crz(-pi/2) q31[3],q31[4];
h q31[4];
barrier q31[0],q31[1],q31[2],q31[3],q31[4];
measure q31[0] -> c31[0];
measure q31[1] -> c31[1];
measure q31[2] -> c31[2];
measure q31[3] -> c31[3];
measure q31[4] -> c31[4];
