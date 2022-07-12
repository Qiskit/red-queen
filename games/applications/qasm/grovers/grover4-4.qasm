OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q0; x q1; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q3; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q80[4];
creg c16[4];
h q80[0];
h q80[1];
h q80[2];
h q80[3];
oracle q80[0],q80[1],q80[2],q80[3];
diffuser q80[0],q80[1],q80[2],q80[3];
oracle q80[0],q80[1],q80[2],q80[3];
diffuser q80[0],q80[1],q80[2],q80[3];
oracle q80[0],q80[1],q80[2],q80[3];
diffuser q80[0],q80[1],q80[2],q80[3];
measure q80[0] -> c16[0];
measure q80[1] -> c16[1];
measure q80[2] -> c16[2];
measure q80[3] -> c16[3];
