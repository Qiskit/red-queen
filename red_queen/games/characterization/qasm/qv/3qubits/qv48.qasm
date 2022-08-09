OPENQASM 2.0;
include "qelib1.inc";
gate su4_840 p0,p1 {
	u3(0.45313266,-1.5511346,-0.96139699) p0;
	u3(2.6672725,0.77777426,-0.0034540261) p1;
	cx p0,p1;
	u3(0.64511626,-pi/2,-pi/2) p0;
	u3(2.4908556,-1.1817866,-2.826339) p1;
	cx p0,p1;
	u3(0.041371162,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.72293582,-1.6152514,-1.2674625) p0;
	u3(2.3312245,-1.2743188,-2.4143605) p1;
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
gate su4_131 p0,p1 {
	u3(2.9321908,1.1263813,1.7311008) p0;
	u3(0.97907064,-0.090663873,-0.30518523) p1;
	cx p0,p1;
	u3(0.83295817,-pi/2,-pi/2) p0;
	u3(2.79709,-0.8226401,-2.423543) p1;
	cx p0,p1;
	u3(0.043150602,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.51421875,-2.4559863,-0.52492604) p0;
	u3(0.23442237,0.99428706,0.86759572) p1;
}
qreg q[3];
creg meas[3];
su4_840 q[1],q[0];
su4_337 q[1],q[0];
su4_131 q[2],q[1];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
