OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q3; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q227[5];
creg c35[5];
h q227[0];
h q227[1];
h q227[2];
h q227[3];
h q227[4];
oracle q227[0],q227[1],q227[2],q227[3],q227[4];
diffuser q227[0],q227[1],q227[2],q227[3],q227[4];
oracle q227[0],q227[1],q227[2],q227[3],q227[4];
diffuser q227[0],q227[1],q227[2],q227[3],q227[4];
oracle q227[0],q227[1],q227[2],q227[3],q227[4];
diffuser q227[0],q227[1],q227[2],q227[3],q227[4];
oracle q227[0],q227[1],q227[2],q227[3],q227[4];
diffuser q227[0],q227[1],q227[2],q227[3],q227[4];
measure q227[0] -> c35[0];
measure q227[1] -> c35[1];
measure q227[2] -> c35[2];
measure q227[3] -> c35[3];
measure q227[4] -> c35[4];
