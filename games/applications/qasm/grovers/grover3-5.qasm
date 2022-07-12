OPENQASM 2.0;
include "qelib1.inc";
gate oracle q0,q1,q2 { x q1; h q2; ccx q0,q1,q2; h q2; x q1; }
gate diffuser q0,q1,q2 { h q0; h q1; h q2; x q0; x q1; x q2; h q2; ccx q0,q1,q2; h q2; x q0; x q1; x q2; h q0; h q1; h q2; }
qreg q37[3];
creg c9[3];
h q37[0];
h q37[1];
h q37[2];
oracle q37[0],q37[1],q37[2];
diffuser q37[0],q37[1],q37[2];
oracle q37[0],q37[1],q37[2];
diffuser q37[0],q37[1],q37[2];
measure q37[0] -> c9[0];
measure q37[1] -> c9[1];
measure q37[2] -> c9[2];
