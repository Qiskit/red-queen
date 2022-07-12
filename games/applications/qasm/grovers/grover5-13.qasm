OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q1; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q1; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q281[5];
creg c41[5];
h q281[0];
h q281[1];
h q281[2];
h q281[3];
h q281[4];
oracle q281[0],q281[1],q281[2],q281[3],q281[4];
diffuser q281[0],q281[1],q281[2],q281[3],q281[4];
oracle q281[0],q281[1],q281[2],q281[3],q281[4];
diffuser q281[0],q281[1],q281[2],q281[3],q281[4];
oracle q281[0],q281[1],q281[2],q281[3],q281[4];
diffuser q281[0],q281[1],q281[2],q281[3],q281[4];
oracle q281[0],q281[1],q281[2],q281[3],q281[4];
diffuser q281[0],q281[1],q281[2],q281[3],q281[4];
measure q281[0] -> c41[0];
measure q281[1] -> c41[1];
measure q281[2] -> c41[2];
measure q281[3] -> c41[3];
measure q281[4] -> c41[4];
