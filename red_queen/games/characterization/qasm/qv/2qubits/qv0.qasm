OPENQASM 2.0;
include "qelib1.inc";
gate su4_681 p0,p1 {
	u3(2.2671801,2.9735622,-2.6627251) p0;
	u3(1.8813866,1.9708404,1.9050437) p1;
	cx p0,p1;
	u3(0.72401308,-pi/2,-pi/2) p0;
	u3(2.5481393,-1.1474211,-2.7840708) p1;
	cx p0,p1;
	u3(0.40102792,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0645695,-0.055619203,1.1872454) p0;
	u3(1.3865791,0.10974721,-1.8124971) p1;
}
gate su4_164 p0,p1 {
	u3(1.6238917,1.4887825,-2.2822428) p0;
	u3(1.376176,-0.28778008,-2.6317052) p1;
	cx p0,p1;
	u3(0.81061454,-pi/2,-pi/2) p0;
	u3(2.4783884,-1.1883506,-2.8346283) p1;
	cx p0,p1;
	u3(0.047059717,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7748324,1.6203571,-2.7973726) p0;
	u3(2.2878563,2.6520046,-0.15962828) p1;
}
qreg q[2];
creg meas[2];
su4_681 q[0],q[1];
su4_164 q[0],q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
