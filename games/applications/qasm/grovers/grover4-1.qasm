OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q1; x q2; x q3; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q59[4];
creg c13[4];
h q59[0];
h q59[1];
h q59[2];
h q59[3];
oracle q59[0],q59[1],q59[2],q59[3];
diffuser q59[0],q59[1],q59[2],q59[3];
oracle q59[0],q59[1],q59[2],q59[3];
diffuser q59[0],q59[1],q59[2],q59[3];
oracle q59[0],q59[1],q59[2],q59[3];
diffuser q59[0],q59[1],q59[2],q59[3];
measure q59[0] -> c13[0];
measure q59[1] -> c13[1];
measure q59[2] -> c13[2];
measure q59[3] -> c13[3];
