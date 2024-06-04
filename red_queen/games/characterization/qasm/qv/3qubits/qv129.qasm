OPENQASM 2.0;
include "qelib1.inc";
gate su4_358 p0,p1 {
	u3(1.4504842,-0.25654666,2.9079005) p0;
	u3(2.0590202,-0.23942598,-0.30382049) p1;
	cx p0,p1;
	u3(0.45406124,-pi/2,-pi/2) p0;
	u3(2.6248172,-1.0871479,-2.713208) p1;
	cx p0,p1;
	u3(0.25444885,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.600068,1.6942683,-2.2675241) p0;
	u3(1.8788039,2.5665039,1.209586) p1;
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
gate su4_432 p0,p1 {
	u3(1.4567128,-1.9856533,1.6235702) p0;
	u3(1.4802689,1.2413327,-0.2012493) p1;
	cx p0,p1;
	u3(0.64134702,-pi/2,-pi/2) p0;
	u3(2.7388448,-0.94445754,-2.5543072) p1;
	cx p0,p1;
	u3(0.082254822,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7856956,-0.65090852,3.0967511) p0;
	u3(0.86992835,0.19100087,2.5759185) p1;
}
qreg q[3];
creg meas[3];
su4_358 q[1],q[0];
su4_590 q[0],q[1];
su4_432 q[1],q[0];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
