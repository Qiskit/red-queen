OPENQASM 2.0;
include "qelib1.inc";
gate su4_302 p0,p1 {
	u3(2.1472756,2.3331785,-1.5645798) p0;
	u3(2.3261397,-0.28487553,-1.3616481) p1;
	cx p0,p1;
	u3(0.86483504,-pi/2,-pi/2) p0;
	u3(2.7536257,-0.91811569,-2.5257645) p1;
	cx p0,p1;
	u3(0.3975309,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(3.0044649,-2.6024503,0.72740804) p0;
	u3(1.4524922,2.9312367,0.10797793) p1;
}
gate su4_781 p0,p1 {
	u3(0.45740349,-1.1479617,3.0398384) p0;
	u3(1.6976759,-2.6457807,-0.19137675) p1;
	cx p0,p1;
	u3(0.93533762,-pi/2,-pi/2) p0;
	u3(2.6650937,-1.0461463,-2.6665838) p1;
	cx p0,p1;
	u3(0.44984316,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.46682309,-1.4307629,0.78172764) p0;
	u3(2.0045633,0.0084475596,-1.9064675) p1;
}
gate su4_386 p0,p1 {
	u3(2.2178149,-1.321939,-0.22817363) p0;
	u3(2.2236924,-2.306011,1.532303) p1;
	cx p0,p1;
	u3(1.26063,-pi/2,-pi/2) p0;
	u3(2.7879277,-0.84547319,-2.4478412) p1;
	cx p0,p1;
	u3(0.15330584,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8498704,-1.691393,-0.43471965) p0;
	u3(2.3710388,1.7132166,-0.77170123) p1;
}
qreg q[3];
creg meas[3];
su4_302 q[0],q[1];
su4_781 q[1],q[0];
su4_386 q[2],q[1];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
