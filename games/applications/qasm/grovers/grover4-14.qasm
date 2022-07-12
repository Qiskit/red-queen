OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q0; h q3; mcx q0,q1,q2,q3; h q3; x q0; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q150[4];
creg c26[4];
h q150[0];
h q150[1];
h q150[2];
h q150[3];
oracle q150[0],q150[1],q150[2],q150[3];
diffuser q150[0],q150[1],q150[2],q150[3];
oracle q150[0],q150[1],q150[2],q150[3];
diffuser q150[0],q150[1],q150[2],q150[3];
oracle q150[0],q150[1],q150[2],q150[3];
diffuser q150[0],q150[1],q150[2],q150[3];
measure q150[0] -> c26[0];
measure q150[1] -> c26[1];
measure q150[2] -> c26[2];
measure q150[3] -> c26[3];
