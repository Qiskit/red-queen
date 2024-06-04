OPENQASM 2.0;
include "qelib1.inc";
gate su4_586 p0,p1 {
	u3(0.54754538,-1.5067492,0.93502195) p0;
	u3(2.2592059,0.47419433,2.2858869) p1;
	cx p0,p1;
	u3(0.78386843,-pi/2,-pi/2) p0;
	u3(2.7926239,-0.83398209,-2.4356027) p1;
	cx p0,p1;
	u3(0.2662302,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4798186,-1.4237605,0.14948679) p0;
	u3(1.0003983,2.8465012,-0.83741624) p1;
}
gate su4_255 p0,p1 {
	u3(0.99404,-1.9435959,-2.4313208) p0;
	u3(1.3703238,-1.8885663,0.49339673) p1;
	cx p0,p1;
	u3(0.38839071,-pi/2,-pi/2) p0;
	u3(2.5845442,-1.1212291,-2.7528606) p1;
	cx p0,p1;
	u3(0.034338119,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4269679,-1.7414055,2.8898349) p0;
	u3(2.0091251,0.86441633,-2.4890356) p1;
}
gate su4_424 p0,p1 {
	u3(2.0958555,1.0181567,2.8346856) p0;
	u3(1.1300065,2.6899497,1.7034994) p1;
	cx p0,p1;
	u3(0.45176903,-pi/2,-pi/2) p0;
	u3(2.4254568,-1.2132467,-2.8668875) p1;
	cx p0,p1;
	u3(0.063943845,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2008008,-2.2209106,2.3409321) p0;
	u3(1.4928932,-2.6715453,-0.9555398) p1;
}
qreg q[3];
creg meas[3];
su4_586 q[2],q[1];
su4_255 q[1],q[0];
su4_424 q[2],q[0];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
