OPENQASM 2.0;
include "qelib1.inc";
gate oracle q0,q1,q2 { x q0; h q2; ccx q0,q1,q2; h q2; x q0; }
gate diffuser q0,q1,q2 { h q0; h q1; h q2; x q0; x q1; x q2; h q2; ccx q0,q1,q2; h q2; x q0; x q1; x q2; h q0; h q1; h q2; }
qreg q42[3];
creg c10[3];
h q42[0];
h q42[1];
h q42[2];
oracle q42[0],q42[1],q42[2];
diffuser q42[0],q42[1],q42[2];
oracle q42[0],q42[1],q42[2];
diffuser q42[0],q42[1],q42[2];
measure q42[0] -> c10[0];
measure q42[1] -> c10[1];
measure q42[2] -> c10[2];
