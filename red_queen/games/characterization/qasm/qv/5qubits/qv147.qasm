OPENQASM 2.0;
include "qelib1.inc";
gate su4_615 p0,p1 {
	u3(0.59495962,0.10456591,3.1049351) p0;
	u3(1.6777367,-0.54435766,0.083427262) p1;
	cx p0,p1;
	u3(0.82039419,-pi/2,-pi/2) p0;
	u3(2.6499993,-1.0624509,-2.685004) p1;
	cx p0,p1;
	u3(0.29227965,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1022328,0.71437388,3.0689769) p0;
	u3(1.1513024,0.33521374,0.88746257) p1;
}
gate su4_34 p0,p1 {
	u3(1.6226191,-2.1269516,-0.42594346) p0;
	u3(1.5273265,2.1630699,2.8940871) p1;
	cx p0,p1;
	u3(0.53628248,-pi/2,-pi/2) p0;
	u3(2.7027237,-0.99952473,-2.6146248) p1;
	cx p0,p1;
	u3(0.36216479,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2052134,-0.22601446,2.8475232) p0;
	u3(1.6063595,1.1710705,-1.2702926) p1;
}
gate su4_791 p0,p1 {
	u3(2.2419607,-1.3660541,-1.9683098) p0;
	u3(2.8041318,-3.1318925,0.17984531) p1;
	cx p0,p1;
	u3(0.94750237,-pi/2,-pi/2) p0;
	u3(2.6556542,-1.0564845,-2.6782463) p1;
	cx p0,p1;
	u3(0.34577512,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5850687,1.2680249,2.3036132) p0;
	u3(2.9562429,2.8923229,0.27755388) p1;
}
gate su4_959 p0,p1 {
	u3(1.4820469,0.34173678,2.875151) p0;
	u3(1.7646042,-1.8722067,-1.8695843) p1;
	cx p0,p1;
	u3(0.59879229,-pi/2,-pi/2) p0;
	u3(2.4280855,-1.2121132,-2.8653866) p1;
	cx p0,p1;
	u3(0.18422528,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4820597,-3.1138167,3.0052179) p0;
	u3(1.3849399,-1.2437667,-0.21696925) p1;
}
gate su4_279 p0,p1 {
	u3(1.6178222,0.17436924,-1.1495161) p0;
	u3(1.6869642,1.7598509,-0.3786781) p1;
	cx p0,p1;
	u3(0.81354178,-pi/2,-pi/2) p0;
	u3(2.5059806,-1.1734158,-2.8158783) p1;
	cx p0,p1;
	u3(0.4066677,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2805825,0.2065787,2.3664857) p0;
	u3(0.91417641,0.2111804,-0.83242076) p1;
}
gate su4_195 p0,p1 {
	u3(1.493878,1.7831513,-1.0213576) p0;
	u3(0.98651923,-0.84825381,1.3455745) p1;
	cx p0,p1;
	u3(1.1422562,-pi/2,-pi/2) p0;
	u3(2.5301454,-1.1590292,-2.7981585) p1;
	cx p0,p1;
	u3(0.14839365,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1029105,2.2860246,2.5637047) p0;
	u3(2.1527121,-0.21634532,1.2765398) p1;
}
gate su4_179 p0,p1 {
	u3(2.1757214,-2.6442419,0.67619111) p0;
	u3(2.284415,1.1139475,-1.4016545) p1;
	cx p0,p1;
	u3(0.95268527,-pi/2,-pi/2) p0;
	u3(2.6215091,-1.0901825,-2.7167017) p1;
	cx p0,p1;
	u3(0.22201932,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.658244,-1.71611,-2.8715821) p0;
	u3(1.7215498,0.89044522,0.64860439) p1;
}
gate su4_848 p0,p1 {
	u3(2.7905107,2.7378424,1.2878255) p0;
	u3(1.8766308,0.096393223,0.64507602) p1;
	cx p0,p1;
	u3(1.1445069,-pi/2,-pi/2) p0;
	u3(2.803018,-0.80691597,-2.4068551) p1;
	cx p0,p1;
	u3(0.70038122,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(3.0208392,-2.3522551,-0.3891604) p0;
	u3(0.83725444,-0.5746552,-0.16376668) p1;
}
gate su4_547 p0,p1 {
	u3(2.1279455,0.61047835,-1.8454827) p0;
	u3(1.2413374,-2.686911,-3.0893884) p1;
	cx p0,p1;
	u3(0.77376019,-pi/2,-pi/2) p0;
	u3(2.7904435,-0.83937116,-2.4413397) p1;
	cx p0,p1;
	u3(0.040606838,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0887766,2.3863623,-2.2415678) p0;
	u3(1.1212034,0.077179773,2.2864225) p1;
}
gate su4_82 p0,p1 {
	u3(2.4245365,-1.3582065,-1.181767) p0;
	u3(2.4066075,-1.0341734,0.48746215) p1;
	cx p0,p1;
	u3(0.60542372,-pi/2,-pi/2) p0;
	u3(2.7915286,-0.83670125,-2.4384968) p1;
	cx p0,p1;
	u3(0.25122785,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0039962,1.0518029,-1.718488) p0;
	u3(1.8341934,0.90878468,-2.1594453) p1;
}
qreg q[5];
creg meas[5];
su4_615 q[0],q[1];
su4_34 q[3],q[1];
su4_791 q[3],q[0];
su4_959 q[2],q[4];
su4_279 q[4],q[2];
su4_195 q[2],q[1];
su4_179 q[3],q[2];
su4_848 q[0],q[2];
su4_547 q[4],q[1];
su4_82 q[4],q[1];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
