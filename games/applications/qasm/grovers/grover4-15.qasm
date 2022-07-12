OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { h q3; mcx q0,q1,q2,q3; h q3; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q157[4];
creg c27[4];
h q157[0];
h q157[1];
h q157[2];
h q157[3];
oracle q157[0],q157[1],q157[2],q157[3];
diffuser q157[0],q157[1],q157[2],q157[3];
oracle q157[0],q157[1],q157[2],q157[3];
diffuser q157[0],q157[1],q157[2],q157[3];
oracle q157[0],q157[1],q157[2],q157[3];
diffuser q157[0],q157[1],q157[2],q157[3];
measure q157[0] -> c27[0];
measure q157[1] -> c27[1];
measure q157[2] -> c27[2];
measure q157[3] -> c27[3];
