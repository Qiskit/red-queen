OPENQASM 2.0;
include "qelib1.inc";
gate gate_Shift q0,q1,q2,q3,q4,q5 { x q1; x q2; x q4; }
gate gate_Oracle_g q0,q1,q2,q3,q4,q5 { gate_Shift q0,q1,q2,q3,q4,q5; cz q0,q3; cz q1,q4; cz q2,q5; z q2; gate_Shift q0,q1,q2,q3,q4,q5; }
gate gate_Oracle_f q0,q1,q2,q3,q4,q5 { cz q0,q3; cz q1,q4; cz q2,q5; z q5; }
qreg q[6];
creg c[6];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
gate_Oracle_g q[0],q[1],q[2],q[3],q[4],q[5];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
gate_Oracle_f q[0],q[1],q[2],q[3],q[4],q[5];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];
