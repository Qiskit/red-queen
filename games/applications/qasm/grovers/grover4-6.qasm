OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q0; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q3; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q94[4];
creg c18[4];
h q94[0];
h q94[1];
h q94[2];
h q94[3];
oracle q94[0],q94[1],q94[2],q94[3];
diffuser q94[0],q94[1],q94[2],q94[3];
oracle q94[0],q94[1],q94[2],q94[3];
diffuser q94[0],q94[1],q94[2],q94[3];
oracle q94[0],q94[1],q94[2],q94[3];
diffuser q94[0],q94[1],q94[2],q94[3];
measure q94[0] -> c18[0];
measure q94[1] -> c18[1];
measure q94[2] -> c18[2];
measure q94[3] -> c18[3];
