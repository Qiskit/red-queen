OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q1; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q1; x q3; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q87[4];
creg c17[4];
h q87[0];
h q87[1];
h q87[2];
h q87[3];
oracle q87[0],q87[1],q87[2],q87[3];
diffuser q87[0],q87[1],q87[2],q87[3];
oracle q87[0],q87[1],q87[2],q87[3];
diffuser q87[0],q87[1],q87[2],q87[3];
oracle q87[0],q87[1],q87[2],q87[3];
diffuser q87[0],q87[1],q87[2],q87[3];
measure q87[0] -> c17[0];
measure q87[1] -> c17[1];
measure q87[2] -> c17[2];
measure q87[3] -> c17[3];
