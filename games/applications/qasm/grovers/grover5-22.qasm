OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; x q3; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q3; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q362[5];
creg c50[5];
h q362[0];
h q362[1];
h q362[2];
h q362[3];
h q362[4];
oracle q362[0],q362[1],q362[2],q362[3],q362[4];
diffuser q362[0],q362[1],q362[2],q362[3],q362[4];
oracle q362[0],q362[1],q362[2],q362[3],q362[4];
diffuser q362[0],q362[1],q362[2],q362[3],q362[4];
oracle q362[0],q362[1],q362[2],q362[3],q362[4];
diffuser q362[0],q362[1],q362[2],q362[3],q362[4];
oracle q362[0],q362[1],q362[2],q362[3],q362[4];
diffuser q362[0],q362[1],q362[2],q362[3],q362[4];
measure q362[0] -> c50[0];
measure q362[1] -> c50[1];
measure q362[2] -> c50[2];
measure q362[3] -> c50[3];
measure q362[4] -> c50[4];
