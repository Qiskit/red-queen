OPENQASM 2.0;
include "qelib1.inc";
gate oracle q0,q1,q2 { x q2; h q2; ccx q0,q1,q2; h q2; x q2; }
gate diffuser q0,q1,q2 { h q0; h q1; h q2; x q0; x q1; x q2; h q2; ccx q0,q1,q2; h q2; x q0; x q1; x q2; h q0; h q1; h q2; }
qreg q27[3];
creg c7[3];
h q27[0];
h q27[1];
h q27[2];
oracle q27[0],q27[1],q27[2];
diffuser q27[0],q27[1],q27[2];
oracle q27[0],q27[1],q27[2];
diffuser q27[0],q27[1],q27[2];
measure q27[0] -> c7[0];
measure q27[1] -> c7[1];
measure q27[2] -> c7[2];
