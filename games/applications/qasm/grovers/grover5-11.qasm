OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q2; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q2; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q263[5];
creg c39[5];
h q263[0];
h q263[1];
h q263[2];
h q263[3];
h q263[4];
oracle q263[0],q263[1],q263[2],q263[3],q263[4];
diffuser q263[0],q263[1],q263[2],q263[3],q263[4];
oracle q263[0],q263[1],q263[2],q263[3],q263[4];
diffuser q263[0],q263[1],q263[2],q263[3],q263[4];
oracle q263[0],q263[1],q263[2],q263[3],q263[4];
diffuser q263[0],q263[1],q263[2],q263[3],q263[4];
oracle q263[0],q263[1],q263[2],q263[3],q263[4];
diffuser q263[0],q263[1],q263[2],q263[3],q263[4];
measure q263[0] -> c39[0];
measure q263[1] -> c39[1];
measure q263[2] -> c39[2];
measure q263[3] -> c39[3];
measure q263[4] -> c39[4];
