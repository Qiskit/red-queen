OPENQASM 2.0;
include "qelib1.inc";
gate oracle q0,q1 { h q1; cx q0,q1; h q1; }
gate diffuser q0,q1 { h q0; h q1; x q0; x q1; h q1; cx q0,q1; h q1; x q0; x q1; h q0; h q1; }
qreg q9[2];
creg c3[2];
h q9[0];
h q9[1];
oracle q9[0],q9[1];
diffuser q9[0],q9[1];
measure q9[0] -> c3[0];
measure q9[1] -> c3[1];
