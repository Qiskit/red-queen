OPENQASM 2.0;
include "qelib1.inc";
gate su4_712 p0,p1 {
	u3(2.8356186,-1.5129597,-1.6092578) p0;
	u3(1.7876227,1.2953539,2.1965539) p1;
	cx p0,p1;
	u3(0.73580586,-pi/2,-pi/2) p0;
	u3(2.6820194,-1.0263223,-2.6443719) p1;
	cx p0,p1;
	u3(0.35481988,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0163161,0.13878043,2.3240439) p0;
	u3(2.3300301,-0.61990665,2.4655443) p1;
}
gate su4_433 p0,p1 {
	u3(2.2536419,-1.0370039,-2.4835727) p0;
	u3(0.28869759,1.786919,-2.4994553) p1;
	cx p0,p1;
	u3(0.65473403,-pi/2,-pi/2) p0;
	u3(2.6989404,-1.004651,-2.6202928) p1;
	cx p0,p1;
	u3(0.10027698,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8447717,-2.1635184,-0.89335521) p0;
	u3(2.013823,1.71034,-0.8670258) p1;
}
gate su4_275 p0,p1 {
	u3(0.25866863,0.010590732,2.6068114) p0;
	u3(3.0621184,-2.3597552,-1.4790927) p1;
	cx p0,p1;
	u3(0.82286746,-pi/2,-pi/2) p0;
	u3(2.7840498,-0.85464461,-2.4576247) p1;
	cx p0,p1;
	u3(0.16834581,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4592284,-0.82171192,2.0796661) p0;
	u3(0.66420846,-1.6479783,-1.4957656) p1;
}
qreg q[3];
creg meas[3];
su4_712 q[1],q[0];
su4_433 q[0],q[1];
su4_275 q[2],q[1];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
