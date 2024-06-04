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
qreg q[3];
creg meas[3];
su4_400 q[0],q[1];
su4_471 q[0],q[2];
su4_176 q[0],q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
