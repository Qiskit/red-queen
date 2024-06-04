OPENQASM 2.0;
include "qelib1.inc";
gate su4_24 p0,p1 {
	u3(2.5865764,1.2480657,-0.77191276) p0;
	u3(1.9969889,-0.14744023,-1.5931852) p1;
	cx p0,p1;
	u3(0.75591008,-pi/2,-pi/2) p0;
	u3(2.106544,-1.3003209,-3.0009847) p1;
	cx p0,p1;
	u3(0.28281318,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1385889,2.0038117,2.4909562) p0;
	u3(0.68130971,2.4913132,-2.2450647) p1;
}
gate su4_269 p0,p1 {
	u3(0.86092575,0.25417726,2.0407288) p0;
	u3(2.1608403,2.3855287,-1.0728836) p1;
	cx p0,p1;
	u3(1.0091761,-pi/2,-pi/2) p0;
	u3(2.7773698,-0.86981371,-2.4738381) p1;
	cx p0,p1;
	u3(0.15865597,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8154874,1.3286147,-0.84424445) p0;
	u3(2.9576549,-0.5875162,2.1368553) p1;
}
gate su4_41 p0,p1 {
	u3(1.0279241,-3.0893328,2.312111) p0;
	u3(1.2868185,-0.50652214,0.22614594) p1;
	cx p0,p1;
	u3(0.78337725,-pi/2,-pi/2) p0;
	u3(2.7358596,-0.94947967,-2.5597696) p1;
	cx p0,p1;
	u3(0.16685574,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5440131,-1.7166064,2.4720392) p0;
	u3(1.7436873,-1.640962,-2.3016946) p1;
}
qreg q[3];
creg meas[3];
su4_24 q[1],q[2];
su4_269 q[2],q[1];
su4_41 q[2],q[1];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
