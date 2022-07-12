OPENQASM 2.0;
include "qelib1.inc";
gate oracle q0,q1,q2 { x q0; x q1; x q2; h q2; ccx q0,q1,q2; h q2; x q0; x q1; x q2; }
gate diffuser q0,q1,q2 { h q0; h q1; h q2; x q0; x q1; x q2; h q2; ccx q0,q1,q2; h q2; x q0; x q1; x q2; h q0; h q1; h q2; }
qreg q12[3];
creg c4[3];
h q12[0];
h q12[1];
h q12[2];
oracle q12[0],q12[1],q12[2];
diffuser q12[0],q12[1],q12[2];
oracle q12[0],q12[1],q12[2];
diffuser q12[0],q12[1],q12[2];
measure q12[0] -> c4[0];
measure q12[1] -> c4[1];
measure q12[2] -> c4[2];
