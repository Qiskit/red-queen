OPENQASM 2.0;
include "qelib1.inc";
gate su4_550 p0,p1 {
	u3(1.2749255,2.9885328,-2.081452) p0;
	u3(1.4843955,-0.83714971,-2.5165552) p1;
	cx p0,p1;
	u3(0.87333282,-pi/2,-pi/2) p0;
	u3(2.7690597,-0.88765655,-2.4929638) p1;
	cx p0,p1;
	u3(0.088881126,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.77054181,-1.6835747,-2.9559031) p0;
	u3(1.3967679,0.61131137,-1.8598025) p1;
}
gate su4_57 p0,p1 {
	u3(2.0827941,-2.2863927,-0.11843126) p0;
	u3(2.5720912,-2.0238288,2.9341547) p1;
	cx p0,p1;
	u3(0.63246424,-pi/2,-pi/2) p0;
	u3(2.1830575,-1.2862196,-2.9750355) p1;
	cx p0,p1;
	u3(0.15680694,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3208926,0.77406083,2.737556) p0;
	u3(0.77817998,0.94517537,0.064533535) p1;
}
gate su4_756 p0,p1 {
	u3(1.723131,1.5938998,-1.1927684) p0;
	u3(2.7599645,2.4309567,-0.93321281) p1;
	cx p0,p1;
	u3(0.14189799,-pi/2,-pi/2) p0;
	u3(2.52077,-1.1647666,-2.8051885) p1;
	cx p0,p1;
	u3(0.0029900359,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.86104893,-1.3301162,1.2805778) p0;
	u3(1.7329012,-2.8680623,-2.2729418) p1;
}
gate su4_340 p0,p1 {
	u3(0.43343551,-0.84501696,-0.69785327) p0;
	u3(2.1596884,2.3021511,-0.77359669) p1;
	cx p0,p1;
	u3(1.2052695,-pi/2,-pi/2) p0;
	u3(2.5929552,-1.1145958,-2.7450663) p1;
	cx p0,p1;
	u3(0.33765774,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8855655,-0.55183214,1.9391247) p0;
	u3(1.5428053,0.72454848,0.20077433) p1;
}
gate su4_138 p0,p1 {
	u3(1.2131228,-1.1103714,2.4804885) p0;
	u3(2.8741528,-1.9763917,2.1647296) p1;
	cx p0,p1;
	u3(0.43556216,-pi/2,-pi/2) p0;
	u3(2.4655761,-1.1948006,-2.8428544) p1;
	cx p0,p1;
	u3(0.14495772,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.24173547,-2.5688722,1.9515954) p0;
	u3(0.32125847,2.3052064,2.1587632) p1;
}
gate su4_136 p0,p1 {
	u3(1.7716322,2.2916649,2.6454835) p0;
	u3(1.8053982,1.7056937,2.8272898) p1;
	cx p0,p1;
	u3(1.0699332,-pi/2,-pi/2) p0;
	u3(2.7663471,-0.89325138,-2.4989738) p1;
	cx p0,p1;
	u3(0.37201472,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.52843261,-2.7525558,2.8974411) p0;
	u3(2.1440225,0.74288568,2.2060318) p1;
}
gate su4_333 p0,p1 {
	u3(0.59094753,-0.039365639,2.9830313) p0;
	u3(0.7683316,-0.04358727,1.4043552) p1;
	cx p0,p1;
	u3(0.79115445,-pi/2,-pi/2) p0;
	u3(2.7398906,-0.94267566,-2.5523708) p1;
	cx p0,p1;
	u3(0.4805694,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0362364,-0.67812837,-2.3994844) p0;
	u3(1.8584842,2.8928852,0.74266825) p1;
}
gate su4_38 p0,p1 {
	u3(0.26129831,2.7815401,-2.8279432) p0;
	u3(2.0394194,2.2386228,0.50271567) p1;
	cx p0,p1;
	u3(0.75687081,-pi/2,-pi/2) p0;
	u3(2.5532295,-1.1439863,-2.7799347) p1;
	cx p0,p1;
	u3(0.30910981,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.66235404,1.2604394,1.3012463) p0;
	u3(2.5180172,-1.2295024,-0.74081842) p1;
}
gate su4_193 p0,p1 {
	u3(2.1241925,-1.4618545,2.9739977) p0;
	u3(0.80103144,-2.3017986,0.96296389) p1;
	cx p0,p1;
	u3(1.1100527,-pi/2,-pi/2) p0;
	u3(2.7625,-0.90100358,-2.5073121) p1;
	cx p0,p1;
	u3(0.20556501,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5034222,2.9155623,2.1671225) p0;
	u3(2.1519105,-1.3112567,-2.9959886) p1;
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
qreg q[5];
creg meas[5];
su4_550 q[3],q[0];
su4_57 q[2],q[4];
su4_756 q[1],q[4];
su4_340 q[3],q[2];
su4_138 q[1],q[2];
su4_136 q[1],q[2];
su4_333 q[2],q[3];
su4_38 q[4],q[0];
su4_193 q[4],q[0];
su4_44 q[0],q[1];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
