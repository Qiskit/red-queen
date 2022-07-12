OPENQASM 2.0;
include "qelib1.inc";
gate oracle q0,q1,q2 { x q1; x q2; h q2; ccx q0,q1,q2; h q2; x q1; x q2; }
gate diffuser q0,q1,q2 { h q0; h q1; h q2; x q0; x q1; x q2; h q2; ccx q0,q1,q2; h q2; x q0; x q1; x q2; h q0; h q1; h q2; }
qreg q17[3];
creg c5[3];
h q17[0];
h q17[1];
h q17[2];
oracle q17[0],q17[1],q17[2];
diffuser q17[0],q17[1],q17[2];
oracle q17[0],q17[1],q17[2];
diffuser q17[0],q17[1],q17[2];
measure q17[0] -> c5[0];
measure q17[1] -> c5[1];
measure q17[2] -> c5[2];
