OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q1; x q2; x q3; h q4; mcx q0,q1,q2,q3,q4; h q4; x q1; x q2; x q3; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q317[5];
creg c45[5];
h q317[0];
h q317[1];
h q317[2];
h q317[3];
h q317[4];
oracle q317[0],q317[1],q317[2],q317[3],q317[4];
diffuser q317[0],q317[1],q317[2],q317[3],q317[4];
oracle q317[0],q317[1],q317[2],q317[3],q317[4];
diffuser q317[0],q317[1],q317[2],q317[3],q317[4];
oracle q317[0],q317[1],q317[2],q317[3],q317[4];
diffuser q317[0],q317[1],q317[2],q317[3],q317[4];
oracle q317[0],q317[1],q317[2],q317[3],q317[4];
diffuser q317[0],q317[1],q317[2],q317[3],q317[4];
measure q317[0] -> c45[0];
measure q317[1] -> c45[1];
measure q317[2] -> c45[2];
measure q317[3] -> c45[3];
measure q317[4] -> c45[4];
