OPENQASM 2.0;
include "qelib1.inc";
gate oracle q0,q1 { x q0; x q1; h q1; cx q0,q1; h q1; x q0; x q1; }
gate diffuser q0,q1 { h q0; h q1; x q0; x q1; h q1; cx q0,q1; h q1; x q0; x q1; h q0; h q1; }
qreg q0[2];
creg c0[2];
h q0[0];
h q0[1];
oracle q0[0],q0[1];
diffuser q0[0],q0[1];
measure q0[0] -> c0[0];
measure q0[1] -> c0[1];
