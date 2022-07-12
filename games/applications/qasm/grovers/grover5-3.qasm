OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q2; x q3; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q191[5];
creg c31[5];
h q191[0];
h q191[1];
h q191[2];
h q191[3];
h q191[4];
oracle q191[0],q191[1],q191[2],q191[3],q191[4];
diffuser q191[0],q191[1],q191[2],q191[3],q191[4];
oracle q191[0],q191[1],q191[2],q191[3],q191[4];
diffuser q191[0],q191[1],q191[2],q191[3],q191[4];
oracle q191[0],q191[1],q191[2],q191[3],q191[4];
diffuser q191[0],q191[1],q191[2],q191[3],q191[4];
oracle q191[0],q191[1],q191[2],q191[3],q191[4];
diffuser q191[0],q191[1],q191[2],q191[3],q191[4];
measure q191[0] -> c31[0];
measure q191[1] -> c31[1];
measure q191[2] -> c31[2];
measure q191[3] -> c31[3];
measure q191[4] -> c31[4];
