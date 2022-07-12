OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; x q2; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q2; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q398[5];
creg c54[5];
h q398[0];
h q398[1];
h q398[2];
h q398[3];
h q398[4];
oracle q398[0],q398[1],q398[2],q398[3],q398[4];
diffuser q398[0],q398[1],q398[2],q398[3],q398[4];
oracle q398[0],q398[1],q398[2],q398[3],q398[4];
diffuser q398[0],q398[1],q398[2],q398[3],q398[4];
oracle q398[0],q398[1],q398[2],q398[3],q398[4];
diffuser q398[0],q398[1],q398[2],q398[3],q398[4];
oracle q398[0],q398[1],q398[2],q398[3],q398[4];
diffuser q398[0],q398[1],q398[2],q398[3],q398[4];
measure q398[0] -> c54[0];
measure q398[1] -> c54[1];
measure q398[2] -> c54[2];
measure q398[3] -> c54[3];
measure q398[4] -> c54[4];
