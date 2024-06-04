OPENQASM 2.0;
include "qelib1.inc";
gate su4_36 p0,p1 {
	u3(2.6822313,-1.4594334,-1.5510486) p0;
	u3(1.6436735,-0.73102781,-0.64245876) p1;
	cx p0,p1;
	u3(1.0461834,-pi/2,-pi/2) p0;
	u3(2.6094722,-1.10085,-2.7290371) p1;
	cx p0,p1;
	u3(0.31531255,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2028512,-2.5511652,-2.321131) p0;
	u3(1.0916257,-0.52949153,-1.005326) p1;
}
gate su4_476 p0,p1 {
	u3(2.1122308,-0.042623244,0.61277682) p0;
	u3(1.0149664,-0.41416372,2.3486189) p1;
	cx p0,p1;
	u3(0.66043554,-pi/2,-pi/2) p0;
	u3(2.4558833,-1.1994917,-2.8488917) p1;
	cx p0,p1;
	u3(0.23993432,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.43567682,-2.4999527,0.42525178) p0;
	u3(0.53300012,-2.1070891,-0.61366677) p1;
}
gate su4_334 p0,p1 {
	u3(1.9653228,-1.7108107,0.71861269) p0;
	u3(1.1498159,-2.5884416,-1.8959035) p1;
	cx p0,p1;
	u3(0.69888838,-pi/2,-pi/2) p0;
	u3(2.465223,-1.1949742,-2.8430771) p1;
	cx p0,p1;
	u3(0.024611337,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5477303,1.508442,-0.72625591) p0;
	u3(1.4522443,0.62881305,-0.8750368) p1;
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
gate su4_137 p0,p1 {
	u3(2.0936151,2.5997011,1.8458025) p0;
	u3(2.3140877,-0.29788762,1.8921226) p1;
	cx p0,p1;
	u3(1.1168291,-pi/2,-pi/2) p0;
	u3(2.4332061,-1.2098765,-2.8624347) p1;
	cx p0,p1;
	u3(0.70327794,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2122732,-0.67909163,0.079312626) p0;
	u3(1.6152398,-2.827271,0.4614006) p1;
}
gate su4_119 p0,p1 {
	u3(0.34516798,2.0268293,0.62302652) p0;
	u3(1.5359163,2.1087952,-0.17321507) p1;
	cx p0,p1;
	u3(0.76971681,-pi/2,-pi/2) p0;
	u3(2.7750743,-0.87485224,-2.4792327) p1;
	cx p0,p1;
	u3(0.34030598,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.8290621,-2.3708505,0.18063571) p0;
	u3(1.1700714,-0.56943532,1.4458285) p1;
}
gate su4_8 p0,p1 {
	u3(0.99029692,2.1806829,-0.945008) p0;
	u3(2.3887015,-0.85474684,1.6763632) p1;
	cx p0,p1;
	u3(0.80681945,-pi/2,-pi/2) p0;
	u3(2.3688561,-1.2354322,-2.8970393) p1;
	cx p0,p1;
	u3(0.27421822,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7208844,-2.2666591,-0.98107423) p0;
	u3(2.3817867,-2.5737045,-2.7719743) p1;
}
gate su4_755 p0,p1 {
	u3(0.15088871,-2.098621,0.18946066) p0;
	u3(1.7022598,-0.26824824,2.8017788) p1;
	cx p0,p1;
	u3(0.10591448,-pi/2,-pi/2) p0;
	u3(2.5829172,-1.1224852,-2.7543413) p1;
	cx p0,p1;
	u3(0.018282448,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.91162182,-2.3134387,-0.79925072) p0;
	u3(1.2356759,-1.346034,0.10330612) p1;
}
qreg q[4];
creg meas[4];
su4_36 q[1],q[0];
su4_476 q[0],q[1];
su4_334 q[2],q[3];
su4_486 q[3],q[2];
su4_137 q[0],q[2];
su4_119 q[3],q[1];
su4_8 q[0],q[1];
su4_755 q[3],q[2];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
