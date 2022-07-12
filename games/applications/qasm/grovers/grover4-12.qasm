OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q0; x q1; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q136[4];
creg c24[4];
h q136[0];
h q136[1];
h q136[2];
h q136[3];
oracle q136[0],q136[1],q136[2],q136[3];
diffuser q136[0],q136[1],q136[2],q136[3];
oracle q136[0],q136[1],q136[2],q136[3];
diffuser q136[0],q136[1],q136[2],q136[3];
oracle q136[0],q136[1],q136[2],q136[3];
diffuser q136[0],q136[1],q136[2],q136[3];
measure q136[0] -> c24[0];
measure q136[1] -> c24[1];
measure q136[2] -> c24[2];
measure q136[3] -> c24[3];
