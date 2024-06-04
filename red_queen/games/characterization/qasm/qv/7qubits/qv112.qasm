OPENQASM 2.0;
include "qelib1.inc";
gate su4_125 p0,p1 {
	u3(1.0436839,-2.8483113,-1.9282092) p0;
	u3(1.4021629,-1.7523216,2.9115215) p1;
	cx p0,p1;
	u3(0.85859503,-pi/2,-pi/2) p0;
	u3(2.4381823,-1.2076656,-2.8595296) p1;
	cx p0,p1;
	u3(0.0590261,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.41093358,2.0736959,0.16446876) p0;
	u3(1.5740551,-0.13095174,2.8496707) p1;
}
gate su4_835 p0,p1 {
	u3(1.8551584,3.0153235,0.18799482) p0;
	u3(0.80680186,-0.72139818,1.1405828) p1;
	cx p0,p1;
	u3(0.53246809,-pi/2,-pi/2) p0;
	u3(2.645035,-1.0675554,-2.6908019) p1;
	cx p0,p1;
	u3(0.13390964,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.67101079,1.8064838,-0.93803762) p0;
	u3(0.55200261,2.1084782,-0.74937952) p1;
}
gate su4_596 p0,p1 {
	u3(1.4781772,-1.7257258,-2.1143171) p0;
	u3(0.49907722,3.0548884,1.6410906) p1;
	cx p0,p1;
	u3(1.1209341,-pi/2,-pi/2) p0;
	u3(2.6728394,-1.0372885,-2.6566355) p1;
	cx p0,p1;
	u3(0.092524003,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3612428,2.7200735,-2.7476609) p0;
	u3(2.1125097,0.13311378,-0.92383415) p1;
}
gate su4_767 p0,p1 {
	u3(1.527003,1.2124158,-2.0552436) p0;
	u3(2.0555265,-1.4563258,2.644018) p1;
	cx p0,p1;
	u3(0.95163443,-pi/2,-pi/2) p0;
	u3(2.5486315,-1.147092,-2.7836738) p1;
	cx p0,p1;
	u3(0.44158621,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5274709,2.613431,-2.7190335) p0;
	u3(2.0284408,-1.7822515,-2.0237639) p1;
}
gate su4_289 p0,p1 {
	u3(1.018242,-0.22204919,-3.1295549) p0;
	u3(1.8292211,-0.0048318753,-2.1649956) p1;
	cx p0,p1;
	u3(0.82175871,-pi/2,-pi/2) p0;
	u3(2.7730574,-0.87920879,-2.483901) p1;
	cx p0,p1;
	u3(0.010182737,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.40535716,-0.7096494,-3.0494932) p0;
	u3(2.66544,-0.81228425,-1.3522362) p1;
}
gate su4_588 p0,p1 {
	u3(1.6294632,0.16213817,1.8201035) p0;
	u3(2.9172381,-0.1566296,1.402701) p1;
	cx p0,p1;
	u3(0.77470987,-pi/2,-pi/2) p0;
	u3(2.7319684,-0.95588645,-2.5667483) p1;
	cx p0,p1;
	u3(0.091479728,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5599992,1.4432249,0.75511257) p0;
	u3(1.5382523,3.0760608,-2.5456232) p1;
}
gate su4_947 p0,p1 {
	u3(1.1538971,3.0778591,0.33541263) p0;
	u3(1.3151379,-0.80163686,1.5670658) p1;
	cx p0,p1;
	u3(0.60818975,-pi/2,-pi/2) p0;
	u3(2.4440321,-1.2050187,-2.8560675) p1;
	cx p0,p1;
	u3(0.12831233,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.51300979,0.85463832,-1.6673919) p0;
	u3(0.3153141,-2.9412902,-1.2588394) p1;
}
gate su4_81 p0,p1 {
	u3(0.1556896,2.7463424,-3.0660891) p0;
	u3(1.7972923,-1.4432852,1.7383638) p1;
	cx p0,p1;
	u3(1.2676662,-pi/2,-pi/2) p0;
	u3(2.7626408,-0.90072369,-2.5070108) p1;
	cx p0,p1;
	u3(0.10523416,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4571452,0.97166622,-2.7002999) p0;
	u3(1.264723,-2.1928383,1.0511498) p1;
}
gate su4_43 p0,p1 {
	u3(2.1109885,-3.0720723,0.69206574) p0;
	u3(2.0222945,-1.0926885,0.13715682) p1;
	cx p0,p1;
	u3(1.1065036,-pi/2,-pi/2) p0;
	u3(2.5316371,-1.1580973,-2.7970209) p1;
	cx p0,p1;
	u3(0.18970283,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3243776,2.2259799,-1.546986) p0;
	u3(2.7400334,-2.6744912,0.85004952) p1;
}
gate su4_412 p0,p1 {
	u3(0.95960557,2.7031638,0.28228906) p0;
	u3(2.4748926,2.0555114,0.4918664) p1;
	cx p0,p1;
	u3(0.63324522,-pi/2,-pi/2) p0;
	u3(2.5456136,-1.1490999,-2.7860976) p1;
	cx p0,p1;
	u3(0.22833642,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0249097,2.1005359,-1.2202701) p0;
	u3(2.5635918,-0.96985935,-2.6790163) p1;
}
gate su4_688 p0,p1 {
	u3(1.4340891,0.18812249,-0.81085682) p0;
	u3(1.2936297,-1.8948841,-1.2651013) p1;
	cx p0,p1;
	u3(0.36188628,-pi/2,-pi/2) p0;
	u3(2.604887,-1.1047657,-2.7335872) p1;
	cx p0,p1;
	u3(0.067888133,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8376756,1.7030164,-1.7473948) p0;
	u3(0.94593314,2.7877291,2.8940596) p1;
}
gate su4_444 p0,p1 {
	u3(1.3853101,-2.3089489,-1.4306662) p0;
	u3(0.93738954,1.2367175,-0.10662431) p1;
	cx p0,p1;
	u3(0.41696989,-pi/2,-pi/2) p0;
	u3(2.6548716,-1.05732,-2.6791915) p1;
	cx p0,p1;
	u3(0.21248233,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6750409,-2.8841427,1.9682578) p0;
	u3(1.7468159,1.9423046,-0.33541134) p1;
}
gate su4_973 p0,p1 {
	u3(1.0677752,-1.5506581,-2.4918659) p0;
	u3(2.1929884,-1.2011068,1.1765664) p1;
	cx p0,p1;
	u3(0.56611618,-pi/2,-pi/2) p0;
	u3(2.6949725,-1.009913,-2.6261215) p1;
	cx p0,p1;
	u3(0.40902917,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3586117,2.9729825,2.979807) p0;
	u3(2.212636,1.0495997,-1.5347096) p1;
}
gate su4_790 p0,p1 {
	u3(1.1594566,2.6556077,-0.61892546) p0;
	u3(1.7688953,-0.9948847,2.5978156) p1;
	cx p0,p1;
	u3(0.33937384,-pi/2,-pi/2) p0;
	u3(2.2127651,-1.279847,-2.964177) p1;
	cx p0,p1;
	u3(0.019861337,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.625233,-1.8221089,2.4396841) p0;
	u3(1.8430758,-0.070378846,2.2125407) p1;
}
gate su4_910 p0,p1 {
	u3(1.6785196,-1.1809912,-0.7501192) p0;
	u3(2.317541,0.56830689,2.5880356) p1;
	cx p0,p1;
	u3(1.1600268,-pi/2,-pi/2) p0;
	u3(2.6835154,-1.0244848,-2.6423224) p1;
	cx p0,p1;
	u3(0.11830777,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.75126289,0.21176787,2.5273541) p0;
	u3(2.3103018,0.47650975,2.6936286) p1;
}
gate su4_506 p0,p1 {
	u3(1.7162383,-0.68313959,-2.5762175) p0;
	u3(2.0946128,-1.6363845,-1.5813963) p1;
	cx p0,p1;
	u3(0.40754251,-pi/2,-pi/2) p0;
	u3(2.3498523,-1.2420271,-2.9063361) p1;
	cx p0,p1;
	u3(0.13270509,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.156192,1.2414832,-1.5839697) p0;
	u3(2.2891747,0.64158632,-0.95779301) p1;
}
gate su4_924 p0,p1 {
	u3(1.2221727,2.9430752,0.89514294) p0;
	u3(1.3659351,-1.1885739,0.29099076) p1;
	cx p0,p1;
	u3(0.76377806,-pi/2,-pi/2) p0;
	u3(2.3017647,-1.2570875,-2.9283058) p1;
	cx p0,p1;
	u3(0.68103674,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0496319,2.5267823,2.8266037) p0;
	u3(1.8075434,-0.83616605,-1.531982) p1;
}
gate su4_4 p0,p1 {
	u3(2.773263,-1.4170035,3.0478713) p0;
	u3(2.9067083,-2.6254131,-1.7456503) p1;
	cx p0,p1;
	u3(0.55821086,-pi/2,-pi/2) p0;
	u3(2.6733655,-1.0366741,-2.6559469) p1;
	cx p0,p1;
	u3(0.15615247,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1827108,1.579846,-3.0487548) p0;
	u3(1.705745,-0.75817478,0.033339154) p1;
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
gate su4_190 p0,p1 {
	u3(2.6895347,-3.074758,-2.6626592) p0;
	u3(1.3398593,-2.1860578,1.7195275) p1;
	cx p0,p1;
	u3(0.51494123,-pi/2,-pi/2) p0;
	u3(2.6529041,-1.0594066,-2.6815535) p1;
	cx p0,p1;
	u3(0.16060648,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4168978,0.6239864,-3.100772) p0;
	u3(1.7562514,-1.2540215,-2.3875638) p1;
}
qreg q[7];
creg meas[7];
su4_125 q[2],q[1];
su4_835 q[0],q[5];
su4_596 q[5],q[3];
su4_767 q[6],q[4];
su4_289 q[1],q[4];
su4_588 q[4],q[2];
su4_947 q[1],q[4];
su4_81 q[6],q[0];
su4_43 q[0],q[5];
su4_412 q[5],q[1];
su4_688 q[5],q[1];
su4_444 q[6],q[3];
su4_973 q[2],q[6];
su4_596 q[3],q[0];
su4_790 q[2],q[0];
su4_910 q[2],q[0];
su4_506 q[0],q[1];
su4_924 q[4],q[6];
su4_4 q[3],q[6];
su4_719 q[4],q[3];
su4_190 q[6],q[2];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
