OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; x q1; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q272[5];
creg c40[5];
h q272[0];
h q272[1];
h q272[2];
h q272[3];
h q272[4];
oracle q272[0],q272[1],q272[2],q272[3],q272[4];
diffuser q272[0],q272[1],q272[2],q272[3],q272[4];
oracle q272[0],q272[1],q272[2],q272[3],q272[4];
diffuser q272[0],q272[1],q272[2],q272[3],q272[4];
oracle q272[0],q272[1],q272[2],q272[3],q272[4];
diffuser q272[0],q272[1],q272[2],q272[3],q272[4];
oracle q272[0],q272[1],q272[2],q272[3],q272[4];
diffuser q272[0],q272[1],q272[2],q272[3],q272[4];
measure q272[0] -> c40[0];
measure q272[1] -> c40[1];
measure q272[2] -> c40[2];
measure q272[3] -> c40[3];
measure q272[4] -> c40[4];
