OPENQASM 2.0;
include "qelib1.inc";
gate su4_360 p0,p1 {
	u3(1.0887798,0.28817783,2.2057304) p0;
	u3(0.51803414,2.6443994,0.20304798) p1;
	cx p0,p1;
	u3(0.78567384,-pi/2,-pi/2) p0;
	u3(2.7585755,-0.9086998,-2.515603) p1;
	cx p0,p1;
	u3(0.31234013,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6388726,-0.30994921,0.91571215) p0;
	u3(1.8567946,-1.6022846,2.6781129) p1;
}
gate su4_864 p0,p1 {
	u3(0.27811625,-0.44683108,0.033551731) p0;
	u3(1.9674495,-0.55040333,1.39862) p1;
	cx p0,p1;
	u3(1.0828809,-pi/2,-pi/2) p0;
	u3(2.6628333,-1.0486665,-2.6694215) p1;
	cx p0,p1;
	u3(0.59956953,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.88078354,-1.1338839,-1.3598399) p0;
	u3(1.0381368,2.6305529,0.7960634) p1;
}
gate su4_972 p0,p1 {
	u3(0.7221938,0.41517799,2.53472) p0;
	u3(1.6054217,-0.68550768,2.1057493) p1;
	cx p0,p1;
	u3(0.30422481,-pi/2,-pi/2) p0;
	u3(2.5146443,-1.168407,-2.8096739) p1;
	cx p0,p1;
	u3(0.055317439,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.16515367,2.04792,-1.4285473) p0;
	u3(1.5340006,-0.87293337,-2.0498131) p1;
}
gate su4_242 p0,p1 {
	u3(1.7213411,-1.5823195,2.1516415) p0;
	u3(0.92004134,1.3083432,-1.2381984) p1;
	cx p0,p1;
	u3(0.77504472,-pi/2,-pi/2) p0;
	u3(2.5244638,-1.1625304,-2.802443) p1;
	cx p0,p1;
	u3(0.431186,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7320279,-2.0090285,-3.0335427) p0;
	u3(3.0134045,-0.011761328,1.9313187) p1;
}
gate su4_579 p0,p1 {
	u3(2.1282605,0.61617285,1.3433469) p0;
	u3(2.6233406,0.21977957,2.6515778) p1;
	cx p0,p1;
	u3(0.32671627,-pi/2,-pi/2) p0;
	u3(2.2020326,-1.2822127,-2.9681564) p1;
	cx p0,p1;
	u3(0.059422349,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2203028,1.0441389,-0.38469255) p0;
	u3(2.8398151,-2.450498,0.23686316) p1;
}
gate su4_598 p0,p1 {
	u3(0.9392248,2.5405042,-1.2214311) p0;
	u3(0.95282826,0.34937997,0.49674) p1;
	cx p0,p1;
	u3(0.51539173,-pi/2,-pi/2) p0;
	u3(2.3206459,-1.2514357,-2.9199281) p1;
	cx p0,p1;
	u3(0.28801861,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6792312,-1.4764483,-3.1171257) p0;
	u3(1.0939402,-1.767263,1.9100908) p1;
}
gate su4_89 p0,p1 {
	u3(0.76664781,-1.6469275,-1.0160501) p0;
	u3(0.32332386,0.61568775,2.2188231) p1;
	cx p0,p1;
	u3(0.73254393,-pi/2,-pi/2) p0;
	u3(2.7934139,-0.83200605,-2.4335002) p1;
	cx p0,p1;
	u3(0.41641592,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.56145192,-2.3739623,-0.20714397) p0;
	u3(2.0507073,-2.179578,-0.10887794) p1;
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
gate su4_367 p0,p1 {
	u3(0.91897033,-3.1016918,-1.612364) p0;
	u3(0.96167933,0.54497465,-0.072972583) p1;
	cx p0,p1;
	u3(0.25356098,-pi/2,-pi/2) p0;
	u3(2.7279558,-0.96233336,-2.5737828) p1;
	cx p0,p1;
	u3(0.14188256,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9448756,0.44572283,2.4670526) p0;
	u3(2.457073,1.6794819,0.047074207) p1;
}
gate su4_648 p0,p1 {
	u3(2.9003679,-2.1942224,1.7007567) p0;
	u3(2.395336,-2.6936647,-0.42542906) p1;
	cx p0,p1;
	u3(0.56590344,-pi/2,-pi/2) p0;
	u3(2.7927758,-0.83360311,-2.4351994) p1;
	cx p0,p1;
	u3(0.45126868,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.91511543,0.038434259,-2.304942) p0;
	u3(1.7783489,1.7760605,-2.4557799) p1;
}
gate su4_169 p0,p1 {
	u3(1.8865192,-0.81129139,-1.711485) p0;
	u3(0.39848603,1.2337639,-1.5999052) p1;
	cx p0,p1;
	u3(0.84026773,-pi/2,-pi/2) p0;
	u3(2.792394,-0.83455491,-2.4362123) p1;
	cx p0,p1;
	u3(0.014665147,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.691126,2.2596243,-1.791124) p0;
	u3(0.65320955,1.817981,1.8644556) p1;
}
gate su4_909 p0,p1 {
	u3(2.8593258,-2.6732792,2.4933136) p0;
	u3(0.7505182,-3.1315724,-1.7027247) p1;
	cx p0,p1;
	u3(1.1408192,-pi/2,-pi/2) p0;
	u3(2.6661785,-1.0449266,-2.6652116) p1;
	cx p0,p1;
	u3(0.19611349,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1395112,1.6993156,-0.1779124) p0;
	u3(1.6502486,-1.1287599,-2.1863361) p1;
}
gate su4_197 p0,p1 {
	u3(2.4784722,-0.4478519,-0.44295122) p0;
	u3(1.1931966,-2.0017986,1.803864) p1;
	cx p0,p1;
	u3(0.92286936,-pi/2,-pi/2) p0;
	u3(2.7594582,-0.90698688,-2.5137566) p1;
	cx p0,p1;
	u3(0.12498971,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7237306,-2.6394987,0.71003439) p0;
	u3(1.998058,-2.4659149,-1.7527529) p1;
}
gate su4_135 p0,p1 {
	u3(0.46633196,-2.3188391,-2.7196068) p0;
	u3(0.38180989,-1.7234847,-0.19702545) p1;
	cx p0,p1;
	u3(1.0704431,-pi/2,-pi/2) p0;
	u3(2.4947278,-1.1796873,-2.8237043) p1;
	cx p0,p1;
	u3(0.16664615,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3159374,-2.824179,-0.23066256) p0;
	u3(2.1314026,2.9996693,-0.68050556) p1;
}
gate su4_57 p0,p1 {
	u3(2.0827941,-2.2863927,-0.11843126) p0;
	u3(2.5720912,-2.0238288,2.9341547) p1;
	cx p0,p1;
	u3(0.63246424,-pi/2,-pi/2) p0;
	u3(2.1830575,-1.2862196,-2.9750355) p1;
	cx p0,p1;
	u3(0.15680694,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3208926,0.77406083,2.737556) p0;
	u3(0.77817998,0.94517537,0.064533535) p1;
}
gate su4_406 p0,p1 {
	u3(2.5137226,1.0691729,-1.795855) p0;
	u3(1.900869,2.0014566,-0.86503717) p1;
	cx p0,p1;
	u3(0.99357776,-pi/2,-pi/2) p0;
	u3(2.7128403,-0.98526672,-2.5989115) p1;
	cx p0,p1;
	u3(0.048695841,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.64281018,-1.1436626,2.8594809) p0;
	u3(1.9975809,0.096773303,-1.0164861) p1;
}
gate su4_373 p0,p1 {
	u3(2.4152098,-1.4518661,0.27553614) p0;
	u3(1.6031514,1.1882665,0.071031111) p1;
	cx p0,p1;
	u3(0.65075691,-pi/2,-pi/2) p0;
	u3(2.5920917,-1.1152877,-2.7458775) p1;
	cx p0,p1;
	u3(0.25218047,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.58216686,-0.83832445,-0.17087614) p0;
	u3(1.9957302,0.40402701,2.8277709) p1;
}
gate su4_664 p0,p1 {
	u3(2.1927789,-1.4561563,1.0275391) p0;
	u3(2.4731943,0.58304069,-2.0113327) p1;
	cx p0,p1;
	u3(0.72829692,-pi/2,-pi/2) p0;
	u3(2.6701793,-1.0403701,-2.660092) p1;
	cx p0,p1;
	u3(0.49488102,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5651449,2.983573,-0.0042555756) p0;
	u3(1.84395,-0.27832233,2.0514325) p1;
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
gate su4_740 p0,p1 {
	u3(1.9835043,1.1195863,-0.90655644) p0;
	u3(2.3498957,1.301553,0.26708706) p1;
	cx p0,p1;
	u3(0.65481698,-pi/2,-pi/2) p0;
	u3(2.4574793,-1.1987301,-2.8479082) p1;
	cx p0,p1;
	u3(0.007744836,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.61281864,-1.0948662,-2.8521014) p0;
	u3(1.2040183,-0.71110556,0.98282153) p1;
}
gate su4_843 p0,p1 {
	u3(0.84921398,-0.38974291,-0.41744652) p0;
	u3(0.69413917,-0.32485472,0.0680327) p1;
	cx p0,p1;
	u3(0.47282235,-pi/2,-pi/2) p0;
	u3(2.7974395,-0.82173453,-2.422581) p1;
	cx p0,p1;
	u3(0.10349607,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4078569,2.6179097,2.7818547) p0;
	u3(1.9363044,0.49235639,0.79684081) p1;
}
qreg q[7];
creg meas[7];
su4_360 q[2],q[3];
su4_864 q[0],q[4];
su4_972 q[5],q[1];
su4_242 q[3],q[1];
su4_579 q[5],q[0];
su4_598 q[0],q[3];
su4_89 q[5],q[2];
su4_149 q[2],q[1];
su4_367 q[0],q[1];
su4_648 q[4],q[6];
su4_169 q[6],q[4];
su4_909 q[4],q[5];
su4_197 q[1],q[5];
su4_135 q[0],q[1];
su4_57 q[2],q[4];
su4_406 q[6],q[3];
su4_373 q[3],q[6];
su4_664 q[3],q[4];
su4_902 q[5],q[4];
su4_740 q[6],q[2];
su4_843 q[6],q[3];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
