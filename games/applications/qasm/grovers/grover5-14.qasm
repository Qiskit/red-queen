OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q290[5];
creg c42[5];
h q290[0];
h q290[1];
h q290[2];
h q290[3];
h q290[4];
oracle q290[0],q290[1],q290[2],q290[3],q290[4];
diffuser q290[0],q290[1],q290[2],q290[3],q290[4];
oracle q290[0],q290[1],q290[2],q290[3],q290[4];
diffuser q290[0],q290[1],q290[2],q290[3],q290[4];
oracle q290[0],q290[1],q290[2],q290[3],q290[4];
diffuser q290[0],q290[1],q290[2],q290[3],q290[4];
oracle q290[0],q290[1],q290[2],q290[3],q290[4];
diffuser q290[0],q290[1],q290[2],q290[3],q290[4];
measure q290[0] -> c42[0];
measure q290[1] -> c42[1];
measure q290[2] -> c42[2];
measure q290[3] -> c42[3];
measure q290[4] -> c42[4];
