OPENQASM 2.0;
include "qelib1.inc";
gate su4_714 p0,p1 {
	u3(2.1509139,-2.2377833,1.752673) p0;
	u3(0.25841941,-2.3268312,-2.1338559) p1;
	cx p0,p1;
	u3(0.89828725,-pi/2,-pi/2) p0;
	u3(2.6052297,-1.1044757,-2.7332498) p1;
	cx p0,p1;
	u3(0.066247232,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0886374,-2.3095227,-0.64553789) p0;
	u3(2.2017429,-3.0223392,-1.5054019) p1;
}
gate su4_883 p0,p1 {
	u3(2.5385936,0.5746378,-2.4065461) p0;
	u3(1.3517104,1.9425191,0.5101462) p1;
	cx p0,p1;
	u3(1.1107188,-pi/2,-pi/2) p0;
	u3(2.5590062,-1.1400031,-2.7751554) p1;
	cx p0,p1;
	u3(0.013431012,1.3766766e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0549639,-1.3459146,0.56995332) p0;
	u3(2.1556948,-1.7176309,2.884515) p1;
}
qreg q[2];
creg meas[2];
su4_714 q[0],q[1];
su4_883 q[1],q[0];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
