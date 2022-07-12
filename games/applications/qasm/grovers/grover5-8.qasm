OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; x q1; x q2; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q236[5];
creg c36[5];
h q236[0];
h q236[1];
h q236[2];
h q236[3];
h q236[4];
oracle q236[0],q236[1],q236[2],q236[3],q236[4];
diffuser q236[0],q236[1],q236[2],q236[3],q236[4];
oracle q236[0],q236[1],q236[2],q236[3],q236[4];
diffuser q236[0],q236[1],q236[2],q236[3],q236[4];
oracle q236[0],q236[1],q236[2],q236[3],q236[4];
diffuser q236[0],q236[1],q236[2],q236[3],q236[4];
oracle q236[0],q236[1],q236[2],q236[3],q236[4];
diffuser q236[0],q236[1],q236[2],q236[3],q236[4];
measure q236[0] -> c36[0];
measure q236[1] -> c36[1];
measure q236[2] -> c36[2];
measure q236[3] -> c36[3];
measure q236[4] -> c36[4];
