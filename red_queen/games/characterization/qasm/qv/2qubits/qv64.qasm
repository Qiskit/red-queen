OPENQASM 2.0;
include "qelib1.inc";
gate su4_981 p0,p1 {
	u3(1.8194996,-2.0282472,1.6660969) p0;
	u3(0.50836751,1.8103945,0.44693961) p1;
	cx p0,p1;
	u3(1.032468,-pi/2,-pi/2) p0;
	u3(2.7390005,-0.94419305,-2.5540197) p1;
	cx p0,p1;
	u3(0.23077922,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4980621,-1.8850774,-1.6879862) p0;
	u3(1.7298742,-0.42821234,-1.6137346) p1;
}
gate su4_12 p0,p1 {
	u3(2.7705433,-2.3849434,1.6027299) p0;
	u3(0.5388362,0.27714638,0.24131732) p1;
	cx p0,p1;
	u3(0.67667501,-pi/2,-pi/2) p0;
	u3(2.506295,-1.1732368,-2.815656) p1;
	cx p0,p1;
	u3(0.30962129,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.35696304,-2.9471967,2.8856888) p0;
	u3(0.65423542,0.57620972,0.13138433) p1;
}
qreg q[2];
creg meas[2];
su4_981 q[0],q[1];
su4_12 q[0],q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
