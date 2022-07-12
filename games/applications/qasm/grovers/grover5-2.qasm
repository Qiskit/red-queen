OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q2; x q3; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q182[5];
creg c30[5];
h q182[0];
h q182[1];
h q182[2];
h q182[3];
h q182[4];
oracle q182[0],q182[1],q182[2],q182[3],q182[4];
diffuser q182[0],q182[1],q182[2],q182[3],q182[4];
oracle q182[0],q182[1],q182[2],q182[3],q182[4];
diffuser q182[0],q182[1],q182[2],q182[3],q182[4];
oracle q182[0],q182[1],q182[2],q182[3],q182[4];
diffuser q182[0],q182[1],q182[2],q182[3],q182[4];
oracle q182[0],q182[1],q182[2],q182[3],q182[4];
diffuser q182[0],q182[1],q182[2],q182[3],q182[4];
measure q182[0] -> c30[0];
measure q182[1] -> c30[1];
measure q182[2] -> c30[2];
measure q182[3] -> c30[3];
measure q182[4] -> c30[4];
