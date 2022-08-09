OPENQASM 2.0;
include "qelib1.inc";
gate su4_782 p0,p1 {
	u3(2.2136658,2.3685993,1.194346) p0;
	u3(2.38255,-2.6493224,-1.9827023) p1;
	cx p0,p1;
	u3(1.0362299,-pi/2,-pi/2) p0;
	u3(2.6325954,-1.0798285,-2.7048079) p1;
	cx p0,p1;
	u3(0.092551085,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.99555164,1.1191428,-0.57883534) p0;
	u3(1.8340862,-2.7082271,-2.3136966) p1;
}
gate su4_846 p0,p1 {
	u3(0.071823309,2.4211557,-1.4604674) p0;
	u3(1.7502673,-2.8043759,-0.066841876) p1;
	cx p0,p1;
	u3(0.67510735,-pi/2,-pi/2) p0;
	u3(2.6259846,-1.0860659,-2.711964) p1;
	cx p0,p1;
	u3(0.41452737,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.080004,1.5818734,-2.3324275) p0;
	u3(1.3257114,0.39208556,-0.80198943) p1;
}
gate su4_985 p0,p1 {
	u3(2.5435891,1.3397942,1.1048003) p0;
	u3(1.3283915,0.027882723,-0.3804316) p1;
	cx p0,p1;
	u3(0.73242216,-pi/2,-pi/2) p0;
	u3(2.6082426,-1.1019078,-2.7302651) p1;
	cx p0,p1;
	u3(0.278894,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9681299,-1.2006904,0.18756424) p0;
	u3(2.2642985,2.6679345,1.0961425) p1;
}
gate su4_673 p0,p1 {
	u3(2.8997825,3.0028427,0.32728778) p0;
	u3(1.2612905,-0.87787765,-2.521271) p1;
	cx p0,p1;
	u3(0.82006025,-pi/2,-pi/2) p0;
	u3(2.6572595,-1.0547604,-2.6762974) p1;
	cx p0,p1;
	u3(0.1522974,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4542674,1.6332903,-0.76448731) p0;
	u3(2.3026742,0.72334622,-2.7832489) p1;
}
gate su4_603 p0,p1 {
	u3(2.2873272,1.3358368,-3.0361161) p0;
	u3(1.318445,2.9627739,1.4801587) p1;
	cx p0,p1;
	u3(0.61163706,-pi/2,-pi/2) p0;
	u3(2.6863786,-1.0209268,-2.6383582) p1;
	cx p0,p1;
	u3(0.16607367,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.98981376,1.7962469,2.9561882) p0;
	u3(1.2817777,-2.5286834,3.0563785) p1;
}
gate su4_250 p0,p1 {
	u3(1.9420839,-0.38383379,-0.91904061) p0;
	u3(0.64166826,-2.8229221,0.065038742) p1;
	cx p0,p1;
	u3(0.8323111,-pi/2,-pi/2) p0;
	u3(2.8143593,-0.77446376,-2.3725186) p1;
	cx p0,p1;
	u3(0.2770292,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4412405,0.63030443,-2.6587688) p0;
	u3(0.95301206,-1.2354727,0.37751739) p1;
}
gate su4_508 p0,p1 {
	u3(2.4502703,-0.55349773,0.072642294) p0;
	u3(2.0246792,-3.1080334,-2.325481) p1;
	cx p0,p1;
	u3(1.0464188,-pi/2,-pi/2) p0;
	u3(2.7280953,-0.96211183,-2.5735409) p1;
	cx p0,p1;
	u3(0.12810704,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6337337,2.7014011,0.4841745) p0;
	u3(1.1539957,3.0046167,-0.24423219) p1;
}
gate su4_610 p0,p1 {
	u3(2.4832237,-2.6830711,2.9558389) p0;
	u3(1.2655011,-1.7518797,-0.9721079) p1;
	cx p0,p1;
	u3(1.219705,-pi/2,-pi/2) p0;
	u3(2.6769351,-1.0324606,-2.6512295) p1;
	cx p0,p1;
	u3(0.4531331,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2541777,-0.41295053,2.2958915) p0;
	u3(0.86520319,1.3041256,-0.26750052) p1;
}
gate su4_193 p0,p1 {
	u3(2.1241925,-1.4618545,2.9739977) p0;
	u3(0.80103144,-2.3017986,0.96296389) p1;
	cx p0,p1;
	u3(1.1100527,-pi/2,-pi/2) p0;
	u3(2.7625,-0.90100358,-2.5073121) p1;
	cx p0,p1;
	u3(0.20556501,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5034222,2.9155623,2.1671225) p0;
	u3(2.1519105,-1.3112567,-2.9959886) p1;
}
gate su4_536 p0,p1 {
	u3(1.9299293,-2.1035813,-0.41465763) p0;
	u3(2.5749156,2.7445421,-2.611626) p1;
	cx p0,p1;
	u3(0.39449693,-pi/2,-pi/2) p0;
	u3(2.5416556,-1.1516977,-2.7892407) p1;
	cx p0,p1;
	u3(0.1714878,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.87412125,2.3573356,1.5552292) p0;
	u3(1.7219385,-2.6991537,-1.033126) p1;
}
qreg q[5];
creg meas[5];
su4_782 q[2],q[1];
su4_846 q[3],q[2];
su4_985 q[4],q[0];
su4_673 q[0],q[1];
su4_603 q[0],q[1];
su4_250 q[0],q[3];
su4_508 q[2],q[4];
su4_610 q[1],q[2];
su4_193 q[2],q[0];
su4_536 q[3],q[1];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
