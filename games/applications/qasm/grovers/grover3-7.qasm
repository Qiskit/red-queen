OPENQASM 2.0;
include "qelib1.inc";
gate oracle q0,q1,q2 { h q2; ccx q0,q1,q2; h q2; }
gate diffuser q0,q1,q2 { h q0; h q1; h q2; x q0; x q1; x q2; h q2; ccx q0,q1,q2; h q2; x q0; x q1; x q2; h q0; h q1; h q2; }
qreg q47[3];
creg c11[3];
h q47[0];
h q47[1];
h q47[2];
oracle q47[0],q47[1],q47[2];
diffuser q47[0],q47[1],q47[2];
oracle q47[0],q47[1],q47[2];
diffuser q47[0],q47[1],q47[2];
measure q47[0] -> c11[0];
measure q47[1] -> c11[1];
measure q47[2] -> c11[2];
