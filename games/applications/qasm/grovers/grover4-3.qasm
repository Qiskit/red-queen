OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q2; x q3; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q73[4];
creg c15[4];
h q73[0];
h q73[1];
h q73[2];
h q73[3];
oracle q73[0],q73[1],q73[2],q73[3];
diffuser q73[0],q73[1],q73[2],q73[3];
oracle q73[0],q73[1],q73[2],q73[3];
diffuser q73[0],q73[1],q73[2],q73[3];
oracle q73[0],q73[1],q73[2],q73[3];
diffuser q73[0],q73[1],q73[2],q73[3];
measure q73[0] -> c15[0];
measure q73[1] -> c15[1];
measure q73[2] -> c15[2];
measure q73[3] -> c15[3];
