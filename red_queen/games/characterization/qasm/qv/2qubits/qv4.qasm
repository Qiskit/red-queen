OPENQASM 2.0;
include "qelib1.inc";
gate su4_761 p0,p1 {
	u3(0.95456829,-0.49155486,1.2744705) p0;
	u3(0.7360261,2.9334414,-0.062079425) p1;
	cx p0,p1;
	u3(1.2106698,-pi/2,-pi/2) p0;
	u3(2.6954792,-1.0092475,-2.6253837) p1;
	cx p0,p1;
	u3(0.22838115,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7043147,1.4297494,-1.4439982) p0;
	u3(1.5688297,2.2890256,-1.257275) p1;
}
gate su4_454 p0,p1 {
	u3(0.7536409,0.10196696,2.7106523) p0;
	u3(1.8660164,-1.108546,2.0311064) p1;
	cx p0,p1;
	u3(1.0656176,-pi/2,-pi/2) p0;
	u3(2.7467863,-0.93062137,-2.5392931) p1;
	cx p0,p1;
	u3(0.14140056,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9779994,-2.390343,-2.5579415) p0;
	u3(1.2666004,-2.2546517,0.44439365) p1;
}
qreg q[2];
creg meas[2];
su4_761 q[1],q[0];
su4_454 q[0],q[1];
barrier q[0],q[1];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
