OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q164[5];
creg c28[5];
h q164[0];
h q164[1];
h q164[2];
h q164[3];
h q164[4];
oracle q164[0],q164[1],q164[2],q164[3],q164[4];
diffuser q164[0],q164[1],q164[2],q164[3],q164[4];
oracle q164[0],q164[1],q164[2],q164[3],q164[4];
diffuser q164[0],q164[1],q164[2],q164[3],q164[4];
oracle q164[0],q164[1],q164[2],q164[3],q164[4];
diffuser q164[0],q164[1],q164[2],q164[3],q164[4];
oracle q164[0],q164[1],q164[2],q164[3],q164[4];
diffuser q164[0],q164[1],q164[2],q164[3],q164[4];
measure q164[0] -> c28[0];
measure q164[1] -> c28[1];
measure q164[2] -> c28[2];
measure q164[3] -> c28[3];
measure q164[4] -> c28[4];
