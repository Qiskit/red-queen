OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { h q4; mcx q0,q1,q2,q3,q4; h q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q443[5];
creg c59[5];
h q443[0];
h q443[1];
h q443[2];
h q443[3];
h q443[4];
oracle q443[0],q443[1],q443[2],q443[3],q443[4];
diffuser q443[0],q443[1],q443[2],q443[3],q443[4];
oracle q443[0],q443[1],q443[2],q443[3],q443[4];
diffuser q443[0],q443[1],q443[2],q443[3],q443[4];
oracle q443[0],q443[1],q443[2],q443[3],q443[4];
diffuser q443[0],q443[1],q443[2],q443[3],q443[4];
oracle q443[0],q443[1],q443[2],q443[3],q443[4];
diffuser q443[0],q443[1],q443[2],q443[3],q443[4];
measure q443[0] -> c59[0];
measure q443[1] -> c59[1];
measure q443[2] -> c59[2];
measure q443[3] -> c59[3];
measure q443[4] -> c59[4];
