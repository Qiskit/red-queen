OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; x q1; x q2; x q3; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q308[5];
creg c44[5];
h q308[0];
h q308[1];
h q308[2];
h q308[3];
h q308[4];
oracle q308[0],q308[1],q308[2],q308[3],q308[4];
diffuser q308[0],q308[1],q308[2],q308[3],q308[4];
oracle q308[0],q308[1],q308[2],q308[3],q308[4];
diffuser q308[0],q308[1],q308[2],q308[3],q308[4];
oracle q308[0],q308[1],q308[2],q308[3],q308[4];
diffuser q308[0],q308[1],q308[2],q308[3],q308[4];
oracle q308[0],q308[1],q308[2],q308[3],q308[4];
diffuser q308[0],q308[1],q308[2],q308[3],q308[4];
measure q308[0] -> c44[0];
measure q308[1] -> c44[1];
measure q308[2] -> c44[2];
measure q308[3] -> c44[3];
measure q308[4] -> c44[4];
