OPENQASM 2.0;
include "qelib1.inc";
gate su4_680 p0,p1 {
	u3(1.0749829,1.6310186,0.086216122) p0;
	u3(0.75865029,-2.789758,-0.02308905) p1;
	cx p0,p1;
	u3(0.55396862,-pi/2,-pi/2) p0;
	u3(2.6895824,-1.0168805,-2.6338568) p1;
	cx p0,p1;
	u3(0.1220359,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0419082,0.89015768,1.9413574) p0;
	u3(3.0426577,2.4786807,0.23694225) p1;
}
gate su4_700 p0,p1 {
	u3(1.8881773,-0.11726227,-2.6537075) p0;
	u3(2.7302814,0.28730328,-1.8105474) p1;
	cx p0,p1;
	u3(0.69744764,-pi/2,-pi/2) p0;
	u3(2.4936153,-1.1802935,-2.8244643) p1;
	cx p0,p1;
	u3(0.28491671,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.32928124,-2.2199931,1.4525403) p0;
	u3(1.1615301,-2.6811463,0.42814563) p1;
}
gate su4_337 p0,p1 {
	u3(2.498704,0.84140848,-1.8164147) p0;
	u3(0.65760531,0.074382195,-1.7014124) p1;
	cx p0,p1;
	u3(0.61566772,-pi/2,-pi/2) p0;
	u3(2.4175046,-1.216616,-2.8713694) p1;
	cx p0,p1;
	u3(0.20422384,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.32621547,-0.53385948,3.135881) p0;
	u3(1.2851941,-0.93116257,2.4101553) p1;
}
qreg q[3];
creg meas[3];
su4_680 q[1],q[2];
su4_700 q[1],q[0];
su4_337 q[2],q[1];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
