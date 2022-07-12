OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; x q2; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q2; x q4; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q254[5];
creg c38[5];
h q254[0];
h q254[1];
h q254[2];
h q254[3];
h q254[4];
oracle q254[0],q254[1],q254[2],q254[3],q254[4];
diffuser q254[0],q254[1],q254[2],q254[3],q254[4];
oracle q254[0],q254[1],q254[2],q254[3],q254[4];
diffuser q254[0],q254[1],q254[2],q254[3],q254[4];
oracle q254[0],q254[1],q254[2],q254[3],q254[4];
diffuser q254[0],q254[1],q254[2],q254[3],q254[4];
oracle q254[0],q254[1],q254[2],q254[3],q254[4];
diffuser q254[0],q254[1],q254[2],q254[3],q254[4];
measure q254[0] -> c38[0];
measure q254[1] -> c38[1];
measure q254[2] -> c38[2];
measure q254[3] -> c38[3];
measure q254[4] -> c38[4];
