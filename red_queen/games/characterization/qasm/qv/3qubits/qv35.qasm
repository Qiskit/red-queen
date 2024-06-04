OPENQASM 2.0;
include "qelib1.inc";
gate su4_58 p0,p1 {
	u3(0.78094762,-1.2116097,-0.89866226) p0;
	u3(1.8510425,-1.1191713,-1.3781386) p1;
	cx p0,p1;
	u3(0.83325246,-pi/2,-pi/2) p0;
	u3(2.7339787,-0.95259589,-2.5631625) p1;
	cx p0,p1;
	u3(0.37690172,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0100434,-1.7203149,1.2698455) p0;
	u3(2.4122009,-0.8665467,0.4690261) p1;
}
gate su4_832 p0,p1 {
	u3(1.1869713,1.9925097,0.6347066) p0;
	u3(2.3129242,1.2716842,1.3955474) p1;
	cx p0,p1;
	u3(0.5781245,-pi/2,-pi/2) p0;
	u3(2.5728352,-1.1300819,-2.7633283) p1;
	cx p0,p1;
	u3(0.11590792,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.53264037,0.36515301,1.5189207) p0;
	u3(1.914108,1.8239649,-0.9556024) p1;
}
gate su4_37 p0,p1 {
	u3(2.7570435,-2.8758034,1.6229159) p0;
	u3(1.1554412,2.5370369,-1.6616527) p1;
	cx p0,p1;
	u3(0.60122005,-pi/2,-pi/2) p0;
	u3(2.7819905,-0.85940381,-2.4627072) p1;
	cx p0,p1;
	u3(0.27536196,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2415199,2.8929684,-0.34590858) p0;
	u3(0.51352986,1.9792823,1.4658943) p1;
}
qreg q[3];
creg meas[3];
su4_58 q[2],q[0];
su4_832 q[2],q[1];
su4_37 q[0],q[1];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
