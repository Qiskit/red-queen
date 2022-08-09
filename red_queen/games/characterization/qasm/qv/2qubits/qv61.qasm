OPENQASM 2.0;
include "qelib1.inc";
gate su4_174 p0,p1 {
	u3(1.7552495,1.8996615,-1.5173865) p0;
	u3(2.7825461,1.2882052,1.1776616) p1;
	cx p0,p1;
	u3(0.7004846,-pi/2,-pi/2) p0;
	u3(2.4525798,-1.201055,-2.8509142) p1;
	cx p0,p1;
	u3(0.34938476,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2112402,0.11405407,-0.93320239) p0;
	u3(0.97091422,2.2748452,2.7607234) p1;
}
gate su4_651 p0,p1 {
	u3(1.1873844,2.1073072,0.56853062) p0;
	u3(2.1424693,-0.92785914,1.966108) p1;
	cx p0,p1;
	u3(1.1460052,-pi/2,-pi/2) p0;
	u3(2.6722245,-1.0380045,-2.6574382) p1;
	cx p0,p1;
	u3(0.024403544,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4460076,0.24895496,-0.88231198) p0;
	u3(1.8375158,-2.269494,2.3715806) p1;
}
qreg q[2];
creg meas[2];
su4_174 q[0],q[1];
su4_651 q[0],q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
