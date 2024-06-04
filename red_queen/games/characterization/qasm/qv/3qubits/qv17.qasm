OPENQASM 2.0;
include "qelib1.inc";
gate su4_947 p0,p1 {
	u3(1.1538971,3.0778591,0.33541263) p0;
	u3(1.3151379,-0.80163686,1.5670658) p1;
	cx p0,p1;
	u3(0.60818975,-pi/2,-pi/2) p0;
	u3(2.4440321,-1.2050187,-2.8560675) p1;
	cx p0,p1;
	u3(0.12831233,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.51300979,0.85463832,-1.6673919) p0;
	u3(0.3153141,-2.9412902,-1.2588394) p1;
}
gate su4_137 p0,p1 {
	u3(2.0936151,2.5997011,1.8458025) p0;
	u3(2.3140877,-0.29788762,1.8921226) p1;
	cx p0,p1;
	u3(1.1168291,-pi/2,-pi/2) p0;
	u3(2.4332061,-1.2098765,-2.8624347) p1;
	cx p0,p1;
	u3(0.70327794,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2122732,-0.67909163,0.079312626) p0;
	u3(1.6152398,-2.827271,0.4614006) p1;
}
gate su4_324 p0,p1 {
	u3(1.7621901,2.1713345,-0.53082162) p0;
	u3(2.4195429,-0.24199042,-1.0490964) p1;
	cx p0,p1;
	u3(0.89748367,-pi/2,-pi/2) p0;
	u3(2.6964757,-1.0079331,-2.623927) p1;
	cx p0,p1;
	u3(0.52848614,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6762918,-2.2118226,0.7564464) p0;
	u3(1.7633717,-0.92599145,-0.53337466) p1;
}
qreg q[3];
creg meas[3];
su4_947 q[0],q[2];
su4_137 q[2],q[0];
su4_324 q[1],q[0];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
