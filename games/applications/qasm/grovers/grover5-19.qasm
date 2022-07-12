OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q2; x q3; h q4; mcx q0,q1,q2,q3,q4; h q4; x q2; x q3; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q335[5];
creg c47[5];
h q335[0];
h q335[1];
h q335[2];
h q335[3];
h q335[4];
oracle q335[0],q335[1],q335[2],q335[3],q335[4];
diffuser q335[0],q335[1],q335[2],q335[3],q335[4];
oracle q335[0],q335[1],q335[2],q335[3],q335[4];
diffuser q335[0],q335[1],q335[2],q335[3],q335[4];
oracle q335[0],q335[1],q335[2],q335[3],q335[4];
diffuser q335[0],q335[1],q335[2],q335[3],q335[4];
oracle q335[0],q335[1],q335[2],q335[3],q335[4];
diffuser q335[0],q335[1],q335[2],q335[3],q335[4];
measure q335[0] -> c47[0];
measure q335[1] -> c47[1];
measure q335[2] -> c47[2];
measure q335[3] -> c47[3];
measure q335[4] -> c47[4];
