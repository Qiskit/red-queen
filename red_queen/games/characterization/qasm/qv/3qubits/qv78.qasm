OPENQASM 2.0;
include "qelib1.inc";
gate su4_78 p0,p1 {
	u3(2.0178776,3.0615781,-1.0874928) p0;
	u3(0.93333866,-1.3986209,-0.96438591) p1;
	cx p0,p1;
	u3(1.1307359,-pi/2,-pi/2) p0;
	u3(2.7020586,-1.0004338,-2.6156292) p1;
	cx p0,p1;
	u3(0.66466341,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4055579,-2.9875424,-2.2272044) p0;
	u3(2.1639819,-2.5386643,1.3659444) p1;
}
gate su4_922 p0,p1 {
	u3(1.6871631,-1.6236366,0.31951088) p0;
	u3(0.77565089,1.0265667,-3.1050094) p1;
	cx p0,p1;
	u3(1.0759195,-pi/2,-pi/2) p0;
	u3(2.6968742,-1.0074055,-2.6233425) p1;
	cx p0,p1;
	u3(0.17900421,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2858582,-2.9920669,2.7466071) p0;
	u3(1.720991,2.3252242,1.7060973) p1;
}
gate su4_704 p0,p1 {
	u3(1.4836417,-0.48371137,-2.2091917) p0;
	u3(0.40703735,2.7795365,-2.9852422) p1;
	cx p0,p1;
	u3(1.1713962,-pi/2,-pi/2) p0;
	u3(2.5865484,-1.1196699,-2.7510248) p1;
	cx p0,p1;
	u3(0.70481493,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3750775,2.6167744,3.0616864) p0;
	u3(2.2760229,2.1978335,1.6830126) p1;
}
qreg q[3];
creg meas[3];
su4_78 q[2],q[0];
su4_922 q[1],q[2];
su4_704 q[1],q[0];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
