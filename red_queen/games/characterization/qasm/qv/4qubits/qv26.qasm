OPENQASM 2.0;
include "qelib1.inc";
gate su4_541 p0,p1 {
	u3(2.7514747,0.32334392,-2.0436208) p0;
	u3(2.0063298,-0.61557022,1.1664897) p1;
	cx p0,p1;
	u3(1.0339345,-pi/2,-pi/2) p0;
	u3(2.7859933,-0.85008307,-2.452757) p1;
	cx p0,p1;
	u3(0.25292092,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4284732,-0.35637425,-0.58609659) p0;
	u3(0.5956813,1.2134343,-1.3356849) p1;
}
gate su4_450 p0,p1 {
	u3(1.5994326,1.2298498,1.8756958) p0;
	u3(2.0350365,2.4572746,0.64736985) p1;
	cx p0,p1;
	u3(0.77289421,-pi/2,-pi/2) p0;
	u3(2.4790343,-1.1880177,-2.834206) p1;
	cx p0,p1;
	u3(0.28009863,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4290169,-1.5288599,-2.5851224) p0;
	u3(1.8484386,0.38909425,-1.9885581) p1;
}
gate su4_58 p0,p1 {
	u3(0.78094762,-1.2116097,-0.89866226) p0;
	u3(1.8510425,-1.1191713,-1.3781386) p1;
	cx p0,p1;
	u3(0.83325246,-pi/2,-pi/2) p0;
	u3(2.7339787,-0.95259589,-2.5631625) p1;
	cx p0,p1;
	u3(0.37690172,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0100434,-1.7203149,1.2698455) p0;
	u3(2.4122009,-0.8665467,0.4690261) p1;
}
gate su4_226 p0,p1 {
	u3(1.6409556,-1.8019933,1.7191579) p0;
	u3(1.5409262,2.9211352,0.79475655) p1;
	cx p0,p1;
	u3(0.71941565,-pi/2,-pi/2) p0;
	u3(2.7754457,-0.87404273,-2.4783657) p1;
	cx p0,p1;
	u3(0.26250552,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0019654,1.0210589,-0.8246055) p0;
	u3(2.3516495,-1.7008136,2.7947306) p1;
}
gate su4_381 p0,p1 {
	u3(2.2624108,-1.1562919,1.9264455) p0;
	u3(1.7424731,-3.0427529,-1.1483962) p1;
	cx p0,p1;
	u3(0.82841077,-pi/2,-pi/2) p0;
	u3(2.5430178,-1.1508082,-2.7881635) p1;
	cx p0,p1;
	u3(0.02186548,1.1546319e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7913217,-2.9761377,-2.7116741) p0;
	u3(1.0351378,-1.1215951,1.4007638) p1;
}
gate su4_913 p0,p1 {
	u3(0.42503972,0.21484145,2.5438663) p0;
	u3(2.2746283,-2.3312599,0.4553391) p1;
	cx p0,p1;
	u3(1.02957,-pi/2,-pi/2) p0;
	u3(2.6504825,-1.0619475,-2.684433) p1;
	cx p0,p1;
	u3(0.22845413,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5237494,2.8385297,1.391255) p0;
	u3(0.78784603,-2.7451697,2.439441) p1;
}
gate su4_486 p0,p1 {
	u3(1.712343,1.8171932,-1.2974407) p0;
	u3(2.1128895,2.0330182,2.4896659) p1;
	cx p0,p1;
	u3(0.43997296,-pi/2,-pi/2) p0;
	u3(2.1373269,-1.2950201,-2.9908634) p1;
	cx p0,p1;
	u3(0.097471684,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2978802,-0.15849003,-0.34678092) p0;
	u3(0.95242535,-2.6085177,-1.6904109) p1;
}
gate su4_493 p0,p1 {
	u3(1.0072848,2.0021425,-2.8360725) p0;
	u3(2.0124726,1.8757759,0.66669846) p1;
	cx p0,p1;
	u3(0.4811261,-pi/2,-pi/2) p0;
	u3(2.7834826,-0.85596302,-2.4590323) p1;
	cx p0,p1;
	u3(0.34222751,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8668366,1.9299669,2.1294627) p0;
	u3(1.9493188,-1.8233134,2.7320508) p1;
}
qreg q[4];
creg meas[4];
su4_541 q[2],q[1];
su4_450 q[0],q[3];
su4_58 q[0],q[2];
su4_226 q[0],q[2];
su4_381 q[0],q[2];
su4_913 q[3],q[1];
su4_486 q[3],q[1];
su4_493 q[1],q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
