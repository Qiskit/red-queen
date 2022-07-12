OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q1; x q2; h q4; mcx q0,q1,q2,q3,q4; h q4; x q1; x q2; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q389[5];
creg c53[5];
h q389[0];
h q389[1];
h q389[2];
h q389[3];
h q389[4];
oracle q389[0],q389[1],q389[2],q389[3],q389[4];
diffuser q389[0],q389[1],q389[2],q389[3],q389[4];
oracle q389[0],q389[1],q389[2],q389[3],q389[4];
diffuser q389[0],q389[1],q389[2],q389[3],q389[4];
oracle q389[0],q389[1],q389[2],q389[3],q389[4];
diffuser q389[0],q389[1],q389[2],q389[3],q389[4];
oracle q389[0],q389[1],q389[2],q389[3],q389[4];
diffuser q389[0],q389[1],q389[2],q389[3],q389[4];
measure q389[0] -> c53[0];
measure q389[1] -> c53[1];
measure q389[2] -> c53[2];
measure q389[3] -> c53[3];
measure q389[4] -> c53[4];
