OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q1; x q2; h q3; mcx q0,q1,q2,q3; h q3; x q1; x q2; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q115[4];
creg c21[4];
h q115[0];
h q115[1];
h q115[2];
h q115[3];
oracle q115[0],q115[1],q115[2],q115[3];
diffuser q115[0],q115[1],q115[2],q115[3];
oracle q115[0],q115[1],q115[2],q115[3];
diffuser q115[0],q115[1],q115[2],q115[3];
oracle q115[0],q115[1],q115[2],q115[3];
diffuser q115[0],q115[1],q115[2],q115[3];
measure q115[0] -> c21[0];
measure q115[1] -> c21[1];
measure q115[2] -> c21[2];
measure q115[3] -> c21[3];
