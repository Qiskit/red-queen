OPENQASM 2.0;
include "qelib1.inc";
gate su4_857 p0,p1 {
	u3(1.6251092,1.2403534,-2.0537093) p0;
	u3(1.6151394,0.87761813,-0.77470471) p1;
	cx p0,p1;
	u3(1.0090366,-pi/2,-pi/2) p0;
	u3(2.6319299,-1.080465,-2.705537) p1;
	cx p0,p1;
	u3(0.31310781,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4740765,-0.40049576,2.7966295) p0;
	u3(0.79210488,-2.2536506,-1.0486597) p1;
}
gate su4_992 p0,p1 {
	u3(2.8586218,0.13930175,1.9532078) p0;
	u3(1.9688443,-1.0284171,1.0939708) p1;
	cx p0,p1;
	u3(0.54730914,-pi/2,-pi/2) p0;
	u3(2.5275049,-1.1606658,-2.800159) p1;
	cx p0,p1;
	u3(0.11754104,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2867917,1.054865,-1.6906128) p0;
	u3(0.44904033,-1.2705596,0.38806273) p1;
}
gate su4_902 p0,p1 {
	u3(2.0103869,0.45619027,-0.39933586) p0;
	u3(1.031623,2.4605144,-2.5299886) p1;
	cx p0,p1;
	u3(0.72414886,-pi/2,-pi/2) p0;
	u3(2.7765017,-0.87172924,-2.4758884) p1;
	cx p0,p1;
	u3(0.49141845,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6985111,-2.1566772,-0.97118256) p0;
	u3(0.78983375,-2.6350959,-2.6688747) p1;
}
qreg q[3];
creg meas[3];
su4_857 q[2],q[0];
su4_992 q[1],q[0];
su4_902 q[2],q[0];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
