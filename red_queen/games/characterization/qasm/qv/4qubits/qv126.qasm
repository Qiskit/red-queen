OPENQASM 2.0;
include "qelib1.inc";
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
gate su4_359 p0,p1 {
	u3(0.79445008,2.0843848,0.27089221) p0;
	u3(1.3923627,-2.8762767,1.5338843) p1;
	cx p0,p1;
	u3(1.1206604,-pi/2,-pi/2) p0;
	u3(2.6013004,-1.1077741,-2.7370916) p1;
	cx p0,p1;
	u3(0.43930587,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.748848,1.5052318,1.6590016) p0;
	u3(0.45713267,0.049924064,-1.4212003) p1;
}
gate su4_796 p0,p1 {
	u3(0.53543406,0.95259805,-0.9586618) p0;
	u3(1.8693753,-0.84091063,-0.929829) p1;
	cx p0,p1;
	u3(1.1317491,-pi/2,-pi/2) p0;
	u3(2.7230082,-0.97006859,-2.5822396) p1;
	cx p0,p1;
	u3(0.29432602,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1769311,3.0428573,2.3542038) p0;
	u3(1.4072469,-2.8706419,-0.34112769) p1;
}
gate su4_859 p0,p1 {
	u3(0.27303555,1.7969444,-0.84850527) p0;
	u3(1.2602368,-2.1873672,2.1774111) p1;
	cx p0,p1;
	u3(0.95496527,-pi/2,-pi/2) p0;
	u3(2.7355552,-0.94998642,-2.5603212) p1;
	cx p0,p1;
	u3(0.0061705782,3.0642155e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.102688,-1.8177047,0.10568663) p0;
	u3(0.73136812,-2.9466482,1.7477539) p1;
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
gate su4_803 p0,p1 {
	u3(0.75960196,-2.0293656,-1.2466808) p0;
	u3(2.1567882,-2.8187907,0.40484952) p1;
	cx p0,p1;
	u3(0.91996997,-pi/2,-pi/2) p0;
	u3(2.5427422,-1.1509885,-2.7883818) p1;
	cx p0,p1;
	u3(0.44488319,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.7680592,0.29935684,-3.1036112) p0;
	u3(2.0309234,1.9612917,-2.8610599) p1;
}
gate su4_975 p0,p1 {
	u3(0.94732303,-0.57823623,-2.5770453) p0;
	u3(1.5092062,-2.29405,-0.13459012) p1;
	cx p0,p1;
	u3(0.65222209,-pi/2,-pi/2) p0;
	u3(2.4003043,-1.223609,-2.8807761) p1;
	cx p0,p1;
	u3(0.23941473,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.24565836,-2.2839136,-2.3629051) p0;
	u3(0.38414907,0.65560552,2.2173917) p1;
}
gate su4_469 p0,p1 {
	u3(2.2466174,2.1077658,-3.1179672) p0;
	u3(2.6984213,0.49715184,-0.60998575) p1;
	cx p0,p1;
	u3(0.55001101,-pi/2,-pi/2) p0;
	u3(2.6664333,-1.0446392,-2.6648884) p1;
	cx p0,p1;
	u3(0.33858398,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4717287,-1.8871066,-0.78142362) p0;
	u3(1.9133293,1.8770225,1.6861283) p1;
}
qreg q[4];
creg meas[4];
su4_832 q[1],q[0];
su4_359 q[2],q[3];
su4_796 q[1],q[2];
su4_859 q[3],q[0];
su4_756 q[1],q[0];
su4_803 q[2],q[3];
su4_975 q[2],q[0];
su4_469 q[3],q[1];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
