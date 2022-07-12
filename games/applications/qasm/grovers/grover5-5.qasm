OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q1; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q1; x q3; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q209[5];
creg c33[5];
h q209[0];
h q209[1];
h q209[2];
h q209[3];
h q209[4];
oracle q209[0],q209[1],q209[2],q209[3],q209[4];
diffuser q209[0],q209[1],q209[2],q209[3],q209[4];
oracle q209[0],q209[1],q209[2],q209[3],q209[4];
diffuser q209[0],q209[1],q209[2],q209[3],q209[4];
oracle q209[0],q209[1],q209[2],q209[3],q209[4];
diffuser q209[0],q209[1],q209[2],q209[3],q209[4];
oracle q209[0],q209[1],q209[2],q209[3],q209[4];
diffuser q209[0],q209[1],q209[2],q209[3],q209[4];
measure q209[0] -> c33[0];
measure q209[1] -> c33[1];
measure q209[2] -> c33[2];
measure q209[3] -> c33[3];
measure q209[4] -> c33[4];
