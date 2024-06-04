OPENQASM 2.0;
include "qelib1.inc";
gate su4_646 p0,p1 {
	u3(1.6798185,-3.056952,1.4236426) p0;
	u3(1.1463993,-1.9162865,0.9764053) p1;
	cx p0,p1;
	u3(0.51327511,-pi/2,-pi/2) p0;
	u3(2.6117761,-1.0988523,-2.7267205) p1;
	cx p0,p1;
	u3(0.082110153,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5981621,-1.2574914,2.1527283) p0;
	u3(2.4141141,3.0662439,-0.33348447) p1;
}
gate su4_466 p0,p1 {
	u3(0.85638276,-1.3630864,0.62157326) p0;
	u3(1.6247496,0.73299982,-1.356144) p1;
	cx p0,p1;
	u3(0.85533386,-pi/2,-pi/2) p0;
	u3(2.460577,-1.1972397,-2.8459876) p1;
	cx p0,p1;
	u3(0.55270337,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0768184,1.9908879,1.5448478) p0;
	u3(1.8677123,-0.33573522,-1.2438651) p1;
}
gate su4_601 p0,p1 {
	u3(2.4355311,-0.45737476,-1.5342926) p0;
	u3(1.4786522,-1.2278612,2.1043628) p1;
	cx p0,p1;
	u3(0.6403422,-pi/2,-pi/2) p0;
	u3(2.6273755,-1.0847693,-2.7104742) p1;
	cx p0,p1;
	u3(0.21080209,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7489328,1.8478173,2.5867353) p0;
	u3(1.7128323,-1.4956566,2.6318505) p1;
}
gate su4_307 p0,p1 {
	u3(1.4685757,1.1514058,0.54992159) p0;
	u3(0.91532611,1.4752498,1.5144027) p1;
	cx p0,p1;
	u3(1.2110185,-pi/2,-pi/2) p0;
	u3(2.6373775,-1.0751954,-2.6995093) p1;
	cx p0,p1;
	u3(0.52803714,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.44891312,-1.0368924,-1.8270465) p0;
	u3(0.80317045,0.28772976,1.1397108) p1;
}
gate su4_532 p0,p1 {
	u3(1.3393486,-0.16025021,0.73447515) p0;
	u3(2.8340586,-1.9545525,-2.7040897) p1;
	cx p0,p1;
	u3(1.2622376,-pi/2,-pi/2) p0;
	u3(2.7309749,-0.95749738,-2.5685049) p1;
	cx p0,p1;
	u3(0.46303219,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4351103,-1.9593673,-0.14394118) p0;
	u3(0.20615113,1.6272125,0.20742032) p1;
}
gate su4_937 p0,p1 {
	u3(2.6148058,-0.016064247,1.0245472) p0;
	u3(1.0807236,1.7326771,2.7333456) p1;
	cx p0,p1;
	u3(0.70035052,-pi/2,-pi/2) p0;
	u3(2.6677,-1.0432047,-2.6632757) p1;
	cx p0,p1;
	u3(0.23315292,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1522156,-1.335877,2.7545334) p0;
	u3(2.1488845,-2.5274635,-1.7592186) p1;
}
gate su4_149 p0,p1 {
	u3(2.6358765,-1.240261,-2.8743619) p0;
	u3(1.0095867,-2.7574416,-0.60189035) p1;
	cx p0,p1;
	u3(1.3702186,-pi/2,-pi/2) p0;
	u3(2.7356119,-0.94989211,-2.5602185) p1;
	cx p0,p1;
	u3(0.27322892,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3976012,0.78623207,1.4175491) p0;
	u3(0.21723831,2.2759067,1.6419863) p1;
}
gate su4_82 p0,p1 {
	u3(2.4245365,-1.3582065,-1.181767) p0;
	u3(2.4066075,-1.0341734,0.48746215) p1;
	cx p0,p1;
	u3(0.60542372,-pi/2,-pi/2) p0;
	u3(2.7915286,-0.83670125,-2.4384968) p1;
	cx p0,p1;
	u3(0.25122785,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0039962,1.0518029,-1.718488) p0;
	u3(1.8341934,0.90878468,-2.1594453) p1;
}
gate su4_354 p0,p1 {
	u3(0.62707765,-0.87665597,-1.4236689) p0;
	u3(1.9472721,-2.2936867,2.8302099) p1;
	cx p0,p1;
	u3(0.88928919,-pi/2,-pi/2) p0;
	u3(2.6056986,-1.1040782,-2.7327875) p1;
	cx p0,p1;
	u3(0.45182442,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0137502,-0.77631785,2.2103753) p0;
	u3(1.4766767,1.3595864,2.084148) p1;
}
qreg q[5];
creg meas[5];
su4_646 q[1],q[0];
su4_466 q[2],q[3];
su4_601 q[0],q[2];
su4_307 q[1],q[3];
su4_532 q[1],q[0];
su4_646 q[4],q[3];
su4_937 q[3],q[0];
su4_149 q[4],q[2];
su4_82 q[2],q[1];
su4_354 q[4],q[3];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
