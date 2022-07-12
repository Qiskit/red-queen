OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q434[5];
creg c58[5];
h q434[0];
h q434[1];
h q434[2];
h q434[3];
h q434[4];
oracle q434[0],q434[1],q434[2],q434[3],q434[4];
diffuser q434[0],q434[1],q434[2],q434[3],q434[4];
oracle q434[0],q434[1],q434[2],q434[3],q434[4];
diffuser q434[0],q434[1],q434[2],q434[3],q434[4];
oracle q434[0],q434[1],q434[2],q434[3],q434[4];
diffuser q434[0],q434[1],q434[2],q434[3],q434[4];
oracle q434[0],q434[1],q434[2],q434[3],q434[4];
diffuser q434[0],q434[1],q434[2],q434[3],q434[4];
measure q434[0] -> c58[0];
measure q434[1] -> c58[1];
measure q434[2] -> c58[2];
measure q434[3] -> c58[3];
measure q434[4] -> c58[4];
