OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate oracle q0,q1,q2,q3,q4 { x q0; x q2; x q3; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q2; x q3; }
gate diffuser q0,q1,q2,q3,q4 { h q0; h q1; h q2; h q3; h q4; x q0; x q1; x q2; x q3; x q4; h q4; mcx q0,q1,q2,q3,q4; h q4; x q0; x q1; x q2; x q3; x q4; h q0; h q1; h q2; h q3; h q4; }
qreg q326[5];
creg c46[5];
h q326[0];
h q326[1];
h q326[2];
h q326[3];
h q326[4];
oracle q326[0],q326[1],q326[2],q326[3],q326[4];
diffuser q326[0],q326[1],q326[2],q326[3],q326[4];
oracle q326[0],q326[1],q326[2],q326[3],q326[4];
diffuser q326[0],q326[1],q326[2],q326[3],q326[4];
oracle q326[0],q326[1],q326[2],q326[3],q326[4];
diffuser q326[0],q326[1],q326[2],q326[3],q326[4];
oracle q326[0],q326[1],q326[2],q326[3],q326[4];
diffuser q326[0],q326[1],q326[2],q326[3],q326[4];
measure q326[0] -> c46[0];
measure q326[1] -> c46[1];
measure q326[2] -> c46[2];
measure q326[3] -> c46[3];
measure q326[4] -> c46[4];
