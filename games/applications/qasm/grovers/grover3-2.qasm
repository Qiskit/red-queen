OPENQASM 2.0;
include "qelib1.inc";
gate oracle q0,q1,q2 { x q0; x q2; h q2; ccx q0,q1,q2; h q2; x q0; x q2; }
gate diffuser q0,q1,q2 { h q0; h q1; h q2; x q0; x q1; x q2; h q2; ccx q0,q1,q2; h q2; x q0; x q1; x q2; h q0; h q1; h q2; }
qreg q22[3];
creg c6[3];
h q22[0];
h q22[1];
h q22[2];
oracle q22[0],q22[1],q22[2];
diffuser q22[0],q22[1],q22[2];
oracle q22[0],q22[1],q22[2];
diffuser q22[0],q22[1],q22[2];
measure q22[0] -> c6[0];
measure q22[1] -> c6[1];
measure q22[2] -> c6[2];
