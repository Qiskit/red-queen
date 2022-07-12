OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q3; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q218[5];
creg c34[5];
h q218[0];
h q218[1];
h q218[2];
h q218[3];
h q218[4];
oracle q218[0],q218[1],q218[2],q218[3],q218[4];
diffuser q218[0],q218[1],q218[2],q218[3],q218[4];
oracle q218[0],q218[1],q218[2],q218[3],q218[4];
diffuser q218[0],q218[1],q218[2],q218[3],q218[4];
oracle q218[0],q218[1],q218[2],q218[3],q218[4];
diffuser q218[0],q218[1],q218[2],q218[3],q218[4];
oracle q218[0],q218[1],q218[2],q218[3],q218[4];
diffuser q218[0],q218[1],q218[2],q218[3],q218[4];
measure q218[0] -> c34[0];
measure q218[1] -> c34[1];
measure q218[2] -> c34[2];
measure q218[3] -> c34[3];
measure q218[4] -> c34[4];
