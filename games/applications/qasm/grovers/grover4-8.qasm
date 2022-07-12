OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate oracle q0,q1,q2,q3 { x q0; x q1; x q2; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; }
gate diffuser q0,q1,q2,q3 { h q0; h q1; h q2; h q3; x q0; x q1; x q2; x q3; h q3; mcx q0,q1,q2,q3; h q3; x q0; x q1; x q2; x q3; h q0; h q1; h q2; h q3; }
qreg q108[4];
creg c20[4];
h q108[0];
h q108[1];
h q108[2];
h q108[3];
oracle q108[0],q108[1],q108[2],q108[3];
diffuser q108[0],q108[1],q108[2],q108[3];
oracle q108[0],q108[1],q108[2],q108[3];
diffuser q108[0],q108[1],q108[2],q108[3];
oracle q108[0],q108[1],q108[2],q108[3];
diffuser q108[0],q108[1],q108[2],q108[3];
measure q108[0] -> c20[0];
measure q108[1] -> c20[1];
measure q108[2] -> c20[2];
measure q108[3] -> c20[3];
