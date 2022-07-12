OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q1; h q4; mcx q0,q1,q2,q3,q4; h q4; x q1; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q425[5];
creg c57[5];
h q425[0];
h q425[1];
h q425[2];
h q425[3];
h q425[4];
oracle q425[0],q425[1],q425[2],q425[3],q425[4];
diffuser q425[0],q425[1],q425[2],q425[3],q425[4];
oracle q425[0],q425[1],q425[2],q425[3],q425[4];
diffuser q425[0],q425[1],q425[2],q425[3],q425[4];
oracle q425[0],q425[1],q425[2],q425[3],q425[4];
diffuser q425[0],q425[1],q425[2],q425[3],q425[4];
oracle q425[0],q425[1],q425[2],q425[3],q425[4];
diffuser q425[0],q425[1],q425[2],q425[3],q425[4];
measure q425[0] -> c57[0];
measure q425[1] -> c57[1];
measure q425[2] -> c57[2];
measure q425[3] -> c57[3];
measure q425[4] -> c57[4];
