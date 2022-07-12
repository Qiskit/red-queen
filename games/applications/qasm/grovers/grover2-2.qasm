OPENQASM 2.0;
include "qelib1.inc";
gate oracle q0,q1 { x q0; h q1; cx q0,q1; h q1; x q0; }
gate diffuser q0,q1 { h q0; h q1; x q0; x q1; h q1; cx q0,q1; h q1; x q0; x q1; h q0; h q1; }
qreg q6[2];
creg c2[2];
h q6[0];
h q6[1];
oracle q6[0],q6[1];
diffuser q6[0],q6[1];
measure q6[0] -> c2[0];
measure q6[1] -> c2[1];
