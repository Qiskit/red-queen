OPENQASM 2.0;
include "qelib1.inc";
gate su4_591 p0,p1 {
	u3(1.2655041,-1.6303058,1.9943984) p0;
	u3(1.1033364,-0.12255109,-1.1594988) p1;
	cx p0,p1;
	u3(0.42651254,-pi/2,-pi/2) p0;
	u3(2.6232231,-1.0886159,-2.7148973) p1;
	cx p0,p1;
	u3(0.24126061,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7074922,2.6855405,0.14144717) p0;
	u3(0.43996583,-0.36865252,1.8566108) p1;
}
gate su4_205 p0,p1 {
	u3(2.1920836,1.2448559,1.1367058) p0;
	u3(1.2745396,-2.0138044,0.10495812) p1;
	cx p0,p1;
	u3(0.45692157,-pi/2,-pi/2) p0;
	u3(2.70656,-0.99421449,-2.6087639) p1;
	cx p0,p1;
	u3(0.10201152,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0054304,2.4651518,3.0960244) p0;
	u3(1.7519537,-1.9240816,-1.2639375) p1;
}
gate su4_101 p0,p1 {
	u3(1.1017718,0.090728616,-1.6932376) p0;
	u3(2.9840877,3.0247252,0.29449621) p1;
	cx p0,p1;
	u3(0.70724632,-pi/2,-pi/2) p0;
	u3(2.5152431,-1.1680548,-2.8092391) p1;
	cx p0,p1;
	u3(0.49755473,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0153285,2.9267421,0.48008508) p0;
	u3(1.489042,0.70668163,-0.92976376) p1;
}
qreg q[3];
creg meas[3];
su4_591 q[0],q[2];
su4_205 q[1],q[2];
su4_101 q[0],q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
