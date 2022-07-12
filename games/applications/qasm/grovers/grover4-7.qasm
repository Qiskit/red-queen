OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q3; h q3; mcx q0,q1,q2,q3; h q3; x q3; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q101[4];
creg c19[4];
h q101[0];
h q101[1];
h q101[2];
h q101[3];
oracle q101[0],q101[1],q101[2],q101[3];
diffuser q101[0],q101[1],q101[2],q101[3];
oracle q101[0],q101[1],q101[2],q101[3];
diffuser q101[0],q101[1],q101[2],q101[3];
oracle q101[0],q101[1],q101[2],q101[3];
diffuser q101[0],q101[1],q101[2],q101[3];
measure q101[0] -> c19[0];
measure q101[1] -> c19[1];
measure q101[2] -> c19[2];
measure q101[3] -> c19[3];
