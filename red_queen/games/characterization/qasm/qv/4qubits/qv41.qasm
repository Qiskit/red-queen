OPENQASM 2.0;
include "qelib1.inc";
gate su4_465 p0,p1 {
	u3(1.7444486,-3.0002838,0.79693683) p0;
	u3(1.4368541,0.30367705,3.0431388) p1;
	cx p0,p1;
	u3(0.64446977,-pi/2,-pi/2) p0;
	u3(2.6539823,-1.0582657,-2.6802617) p1;
	cx p0,p1;
	u3(0.37795692,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9589737,0.099809919,-2.5560669) p0;
	u3(2.5501004,-0.87077176,0.42713637) p1;
}
gate su4_668 p0,p1 {
	u3(2.7330589,-2.8035125,-1.0473767) p0;
	u3(1.9799935,-0.6908435,2.610944) p1;
	cx p0,p1;
	u3(1.1334735,-pi/2,-pi/2) p0;
	u3(2.5766572,-1.1272394,-2.7599589) p1;
	cx p0,p1;
	u3(0.21567114,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6773497,0.085226371,1.9877605) p0;
	u3(1.2404905,-2.0227696,-2.0414159) p1;
}
gate su4_499 p0,p1 {
	u3(1.2553727,1.7991863,-2.2952993) p0;
	u3(1.3475539,1.1525302,-2.9867673) p1;
	cx p0,p1;
	u3(0.92410775,-pi/2,-pi/2) p0;
	u3(2.6366864,-1.0758714,-2.7002816) p1;
	cx p0,p1;
	u3(0.40593925,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.80417,1.7898408,1.98853) p0;
	u3(2.6375861,-2.2824482,-2.3724758) p1;
}
gate su4_49 p0,p1 {
	u3(1.9382737,-0.95825216,-2.6995397) p0;
	u3(0.68288678,1.9111391,-1.9964947) p1;
	cx p0,p1;
	u3(0.53484919,-pi/2,-pi/2) p0;
	u3(2.8060805,-0.79847352,-2.3979094) p1;
	cx p0,p1;
	u3(0.29201776,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.49279621,-2.1489769,2.4992354) p0;
	u3(1.0758982,1.2323489,2.3948108) p1;
}
gate su4_293 p0,p1 {
	u3(1.5035217,2.5000392,1.1486572) p0;
	u3(2.5653283,-1.4004783,-0.56305611) p1;
	cx p0,p1;
	u3(0.68381843,-pi/2,-pi/2) p0;
	u3(2.7113857,-0.98736802,-2.6012227) p1;
	cx p0,p1;
	u3(0.14487556,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.75790833,1.8285847,2.3984898) p0;
	u3(2.6764711,-0.93170001,1.1648682) p1;
}
gate su4_321 p0,p1 {
	u3(1.9239784,3.0824135,-0.75065674) p0;
	u3(0.13741451,-2.3105408,1.9035471) p1;
	cx p0,p1;
	u3(0.45701406,-pi/2,-pi/2) p0;
	u3(2.8099087,-0.78759449,-2.3863956) p1;
	cx p0,p1;
	u3(0.236799,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7546991,-0.8640585,-1.4870939) p0;
	u3(1.8171238,2.6871503,-1.6674771) p1;
}
gate su4_567 p0,p1 {
	u3(1.1508428,-1.9340077,-1.4684987) p0;
	u3(1.0259741,1.4112808,-0.19982569) p1;
	cx p0,p1;
	u3(0.75717407,-pi/2,-pi/2) p0;
	u3(2.6338714,-1.0786023,-2.7034043) p1;
	cx p0,p1;
	u3(0.52807022,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5418178,0.76659145,1.4172654) p0;
	u3(2.2584277,-0.082707838,0.26903543) p1;
}
gate su4_590 p0,p1 {
	u3(1.1628857,-1.1566072,-2.2218909) p0;
	u3(1.7651375,2.8038322,0.40206075) p1;
	cx p0,p1;
	u3(0.47815923,-pi/2,-pi/2) p0;
	u3(2.6091021,-1.1011689,-2.7294073) p1;
	cx p0,p1;
	u3(0.0022004958,8.5265128e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3964876,2.6314648,-3.1259739) p0;
	u3(0.67429498,0.77756703,-0.34599009) p1;
}
qreg q[4];
creg meas[4];
su4_465 q[2],q[1];
su4_668 q[0],q[3];
su4_499 q[1],q[3];
su4_49 q[2],q[0];
su4_293 q[1],q[0];
su4_321 q[0],q[1];
su4_567 q[3],q[2];
su4_590 q[2],q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
