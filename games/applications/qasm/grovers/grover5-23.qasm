OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q3; h q4; mcx q0,q1,q2,q3,q4; h q4; x q3; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q371[5];
creg c51[5];
h q371[0];
h q371[1];
h q371[2];
h q371[3];
h q371[4];
oracle q371[0],q371[1],q371[2],q371[3],q371[4];
diffuser q371[0],q371[1],q371[2],q371[3],q371[4];
oracle q371[0],q371[1],q371[2],q371[3],q371[4];
diffuser q371[0],q371[1],q371[2],q371[3],q371[4];
oracle q371[0],q371[1],q371[2],q371[3],q371[4];
diffuser q371[0],q371[1],q371[2],q371[3],q371[4];
oracle q371[0],q371[1],q371[2],q371[3],q371[4];
diffuser q371[0],q371[1],q371[2],q371[3],q371[4];
measure q371[0] -> c51[0];
measure q371[1] -> c51[1];
measure q371[2] -> c51[2];
measure q371[3] -> c51[3];
measure q371[4] -> c51[4];
