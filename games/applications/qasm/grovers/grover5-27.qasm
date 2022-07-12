OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q2; h q4; mcx q0,q1,q2,q3,q4; h q4; x q2; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q407[5];
creg c55[5];
h q407[0];
h q407[1];
h q407[2];
h q407[3];
h q407[4];
oracle q407[0],q407[1],q407[2],q407[3],q407[4];
diffuser q407[0],q407[1],q407[2],q407[3],q407[4];
oracle q407[0],q407[1],q407[2],q407[3],q407[4];
diffuser q407[0],q407[1],q407[2],q407[3],q407[4];
oracle q407[0],q407[1],q407[2],q407[3],q407[4];
diffuser q407[0],q407[1],q407[2],q407[3],q407[4];
oracle q407[0],q407[1],q407[2],q407[3],q407[4];
diffuser q407[0],q407[1],q407[2],q407[3],q407[4];
measure q407[0] -> c55[0];
measure q407[1] -> c55[1];
measure q407[2] -> c55[2];
measure q407[3] -> c55[3];
measure q407[4] -> c55[4];
