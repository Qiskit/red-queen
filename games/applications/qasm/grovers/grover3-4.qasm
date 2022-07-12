OPENQASM 2.0;
include "qelib1.inc";
gate oracle q0,q1,q2 { x q0; x q1; h q2; ccx q0,q1,q2; h q2; x q0; x q1; }
gate diffuser q0,q1,q2 { h q0; h q1; h q2; x q0; x q1; x q2; h q2; ccx q0,q1,q2; h q2; x q0; x q1; x q2; h q0; h q1; h q2; }
qreg q32[3];
creg c8[3];
h q32[0];
h q32[1];
h q32[2];
oracle q32[0],q32[1],q32[2];
diffuser q32[0],q32[1],q32[2];
oracle q32[0],q32[1],q32[2];
diffuser q32[0],q32[1],q32[2];
measure q32[0] -> c8[0];
measure q32[1] -> c8[1];
measure q32[2] -> c8[2];
