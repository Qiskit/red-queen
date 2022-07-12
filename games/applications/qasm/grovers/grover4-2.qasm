OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q0; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q2; x q3; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q66[4];
creg c14[4];
h q66[0];
h q66[1];
h q66[2];
h q66[3];
oracle q66[0],q66[1],q66[2],q66[3];
diffuser q66[0],q66[1],q66[2],q66[3];
oracle q66[0],q66[1],q66[2],q66[3];
diffuser q66[0],q66[1],q66[2],q66[3];
oracle q66[0],q66[1],q66[2],q66[3];
diffuser q66[0],q66[1],q66[2],q66[3];
measure q66[0] -> c14[0];
measure q66[1] -> c14[1];
measure q66[2] -> c14[2];
measure q66[3] -> c14[3];
