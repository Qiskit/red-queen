OPENQASM 2.0;
include "qelib1.inc";
gate su4_955 p0,p1 {
	u3(1.9313592,-1.8500387,-2.7682904) p0;
	u3(1.201779,2.6728522,-1.7970883) p1;
	cx p0,p1;
	u3(0.28115177,-pi/2,-pi/2) p0;
	u3(2.525643,-1.16181,-2.8015599) p1;
	cx p0,p1;
	u3(0.010896051,1.687539e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.226969,0.68850626,-2.8162329) p0;
	u3(0.50461832,0.80756576,0.61281994) p1;
}
gate su4_290 p0,p1 {
	u3(1.3077939,-2.7173247,-2.212099) p0;
	u3(1.6045391,-2.2541023,-1.9109151) p1;
	cx p0,p1;
	u3(0.50820178,-pi/2,-pi/2) p0;
	u3(2.4166087,-1.2169901,-2.871869) p1;
	cx p0,p1;
	u3(0.13285086,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1690704,0.98287592,-2.8038476) p0;
	u3(2.340843,-1.0073373,3.0255015) p1;
}
gate su4_318 p0,p1 {
	u3(0.94824942,1.6362783,0.19746235) p0;
	u3(0.67973641,-2.020786,-2.4115415) p1;
	cx p0,p1;
	u3(0.88054296,-pi/2,-pi/2) p0;
	u3(2.6359752,-1.0765648,-2.701074) p1;
	cx p0,p1;
	u3(0.52309239,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3814914,1.5620214,1.8696666) p0;
	u3(1.6778648,0.16644939,2.8453694) p1;
}
qreg q[3];
creg meas[3];
su4_955 q[1],q[2];
su4_290 q[1],q[0];
su4_318 q[0],q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
