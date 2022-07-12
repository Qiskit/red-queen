OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q1; x q2; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q1; x q2; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q245[5];
creg c37[5];
h q245[0];
h q245[1];
h q245[2];
h q245[3];
h q245[4];
oracle q245[0],q245[1],q245[2],q245[3],q245[4];
diffuser q245[0],q245[1],q245[2],q245[3],q245[4];
oracle q245[0],q245[1],q245[2],q245[3],q245[4];
diffuser q245[0],q245[1],q245[2],q245[3],q245[4];
oracle q245[0],q245[1],q245[2],q245[3],q245[4];
diffuser q245[0],q245[1],q245[2],q245[3],q245[4];
oracle q245[0],q245[1],q245[2],q245[3],q245[4];
diffuser q245[0],q245[1],q245[2],q245[3],q245[4];
measure q245[0] -> c37[0];
measure q245[1] -> c37[1];
measure q245[2] -> c37[2];
measure q245[3] -> c37[3];
measure q245[4] -> c37[4];
