OPENQASM 2.0;
include "qelib1.inc";
gate su4_657 p0,p1 {
	u3(2.62982,1.4905631,0.79952701) p0;
	u3(0.47184083,1.7557794,-0.13128052) p1;
	cx p0,p1;
	u3(0.75255083,-pi/2,-pi/2) p0;
	u3(2.7610857,-0.9038013,-2.5103245) p1;
	cx p0,p1;
	u3(0.25657081,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7671561,-0.63686505,-0.53429071) p0;
	u3(2.8883477,-2.989806,2.5001831) p1;
}
gate su4_861 p0,p1 {
	u3(1.9486465,1.6742685,2.424327) p0;
	u3(1.6501122,-2.877584,1.4237123) p1;
	cx p0,p1;
	u3(1.0258962,-pi/2,-pi/2) p0;
	u3(2.7211605,-0.97289871,-2.5853385) p1;
	cx p0,p1;
	u3(0.12185431,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1350573,-2.7055135,3.0847386) p0;
	u3(2.1053888,0.027964413,1.9907163) p1;
}
gate su4_178 p0,p1 {
	u3(2.0443715,1.6636615,2.9909948) p0;
	u3(0.66097018,0.86462612,1.6536346) p1;
	cx p0,p1;
	u3(1.0332564,-pi/2,-pi/2) p0;
	u3(2.6372239,-1.0753458,-2.6996811) p1;
	cx p0,p1;
	u3(0.19847346,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.46015774,-1.9112501,2.9305497) p0;
	u3(0.90258395,-0.42278099,1.4821408) p1;
}
gate su4_537 p0,p1 {
	u3(1.2818776,1.0890386,0.29198086) p0;
	u3(1.0119681,0.90265079,-0.51355934) p1;
	cx p0,p1;
	u3(0.76352933,-pi/2,-pi/2) p0;
	u3(2.668012,-1.0428499,-2.662877) p1;
	cx p0,p1;
	u3(0.089905288,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.710143,1.8665088,-2.0258783) p0;
	u3(2.4594592,-3.031899,-0.57366042) p1;
}
gate su4_111 p0,p1 {
	u3(1.3358154,-2.5377262,1.8446149) p0;
	u3(2.2859992,-2.8274307,3.022313) p1;
	cx p0,p1;
	u3(0.80228456,-pi/2,-pi/2) p0;
	u3(2.4328339,-1.2100404,-2.8626506) p1;
	cx p0,p1;
	u3(0.1776362,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.53483602,-2.609175,-1.3874272) p0;
	u3(0.43307736,0.9151081,-1.1104011) p1;
}
gate su4_301 p0,p1 {
	u3(0.87733022,2.0987679,1.3478683) p0;
	u3(1.776102,0.47302003,-0.73042268) p1;
	cx p0,p1;
	u3(0.46325795,-pi/2,-pi/2) p0;
	u3(2.7542505,-0.91694449,-2.5244995) p1;
	cx p0,p1;
	u3(0.26860008,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.342209,-3.1120538,-0.51190362) p0;
	u3(0.75192858,-1.5187016,3.1068275) p1;
}
gate su4_179 p0,p1 {
	u3(2.1757214,-2.6442419,0.67619111) p0;
	u3(2.284415,1.1139475,-1.4016545) p1;
	cx p0,p1;
	u3(0.95268527,-pi/2,-pi/2) p0;
	u3(2.6215091,-1.0901825,-2.7167017) p1;
	cx p0,p1;
	u3(0.22201932,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.658244,-1.71611,-2.8715821) p0;
	u3(1.7215498,0.89044522,0.64860439) p1;
}
qreg q[4];
creg meas[4];
su4_657 q[0],q[2];
su4_861 q[0],q[2];
su4_178 q[1],q[3];
su4_537 q[1],q[3];
su4_111 q[0],q[1];
su4_301 q[2],q[3];
su4_178 q[1],q[2];
su4_179 q[3],q[0];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
