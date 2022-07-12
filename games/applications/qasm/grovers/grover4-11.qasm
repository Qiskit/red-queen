OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q2; h q3; mcx q0,q1,q2,q3; h q3; x q2; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q129[4];
creg c23[4];
h q129[0];
h q129[1];
h q129[2];
h q129[3];
oracle q129[0],q129[1],q129[2],q129[3];
diffuser q129[0],q129[1],q129[2],q129[3];
oracle q129[0],q129[1],q129[2],q129[3];
diffuser q129[0],q129[1],q129[2],q129[3];
oracle q129[0],q129[1],q129[2],q129[3];
diffuser q129[0],q129[1],q129[2],q129[3];
measure q129[0] -> c23[0];
measure q129[1] -> c23[1];
measure q129[2] -> c23[2];
measure q129[3] -> c23[3];
