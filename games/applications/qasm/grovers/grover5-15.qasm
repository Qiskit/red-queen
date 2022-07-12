OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q299[5];
creg c43[5];
h q299[0];
h q299[1];
h q299[2];
h q299[3];
h q299[4];
oracle q299[0],q299[1],q299[2],q299[3],q299[4];
diffuser q299[0],q299[1],q299[2],q299[3],q299[4];
oracle q299[0],q299[1],q299[2],q299[3],q299[4];
diffuser q299[0],q299[1],q299[2],q299[3],q299[4];
oracle q299[0],q299[1],q299[2],q299[3],q299[4];
diffuser q299[0],q299[1],q299[2],q299[3],q299[4];
oracle q299[0],q299[1],q299[2],q299[3],q299[4];
diffuser q299[0],q299[1],q299[2],q299[3],q299[4];
measure q299[0] -> c43[0];
measure q299[1] -> c43[1];
measure q299[2] -> c43[2];
measure q299[3] -> c43[3];
measure q299[4] -> c43[4];
