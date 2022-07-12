OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; x q1; x q2; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q380[5];
creg c52[5];
h q380[0];
h q380[1];
h q380[2];
h q380[3];
h q380[4];
oracle q380[0],q380[1],q380[2],q380[3],q380[4];
diffuser q380[0],q380[1],q380[2],q380[3],q380[4];
oracle q380[0],q380[1],q380[2],q380[3],q380[4];
diffuser q380[0],q380[1],q380[2],q380[3],q380[4];
oracle q380[0],q380[1],q380[2],q380[3],q380[4];
diffuser q380[0],q380[1],q380[2],q380[3],q380[4];
oracle q380[0],q380[1],q380[2],q380[3],q380[4];
diffuser q380[0],q380[1],q380[2],q380[3],q380[4];
measure q380[0] -> c52[0];
measure q380[1] -> c52[1];
measure q380[2] -> c52[2];
measure q380[3] -> c52[3];
measure q380[4] -> c52[4];
