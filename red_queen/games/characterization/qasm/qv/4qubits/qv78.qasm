OPENQASM 2.0;
include "qelib1.inc";
gate su4_576 p0,p1 {
	u3(2.2487143,-2.9089461,0.90742266) p0;
	u3(1.0999672,-0.52091157,2.0893951) p1;
	cx p0,p1;
	u3(1.0503901,-pi/2,-pi/2) p0;
	u3(2.4492183,-1.2026276,-2.8529544) p1;
	cx p0,p1;
	u3(0.5534213,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6688371,-1.814666,-0.39850013) p0;
	u3(1.0432073,-0.59393363,-1.9211947) p1;
}
gate su4_240 p0,p1 {
	u3(1.3601178,-0.34840002,-0.60556561) p0;
	u3(2.1187098,-2.605622,0.54131129) p1;
	cx p0,p1;
	u3(0.64225973,-pi/2,-pi/2) p0;
	u3(2.6171457,-1.0941162,-2.7212405) p1;
	cx p0,p1;
	u3(0.26142352,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7726951,-0.45622794,1.5349198) p0;
	u3(2.8347864,-2.373784,-0.48643563) p1;
}
gate su4_668 p0,p1 {
	u3(2.7330589,-2.8035125,-1.0473767) p0;
	u3(1.9799935,-0.6908435,2.610944) p1;
	cx p0,p1;
	u3(1.1334735,-pi/2,-pi/2) p0;
	u3(2.5766572,-1.1272394,-2.7599589) p1;
	cx p0,p1;
	u3(0.21567114,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6773497,0.085226371,1.9877605) p0;
	u3(1.2404905,-2.0227696,-2.0414159) p1;
}
gate su4_571 p0,p1 {
	u3(0.94218317,-2.9834099,1.0210889) p0;
	u3(1.446657,1.1196193,-1.8830188) p1;
	cx p0,p1;
	u3(0.93249372,-pi/2,-pi/2) p0;
	u3(2.3584137,-1.2391044,-2.9021944) p1;
	cx p0,p1;
	u3(0.20392969,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.74509052,0.92671346,0.071758001) p0;
	u3(2.4865519,-1.3927894,-0.075452145) p1;
}
gate su4_553 p0,p1 {
	u3(1.7043714,-2.355223,1.4590296) p0;
	u3(2.0895274,0.49216192,0.006562872) p1;
	cx p0,p1;
	u3(1.0210636,-pi/2,-pi/2) p0;
	u3(2.4773264,-1.1888964,-2.8353212) p1;
	cx p0,p1;
	u3(0.59735408,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2667097,-2.2996207,0.7276615) p0;
	u3(2.3648926,-0.0037655897,2.3070172) p1;
}
gate su4_413 p0,p1 {
	u3(2.322081,2.7895732,2.5396083) p0;
	u3(1.0636073,-2.0222633,-1.9654889) p1;
	cx p0,p1;
	u3(0.3814073,-pi/2,-pi/2) p0;
	u3(2.5056222,-1.1736196,-2.8161316) p1;
	cx p0,p1;
	u3(0.10202819,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9145387,1.990961,1.2131097) p0;
	u3(1.0400032,-2.3542461,1.6099043) p1;
}
gate su4_208 p0,p1 {
	u3(1.923071,3.1158716,-2.8478523) p0;
	u3(0.89368105,-2.2107769,0.97947262) p1;
	cx p0,p1;
	u3(0.70180866,-pi/2,-pi/2) p0;
	u3(2.6342463,-1.0782407,-2.7029905) p1;
	cx p0,p1;
	u3(0.31085261,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.376006,-1.7368459,-1.6839308) p0;
	u3(1.9206429,-2.1875086,-2.4456901) p1;
}
gate su4_936 p0,p1 {
	u3(1.2732966,1.4578463,0.45176274) p0;
	u3(2.3085493,1.4276846,-2.001102) p1;
	cx p0,p1;
	u3(1.1489862,-pi/2,-pi/2) p0;
	u3(2.7494598,-0.92580033,-2.5340732) p1;
	cx p0,p1;
	u3(0.089162305,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.99765322,0.015940272,-0.32021568) p0;
	u3(2.4459576,-1.5340465,-0.65853949) p1;
}
qreg q[4];
creg meas[4];
su4_576 q[2],q[1];
su4_240 q[0],q[3];
su4_668 q[0],q[2];
su4_571 q[1],q[3];
su4_553 q[1],q[2];
su4_413 q[3],q[0];
su4_208 q[1],q[3];
su4_936 q[2],q[0];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
