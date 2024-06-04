OPENQASM 2.0;
include "qelib1.inc";
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
gate su4_584 p0,p1 {
	u3(1.7424968,-2.1517867,-2.7399389) p0;
	u3(1.6450798,-2.5029197,1.6338232) p1;
	cx p0,p1;
	u3(1.1917133,-pi/2,-pi/2) p0;
	u3(2.7098408,-0.98958041,-2.6036578) p1;
	cx p0,p1;
	u3(0.30893995,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1769783,3.1205972,-1.7042199) p0;
	u3(2.0998247,1.7024609,2.9385353) p1;
}
gate su4_980 p0,p1 {
	u3(1.9810589,-2.2186603,1.3897183) p0;
	u3(0.3063058,1.7161447,-3.0756881) p1;
	cx p0,p1;
	u3(0.77776937,-pi/2,-pi/2) p0;
	u3(2.1137009,-1.2991305,-2.9986667) p1;
	cx p0,p1;
	u3(0.29727166,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4274261,1.8304255,1.4603515) p0;
	u3(1.4317837,-2.6048864,-1.20488) p1;
}
qreg q[3];
creg meas[3];
su4_590 q[2],q[0];
su4_584 q[2],q[0];
su4_980 q[0],q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
