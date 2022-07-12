OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q0; x q2; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q2; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q122[4];
creg c22[4];
h q122[0];
h q122[1];
h q122[2];
h q122[3];
oracle q122[0],q122[1],q122[2],q122[3];
diffuser q122[0],q122[1],q122[2],q122[3];
oracle q122[0],q122[1],q122[2],q122[3];
diffuser q122[0],q122[1],q122[2],q122[3];
oracle q122[0],q122[1],q122[2],q122[3];
diffuser q122[0],q122[1],q122[2],q122[3];
measure q122[0] -> c22[0];
measure q122[1] -> c22[1];
measure q122[2] -> c22[2];
measure q122[3] -> c22[3];
