OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q1; h q3; mcx q0,q1,q2,q3; h q3; x q1; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q143[4];
creg c25[4];
h q143[0];
h q143[1];
h q143[2];
h q143[3];
oracle q143[0],q143[1],q143[2],q143[3];
diffuser q143[0],q143[1],q143[2],q143[3];
oracle q143[0],q143[1],q143[2],q143[3];
diffuser q143[0],q143[1],q143[2],q143[3];
oracle q143[0],q143[1],q143[2],q143[3];
diffuser q143[0],q143[1],q143[2],q143[3];
measure q143[0] -> c25[0];
measure q143[1] -> c25[1];
measure q143[2] -> c25[2];
measure q143[3] -> c25[3];
