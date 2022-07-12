OPENQASM 2.0;
include "qelib1.inc";
gate oracle q0,q1 { x q1; h q1; cx q0,q1; h q1; x q1; }
gate diffuser q0,q1 { h q0; h q1; x q0; x q1; h q1; cx q0,q1; h q1; x q0; x q1; h q0; h q1; }
qreg q3[2];
creg c1[2];
h q3[0];
h q3[1];
oracle q3[0],q3[1];
diffuser q3[0],q3[1];
measure q3[0] -> c1[0];
measure q3[1] -> c1[1];
