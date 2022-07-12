OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q1; x q2; x q3; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q173[5];
creg c29[5];
h q173[0];
h q173[1];
h q173[2];
h q173[3];
h q173[4];
oracle q173[0],q173[1],q173[2],q173[3],q173[4];
diffuser q173[0],q173[1],q173[2],q173[3],q173[4];
oracle q173[0],q173[1],q173[2],q173[3],q173[4];
diffuser q173[0],q173[1],q173[2],q173[3],q173[4];
oracle q173[0],q173[1],q173[2],q173[3],q173[4];
diffuser q173[0],q173[1],q173[2],q173[3],q173[4];
oracle q173[0],q173[1],q173[2],q173[3],q173[4];
diffuser q173[0],q173[1],q173[2],q173[3],q173[4];
measure q173[0] -> c29[0];
measure q173[1] -> c29[1];
measure q173[2] -> c29[2];
measure q173[3] -> c29[3];
measure q173[4] -> c29[4];
