OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q52[4];
creg c12[4];
h q52[0];
h q52[1];
h q52[2];
h q52[3];
oracle q52[0],q52[1],q52[2],q52[3];
diffuser q52[0],q52[1],q52[2],q52[3];
oracle q52[0],q52[1],q52[2],q52[3];
diffuser q52[0],q52[1],q52[2],q52[3];
oracle q52[0],q52[1],q52[2],q52[3];
diffuser q52[0],q52[1],q52[2],q52[3];
measure q52[0] -> c12[0];
measure q52[1] -> c12[1];
measure q52[2] -> c12[2];
measure q52[3] -> c12[3];
