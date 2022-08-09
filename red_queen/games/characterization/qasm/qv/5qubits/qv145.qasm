OPENQASM 2.0;
include "qelib1.inc";
gate su4_313 p0,p1 {
	u3(2.3449696,0.98618642,2.6627756) p0;
	u3(2.5646526,1.0537618,-0.43675673) p1;
	cx p0,p1;
	u3(0.7113475,-pi/2,-pi/2) p0;
	u3(2.4054288,-1.2215665,-2.8780135) p1;
	cx p0,p1;
	u3(0.34838912,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2157012,2.8859257,-1.1625774) p0;
	u3(1.4360122,2.2063283,-2.3067652) p1;
}
gate su4_553 p0,p1 {
	u3(1.7043714,-2.355223,1.4590296) p0;
	u3(2.0895274,0.49216192,0.006562872) p1;
	cx p0,p1;
	u3(1.0210636,-pi/2,-pi/2) p0;
	u3(2.4773264,-1.1888964,-2.8353212) p1;
	cx p0,p1;
	u3(0.59735408,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2667097,-2.2996207,0.7276615) p0;
	u3(2.3648926,-0.0037655897,2.3070172) p1;
}
gate su4_225 p0,p1 {
	u3(1.591919,-1.5063222,1.232021) p0;
	u3(1.5751362,2.5749902,1.3167724) p1;
	cx p0,p1;
	u3(0.46567436,-pi/2,-pi/2) p0;
	u3(2.6162824,-1.0948853,-2.7221293) p1;
	cx p0,p1;
	u3(0.038948989,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5007903,0.65867847,1.5025222) p0;
	u3(2.1084252,1.8970219,-1.0554783) p1;
}
gate su4_719 p0,p1 {
	u3(2.7292972,1.6330558,2.8277937) p0;
	u3(0.67993142,-2.000217,-0.20057329) p1;
	cx p0,p1;
	u3(1.0837389,-pi/2,-pi/2) p0;
	u3(2.7560608,-0.91352309,-2.5208057) p1;
	cx p0,p1;
	u3(0.50422305,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5397583,-2.6953758,1.3356163) p0;
	u3(0.35529319,-0.40067758,2.0684754) p1;
}
gate su4_76 p0,p1 {
	u3(1.3275876,-0.6003866,-1.5887396) p0;
	u3(2.2565135,0.98607387,2.6440067) p1;
	cx p0,p1;
	u3(0.9543437,-pi/2,-pi/2) p0;
	u3(2.6174149,-1.0938757,-2.7209627) p1;
	cx p0,p1;
	u3(0.15088645,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3165817,-3.0818037,2.4489633) p0;
	u3(2.3886774,2.4015815,1.7719318) p1;
}
gate su4_182 p0,p1 {
	u3(1.2038832,-2.2194375,3.0457616) p0;
	u3(2.0577813,1.0025026,0.66326791) p1;
	cx p0,p1;
	u3(1.0184604,-pi/2,-pi/2) p0;
	u3(2.8132127,-0.77789807,-2.3761461) p1;
	cx p0,p1;
	u3(0.61528887,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0975379,1.7805271,-2.4768477) p0;
	u3(1.7083664,2.2246302,2.8593365) p1;
}
gate su4_860 p0,p1 {
	u3(1.5702587,1.7791859,2.5696049) p0;
	u3(0.62683977,-1.8452447,-2.2077348) p1;
	cx p0,p1;
	u3(1.1986117,-pi/2,-pi/2) p0;
	u3(2.7541987,-0.91704174,-2.5246045) p1;
	cx p0,p1;
	u3(0.34005196,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0689082,-2.9771167,-1.4557947) p0;
	u3(1.1448391,2.8170071,2.1774815) p1;
}
gate su4_524 p0,p1 {
	u3(1.9083351,0.46491643,2.1656892) p0;
	u3(1.6041866,-3.083128,0.19838484) p1;
	cx p0,p1;
	u3(0.54310122,-pi/2,-pi/2) p0;
	u3(2.6563941,-1.0556915,-2.6773497) p1;
	cx p0,p1;
	u3(0.010406449,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2011097,2.1099482,2.1494758) p0;
	u3(1.8976036,0.68785687,2.2831047) p1;
}
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
qreg q[5];
creg meas[5];
su4_313 q[0],q[3];
su4_553 q[2],q[4];
su4_225 q[2],q[0];
su4_719 q[2],q[1];
su4_76 q[4],q[3];
su4_182 q[0],q[4];
su4_860 q[2],q[0];
su4_524 q[0],q[2];
su4_541 q[3],q[1];
su4_857 q[1],q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
