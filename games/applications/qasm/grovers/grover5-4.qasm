OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; x q1; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q3; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q200[5];
creg c32[5];
h q200[0];
h q200[1];
h q200[2];
h q200[3];
h q200[4];
oracle q200[0],q200[1],q200[2],q200[3],q200[4];
diffuser q200[0],q200[1],q200[2],q200[3],q200[4];
oracle q200[0],q200[1],q200[2],q200[3],q200[4];
diffuser q200[0],q200[1],q200[2],q200[3],q200[4];
oracle q200[0],q200[1],q200[2],q200[3],q200[4];
diffuser q200[0],q200[1],q200[2],q200[3],q200[4];
oracle q200[0],q200[1],q200[2],q200[3],q200[4];
diffuser q200[0],q200[1],q200[2],q200[3],q200[4];
measure q200[0] -> c32[0];
measure q200[1] -> c32[1];
measure q200[2] -> c32[2];
measure q200[3] -> c32[3];
measure q200[4] -> c32[4];
