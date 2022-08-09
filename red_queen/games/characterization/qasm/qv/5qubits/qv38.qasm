OPENQASM 2.0;
include "qelib1.inc";
gate su4_505 p0,p1 {
	u3(0.76396193,1.2067195,1.1119164) p0;
	u3(1.3718894,-0.51573493,-2.461893) p1;
	cx p0,p1;
	u3(0.791405,-pi/2,-pi/2) p0;
	u3(2.5396928,-1.1529711,-2.7907846) p1;
	cx p0,p1;
	u3(0.54414708,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.90792091,-0.011513767,-1.0188161) p0;
	u3(1.9398523,-1.1974691,-1.4501681) p1;
}
gate su4_44 p0,p1 {
	u3(0.35928075,-1.1869495,1.905632) p0;
	u3(1.6229137,0.76400963,-2.5626358) p1;
	cx p0,p1;
	u3(1.1877497,-pi/2,-pi/2) p0;
	u3(2.5513507,-1.1452622,-2.7814694) p1;
	cx p0,p1;
	u3(0.25749933,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1405894,1.9111786,-1.3754999) p0;
	u3(2.6151899,-3.0389164,-2.7561871) p1;
}
gate su4_652 p0,p1 {
	u3(2.4365012,3.04282,2.7353661) p0;
	u3(0.5407748,1.1621639,-2.8340975) p1;
	cx p0,p1;
	u3(0.96275266,-pi/2,-pi/2) p0;
	u3(2.7559407,-0.91375136,-2.521052) p1;
	cx p0,p1;
	u3(0.24916922,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.063084,-1.1505849,-2.6673013) p0;
	u3(2.4119088,-0.79720109,0.17621786) p1;
}
gate su4_401 p0,p1 {
	u3(2.186667,-2.6490673,-2.1538382) p0;
	u3(1.0936232,1.3403025,-2.377109) p1;
	cx p0,p1;
	u3(0.26704041,-pi/2,-pi/2) p0;
	u3(2.5525108,-1.1444755,-2.7805228) p1;
	cx p0,p1;
	u3(0.088992289,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5831344,-1.5893661,-0.30360539) p0;
	u3(1.7597552,1.6748198,-1.4195326) p1;
}
gate su4_577 p0,p1 {
	u3(1.7815135,2.8057515,-1.5104246) p0;
	u3(0.68925136,-1.0236476,-1.9961798) p1;
	cx p0,p1;
	u3(0.89861425,-pi/2,-pi/2) p0;
	u3(2.6672818,-1.0436792,-2.663809) p1;
	cx p0,p1;
	u3(0.061626811,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2886325,-2.8158831,-1.608855) p0;
	u3(2.3424241,0.22970388,-2.664079) p1;
}
gate su4_277 p0,p1 {
	u3(0.89824415,0.48733337,-0.24439729) p0;
	u3(0.87404859,-2.9950042,-2.1526047) p1;
	cx p0,p1;
	u3(0.86441172,-pi/2,-pi/2) p0;
	u3(2.7097453,-0.98971659,-2.6038077) p1;
	cx p0,p1;
	u3(0.48067903,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2851058,2.798943,-2.1460739) p0;
	u3(1.3465919,0.14953914,-0.0090846416) p1;
}
gate su4_21 p0,p1 {
	u3(1.4426467,0.51815763,-2.9626211) p0;
	u3(1.3611549,0.12059197,-3.0732588) p1;
	cx p0,p1;
	u3(0.77073002,-pi/2,-pi/2) p0;
	u3(2.6818957,-1.0264737,-2.6445408) p1;
	cx p0,p1;
	u3(0.17031748,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5286988,2.3665788,-1.601776) p0;
	u3(2.6414131,-1.8299421,-1.7722638) p1;
}
gate su4_839 p0,p1 {
	u3(1.3940457,-2.2589142,-0.76684409) p0;
	u3(1.2111412,1.6104748,0.045980947) p1;
	cx p0,p1;
	u3(0.59771144,-pi/2,-pi/2) p0;
	u3(2.4775862,-1.1887631,-2.8351519) p1;
	cx p0,p1;
	u3(0.20697439,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5394208,1.2022354,2.0296293) p0;
	u3(1.0152666,-2.7780899,1.4708193) p1;
}
gate su4_465 p0,p1 {
	u3(1.7444486,-3.0002838,0.79693683) p0;
	u3(1.4368541,0.30367705,3.0431388) p1;
	cx p0,p1;
	u3(0.64446977,-pi/2,-pi/2) p0;
	u3(2.6539823,-1.0582657,-2.6802617) p1;
	cx p0,p1;
	u3(0.37795692,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9589737,0.099809919,-2.5560669) p0;
	u3(2.5501004,-0.87077176,0.42713637) p1;
}
gate su4_587 p0,p1 {
	u3(2.1877395,-1.0080795,0.34225357) p0;
	u3(0.6471185,0.84675719,-1.1755336) p1;
	cx p0,p1;
	u3(1.3803386,-pi/2,-pi/2) p0;
	u3(2.7072871,-0.99319494,-2.6076399) p1;
	cx p0,p1;
	u3(0.065684995,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.95219114,-1.51696,1.3354698) p0;
	u3(2.2768556,0.9151169,0.82398407) p1;
}
qreg q[5];
creg meas[5];
su4_505 q[3],q[0];
su4_44 q[0],q[3];
su4_652 q[4],q[2];
su4_401 q[1],q[2];
su4_577 q[1],q[2];
su4_277 q[1],q[3];
su4_21 q[4],q[0];
su4_839 q[2],q[0];
su4_465 q[0],q[3];
su4_587 q[4],q[2];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
