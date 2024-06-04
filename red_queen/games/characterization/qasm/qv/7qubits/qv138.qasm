OPENQASM 2.0;
include "qelib1.inc";
gate su4_211 p0,p1 {
	u3(2.492767,-2.3664546,-1.6539806) p0;
	u3(2.5549637,0.45054874,2.0036128) p1;
	cx p0,p1;
	u3(0.20710615,-pi/2,-pi/2) p0;
	u3(2.0449048,-1.3096001,-3.0201572) p1;
	cx p0,p1;
	u3(0.093035441,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6518864,1.6646305,-3.0067354) p0;
	u3(1.9078082,-2.0302089,1.0041995) p1;
}
gate su4_998 p0,p1 {
	u3(2.6915345,3.0689526,-2.6432353) p0;
	u3(2.3647993,1.1715907,-0.50613262) p1;
	cx p0,p1;
	u3(1.1273715,-pi/2,-pi/2) p0;
	u3(2.5275989,-1.1606078,-2.8000881) p1;
	cx p0,p1;
	u3(0.17013395,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8236247,-1.1364427,-3.10569) p0;
	u3(0.45111715,-3.087182,-1.9591354) p1;
}
gate su4_395 p0,p1 {
	u3(2.3983221,-2.6035347,3.0919784) p0;
	u3(2.6100282,0.74856979,-0.050276771) p1;
	cx p0,p1;
	u3(0.7622491,-pi/2,-pi/2) p0;
	u3(2.3961918,-1.2252237,-2.8829694) p1;
	cx p0,p1;
	u3(0.41031045,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.71114424,-2.6505605,2.0754854) p0;
	u3(0.70011844,1.0694661,-1.4882402) p1;
}
gate su4_696 p0,p1 {
	u3(1.1144312,-2.8022632,0.047222178) p0;
	u3(0.34015343,1.4489825,0.047379124) p1;
	cx p0,p1;
	u3(1.0296594,-pi/2,-pi/2) p0;
	u3(2.6816981,-1.0267151,-2.6448102) p1;
	cx p0,p1;
	u3(0.17728413,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.346606,-2.1414184,2.5886974) p0;
	u3(2.0242678,2.2725568,1.0613861) p1;
}
gate su4_449 p0,p1 {
	u3(1.9288662,-2.7465715,0.81095642) p0;
	u3(1.2942227,-2.0950681,1.4873689) p1;
	cx p0,p1;
	u3(0.9844322,-pi/2,-pi/2) p0;
	u3(2.7484453,-0.92763969,-2.5360641) p1;
	cx p0,p1;
	u3(0.37218874,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8456188,1.0748324,2.000409) p0;
	u3(1.4699174,0.17057029,2.6237668) p1;
}
gate su4_371 p0,p1 {
	u3(1.4760606,-1.5318339,-2.0650635) p0;
	u3(1.4177676,1.2265019,1.5114794) p1;
	cx p0,p1;
	u3(0.94760885,-pi/2,-pi/2) p0;
	u3(2.6417825,-1.0708345,-2.6945346) p1;
	cx p0,p1;
	u3(0.04826774,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4238865,-2.083492,-2.269742) p0;
	u3(0.6585333,0.75013458,0.60053622) p1;
}
gate su4_803 p0,p1 {
	u3(0.75960196,-2.0293656,-1.2466808) p0;
	u3(2.1567882,-2.8187907,0.40484952) p1;
	cx p0,p1;
	u3(0.91996997,-pi/2,-pi/2) p0;
	u3(2.5427422,-1.1509885,-2.7883818) p1;
	cx p0,p1;
	u3(0.44488319,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.7680592,0.29935684,-3.1036112) p0;
	u3(2.0309234,1.9612917,-2.8610599) p1;
}
gate su4_672 p0,p1 {
	u3(1.3673333,0.59611298,-0.71127869) p0;
	u3(2.3049062,1.288519,1.5396012) p1;
	cx p0,p1;
	u3(0.27173095,-pi/2,-pi/2) p0;
	u3(2.7651955,-0.8955941,-2.5014923) p1;
	cx p0,p1;
	u3(0.056957804,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8926374,1.7652036,-2.4573337) p0;
	u3(1.0501182,-1.7594615,-1.696622) p1;
}
gate su4_380 p0,p1 {
	u3(1.5763821,-1.060282,1.0164) p0;
	u3(2.0538534,-1.1403327,2.1049341) p1;
	cx p0,p1;
	u3(0.76481622,-pi/2,-pi/2) p0;
	u3(2.4065877,-1.2210998,-2.8773841) p1;
	cx p0,p1;
	u3(0.45136987,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5691939,-0.58408746,-2.6091513) p0;
	u3(1.9968608,-0.42046722,1.8046674) p1;
}
gate su4_549 p0,p1 {
	u3(2.9792906,-0.59928726,0.33862103) p0;
	u3(1.3389925,-1.7094963,2.2821213) p1;
	cx p0,p1;
	u3(0.85030477,-pi/2,-pi/2) p0;
	u3(2.6965104,-1.0078872,-2.6238762) p1;
	cx p0,p1;
	u3(0.14327336,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3686742,1.9507505,1.5695658) p0;
	u3(1.8387886,-2.4264332,0.4784308) p1;
}
gate su4_199 p0,p1 {
	u3(1.3061372,-1.2902856,-2.8091196) p0;
	u3(1.6783696,-0.29808451,-1.3556397) p1;
	cx p0,p1;
	u3(0.69391213,-pi/2,-pi/2) p0;
	u3(2.6267735,-1.0853315,-2.7111201) p1;
	cx p0,p1;
	u3(0.053614948,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1245109,-3.1215959,-2.7791513) p0;
	u3(2.3985614,0.54630467,-0.43923161) p1;
}
gate su4_297 p0,p1 {
	u3(2.0035208,-0.27434987,-0.018606147) p0;
	u3(1.646653,3.050308,0.66164445) p1;
	cx p0,p1;
	u3(1.0341516,-pi/2,-pi/2) p0;
	u3(2.6708633,-1.0395817,-2.6592073) p1;
	cx p0,p1;
	u3(0.15839484,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4010348,2.908756,-0.38048443) p0;
	u3(1.7474984,2.984057,2.308392) p1;
}
gate su4_667 p0,p1 {
	u3(2.509547,0.5015281,-0.35882828) p0;
	u3(1.8292126,2.7670935,1.3493967) p1;
	cx p0,p1;
	u3(0.81593595,-pi/2,-pi/2) p0;
	u3(2.6345788,-1.0779195,-2.702623) p1;
	cx p0,p1;
	u3(0.47626564,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6596241,-1.3730187,-1.1541042) p0;
	u3(1.6663476,2.8114242,-1.6550911) p1;
}
gate su4_959 p0,p1 {
	u3(1.4820469,0.34173678,2.875151) p0;
	u3(1.7646042,-1.8722067,-1.8695843) p1;
	cx p0,p1;
	u3(0.59879229,-pi/2,-pi/2) p0;
	u3(2.4280855,-1.2121132,-2.8653866) p1;
	cx p0,p1;
	u3(0.18422528,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4820597,-3.1138167,3.0052179) p0;
	u3(1.3849399,-1.2437667,-0.21696925) p1;
}
gate su4_293 p0,p1 {
	u3(1.5035217,2.5000392,1.1486572) p0;
	u3(2.5653283,-1.4004783,-0.56305611) p1;
	cx p0,p1;
	u3(0.68381843,-pi/2,-pi/2) p0;
	u3(2.7113857,-0.98736802,-2.6012227) p1;
	cx p0,p1;
	u3(0.14487556,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.75790833,1.8285847,2.3984898) p0;
	u3(2.6764711,-0.93170001,1.1648682) p1;
}
gate su4_784 p0,p1 {
	u3(1.9895637,2.6167535,-1.8748408) p0;
	u3(1.7433811,1.4176747,2.4921533) p1;
	cx p0,p1;
	u3(0.73479498,-pi/2,-pi/2) p0;
	u3(2.6414168,-1.0712,-2.6949511) p1;
	cx p0,p1;
	u3(0.27091208,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6978878,-1.6858427,2.8857546) p0;
	u3(0.91616998,0.4296957,-2.6376948) p1;
}
gate su4_438 p0,p1 {
	u3(1.7677368,0.77612851,-0.69254604) p0;
	u3(1.1356483,1.4632356,1.6527067) p1;
	cx p0,p1;
	u3(0.58589495,-pi/2,-pi/2) p0;
	u3(2.8002213,-0.81443264,-2.4148281) p1;
	cx p0,p1;
	u3(0.13893889,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3977295,-0.75182466,2.6800028) p0;
	u3(2.7805328,-1.8040815,0.17629688) p1;
}
gate su4_321 p0,p1 {
	u3(1.9239784,3.0824135,-0.75065674) p0;
	u3(0.13741451,-2.3105408,1.9035471) p1;
	cx p0,p1;
	u3(0.45701406,-pi/2,-pi/2) p0;
	u3(2.8099087,-0.78759449,-2.3863956) p1;
	cx p0,p1;
	u3(0.236799,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7546991,-0.8640585,-1.4870939) p0;
	u3(1.8171238,2.6871503,-1.6674771) p1;
}
gate su4_663 p0,p1 {
	u3(1.4523014,1.7412625,-2.2008954) p0;
	u3(1.9649269,2.818393,-1.5974658) p1;
	cx p0,p1;
	u3(0.55459965,-pi/2,-pi/2) p0;
	u3(2.6002443,-1.1086511,-2.7381146) p1;
	cx p0,p1;
	u3(0.16718096,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7909311,2.170709,1.7618015) p0;
	u3(0.95552134,-0.9666987,-1.5275375) p1;
}
qreg q[7];
creg meas[7];
su4_211 q[3],q[1];
su4_998 q[0],q[4];
su4_395 q[4],q[1];
su4_696 q[4],q[1];
su4_449 q[5],q[3];
su4_371 q[2],q[6];
su4_803 q[2],q[0];
su4_672 q[0],q[2];
su4_395 q[0],q[4];
su4_380 q[2],q[1];
su4_549 q[2],q[1];
su4_199 q[3],q[6];
su4_297 q[5],q[3];
su4_667 q[5],q[4];
su4_549 q[3],q[4];
su4_959 q[1],q[4];
su4_293 q[5],q[2];
su4_784 q[6],q[0];
su4_438 q[6],q[0];
su4_321 q[5],q[0];
su4_663 q[6],q[3];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
