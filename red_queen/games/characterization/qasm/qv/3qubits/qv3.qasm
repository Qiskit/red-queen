OPENQASM 2.0;
include "qelib1.inc";
gate su4_868 p0,p1 {
	u3(2.9026783,0.73098567,-2.3755776) p0;
	u3(2.3820124,-0.24957175,-2.6377405) p1;
	cx p0,p1;
	u3(0.88791123,-pi/2,-pi/2) p0;
	u3(2.3047964,-1.2562016,-2.926981) p1;
	cx p0,p1;
	u3(0.4359695,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.505427,-3.1099444,1.0217003) p0;
	u3(1.4057846,2.6874477,1.0778596) p1;
}
gate su4_723 p0,p1 {
	u3(1.2049234,-1.3195449,1.1633199) p0;
	u3(1.1592724,1.40703,2.3088921) p1;
	cx p0,p1;
	u3(0.75687805,-pi/2,-pi/2) p0;
	u3(2.7741337,-0.87689195,-2.4814179) p1;
	cx p0,p1;
	u3(0.51459833,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.91668109,0.50442016,-0.30276075) p0;
	u3(2.0660121,1.5587213,2.4609466) p1;
}
gate su4_167 p0,p1 {
	u3(1.4739017,1.0967479,1.4875497) p0;
	u3(2.7272098,0.8572111,-2.8175646) p1;
	cx p0,p1;
	u3(0.93207405,-pi/2,-pi/2) p0;
	u3(2.6666034,-1.0444471,-2.6646724) p1;
	cx p0,p1;
	u3(0.21166284,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9807222,-1.4122291,3.0894261) p0;
	u3(1.3348631,1.6854584,2.9109172) p1;
}
qreg q[3];
creg meas[3];
su4_868 q[0],q[1];
su4_723 q[0],q[2];
su4_167 q[1],q[0];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
