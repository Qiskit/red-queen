OPENQASM 2.0;
include "qelib1.inc";
gate gate_IQFT_dg q0,q1,q2,q3,q4,q5,q6 { h q0; cp(-pi/2) q1,q0; h q1; cp(-pi/4) q2,q0; cp(-pi/2) q2,q1; h q2; cp(-pi/8) q3,q0; cp(-pi/4) q3,q1; cp(-pi/2) q3,q2; h q3; cp(-pi/16) q4,q0; cp(-pi/8) q4,q1; cp(-pi/4) q4,q2; cp(-pi/2) q4,q3; h q4; cp(-pi/32) q5,q0; cp(-pi/16) q5,q1; cp(-pi/8) q5,q2; cp(-pi/4) q5,q3; cp(-pi/2) q5,q4; h q5; cp(-pi/64) q6,q0; cp(-pi/32) q6,q1; cp(-pi/16) q6,q2; cp(-pi/8) q6,q3; cp(-pi/4) q6,q4; cp(-pi/2) q6,q5; h q6; }
gate ccircuit_147 q0,q1 { p(0) q0; p(0) q1; cx q0,q1; u(-59.346894,0,0) q1; cx q0,q1; u(59.346894,0,0) q1; }
gate ccircuit_138 q0,q1 { p(0) q0; p(0) q1; cx q0,q1; u(-29.673447,0,0) q1; cx q0,q1; u(29.673447,0,0) q1; }
gate ccircuit_129 q0,q1 { p(0) q0; p(0) q1; cx q0,q1; u(-14.836723,0,0) q1; cx q0,q1; u(14.836723,0,0) q1; }
gate ccircuit_120 q0,q1 { p(0) q0; p(0) q1; cx q0,q1; u(-7.4183617,0,0) q1; cx q0,q1; u(7.4183617,0,0) q1; }
gate ccircuit_111 q0,q1 { p(0) q0; p(0) q1; cx q0,q1; u(-3.7091809,0,0) q1; cx q0,q1; u(3.7091809,0,0) q1; }
gate ccircuit_102 q0,q1 { p(0) q0; p(0) q1; cx q0,q1; u(-1.8545904,0,0) q1; cx q0,q1; u(1.8545904,0,0) q1; }
gate ccircuit_93 q0,q1 { p(0) q0; p(0) q1; cx q0,q1; u(-0.92729522,0,0) q1; cx q0,q1; u(0.92729522,0,0) q1; }
gate gate_QPE q0,q1,q2,q3,q4,q5,q6,q7 { h q0; h q1; h q2; h q3; h q4; h q5; h q6; ccircuit_93 q0,q7; ccircuit_102 q1,q7; ccircuit_111 q2,q7; ccircuit_120 q3,q7; ccircuit_129 q4,q7; ccircuit_138 q5,q7; ccircuit_147 q6,q7; gate_IQFT_dg q6,q5,q4,q3,q2,q1,q0; }
qreg eval[7];
qreg q[1];
creg meas[8];
ry(0.92729522) q[0];
gate_QPE eval[0],eval[1],eval[2],eval[3],eval[4],eval[5],eval[6],q[0];
barrier eval[0],eval[1],eval[2],eval[3],eval[4],eval[5],eval[6],q[0];
measure eval[0] -> meas[0];
measure eval[1] -> meas[1];
measure eval[2] -> meas[2];
measure eval[3] -> meas[3];
measure eval[4] -> meas[4];
measure eval[5] -> meas[5];
measure eval[6] -> meas[6];
measure q[0] -> meas[7];
