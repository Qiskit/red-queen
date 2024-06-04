OPENQASM 2.0;
include "qelib1.inc";
gate su4_400 p0,p1 {
	u3(1.3175175,2.4156159,-1.7890563) p0;
	u3(1.974171,-1.7329138,-0.69164719) p1;
	cx p0,p1;
	u3(0.7820009,-pi/2,-pi/2) p0;
	u3(2.616631,-1.0945751,-2.7217708) p1;
	cx p0,p1;
	u3(0.021866382,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9334578,0.94794283,1.3630164) p0;
	u3(0.96285509,-0.28974046,1.5464059) p1;
}
gate su4_471 p0,p1 {
	u3(2.8325866,-2.7801037,2.587289) p0;
	u3(1.3014688,-2.3834356,2.8581124) p1;
	cx p0,p1;
	u3(1.118042,-pi/2,-pi/2) p0;
	u3(2.6947024,-1.0102671,-2.6265141) p1;
	cx p0,p1;
	u3(0.4480033,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1417835,-2.8165206,-2.3971944) p0;
	u3(0.81771392,2.0231347,-0.039782824) p1;
}
gate su4_176 p0,p1 {
	u3(1.629303,1.4808523,-2.5827453) p0;
	u3(1.5995377,2.9816033,-0.71633259) p1;
	cx p0,p1;
	u3(0.44973044,-pi/2,-pi/2) p0;
	u3(2.4246104,-1.2136096,-2.8673687) p1;
	cx p0,p1;
	u3(0.15992503,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.95630893,-1.0816033,0.22494628) p0;
	u3(1.9595478,-0.58506154,-2.1006706) p1;
}
gate su4_896 p0,p1 {
	u3(0.14917965,-0.42144332,-0.67787532) p0;
	u3(0.39088961,0.17924498,-0.11983635) p1;
	cx p0,p1;
	u3(0.39190138,-pi/2,-pi/2) p0;
	u3(2.7435613,-0.93632578,-2.5454771) p1;
	cx p0,p1;
	u3(0.18206079,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2774492,2.6494984,-0.62890609) p0;
	u3(2.24187,0.4868217,2.4770799) p1;
}
gate su4_422 p0,p1 {
	u3(2.0258195,2.2428739,2.2334405) p0;
	u3(2.03573,1.6299379,-0.31064355) p1;
	cx p0,p1;
	u3(0.44535059,-pi/2,-pi/2) p0;
	u3(2.6633167,-1.0481299,-2.668817) p1;
	cx p0,p1;
	u3(0.3028774,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5672855,-0.061381887,0.055043061) p0;
	u3(2.2302564,2.3573955,-1.2933821) p1;
}
gate su4_294 p0,p1 {
	u3(1.946909,1.1348043,0.14504921) p0;
	u3(2.1432225,-2.4330485,0.010407562) p1;
	cx p0,p1;
	u3(1.0773468,-pi/2,-pi/2) p0;
	u3(2.6741256,-1.0357834,-2.654949) p1;
	cx p0,p1;
	u3(0.64583382,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9952932,0.7228301,-2.7563044) p0;
	u3(1.5323335,2.8113716,1.4981342) p1;
}
gate su4_511 p0,p1 {
	u3(1.4944851,-0.27895016,0.20705084) p0;
	u3(1.3938993,0.25773099,-0.49587001) p1;
	cx p0,p1;
	u3(1.0089825,-pi/2,-pi/2) p0;
	u3(2.5813173,-1.1237122,-2.7557889) p1;
	cx p0,p1;
	u3(0.58160133,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.569579,1.8768674,0.9279136) p0;
	u3(1.2773195,1.5399603,-2.7477752) p1;
}
gate su4_165 p0,p1 {
	u3(1.2709767,-1.8558549,0.76214517) p0;
	u3(1.5222598,-0.33410452,-2.9443284) p1;
	cx p0,p1;
	u3(0.99872407,-pi/2,-pi/2) p0;
	u3(2.7956978,-0.8262204,-2.4273478) p1;
	cx p0,p1;
	u3(0.32531429,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.97258515,-0.34154709,-1.521111) p0;
	u3(3.0307708,0.48979094,-2.2210232) p1;
}
qreg q[4];
creg meas[4];
su4_400 q[1],q[2];
su4_471 q[0],q[3];
su4_176 q[0],q[2];
su4_896 q[3],q[1];
su4_422 q[0],q[1];
su4_294 q[2],q[3];
su4_511 q[1],q[2];
su4_165 q[3],q[0];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
