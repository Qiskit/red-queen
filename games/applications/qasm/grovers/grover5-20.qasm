OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; x q1; x q3; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q3; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q344[5];
creg c48[5];
h q344[0];
h q344[1];
h q344[2];
h q344[3];
h q344[4];
oracle q344[0],q344[1],q344[2],q344[3],q344[4];
diffuser q344[0],q344[1],q344[2],q344[3],q344[4];
oracle q344[0],q344[1],q344[2],q344[3],q344[4];
diffuser q344[0],q344[1],q344[2],q344[3],q344[4];
oracle q344[0],q344[1],q344[2],q344[3],q344[4];
diffuser q344[0],q344[1],q344[2],q344[3],q344[4];
oracle q344[0],q344[1],q344[2],q344[3],q344[4];
diffuser q344[0],q344[1],q344[2],q344[3],q344[4];
measure q344[0] -> c48[0];
measure q344[1] -> c48[1];
measure q344[2] -> c48[2];
measure q344[3] -> c48[3];
measure q344[4] -> c48[4];
