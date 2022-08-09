OPENQASM 2.0;
include "qelib1.inc";
gate su4_989 p0,p1 {
	u3(0.3199804,-2.1070068,-2.7281049) p0;
	u3(2.0770938,0.6282376,1.1671273) p1;
	cx p0,p1;
	u3(0.63695637,-pi/2,-pi/2) p0;
	u3(2.2837006,-1.2622028,-2.9360461) p1;
	cx p0,p1;
	u3(0.27336272,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3765829,-2.9986246,2.5822416) p0;
	u3(1.5616466,2.4363726,1.0296705) p1;
}
gate su4_185 p0,p1 {
	u3(1.4441842,-2.5208755,-1.7090634) p0;
	u3(0.61890078,1.3516891,1.5598607) p1;
	cx p0,p1;
	u3(0.56151395,-pi/2,-pi/2) p0;
	u3(2.5951617,-1.1128158,-2.7429816) p1;
	cx p0,p1;
	u3(0.34152,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1931148,1.952727,-1.192973) p0;
	u3(1.7836319,-0.6054256,-2.1919422) p1;
}
gate su4_528 p0,p1 {
	u3(1.7555568,0.54260538,-2.39507) p0;
	u3(0.48912729,2.4687294,-0.7753124) p1;
	cx p0,p1;
	u3(0.71977535,-pi/2,-pi/2) p0;
	u3(2.8118966,-0.78179556,-2.3802645) p1;
	cx p0,p1;
	u3(0.20198167,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8175039,1.619796,0.96540247) p0;
	u3(2.0880235,-1.1151294,-1.8135021) p1;
}
gate su4_725 p0,p1 {
	u3(0.96866403,-1.9820942,0.10235632) p0;
	u3(0.64937913,-1.6317369,2.1078352) p1;
	cx p0,p1;
	u3(0.58356936,-pi/2,-pi/2) p0;
	u3(2.5762384,-1.1275531,-2.7603303) p1;
	cx p0,p1;
	u3(0.47437827,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6695997,0.1100872,0.68775843) p0;
	u3(0.5122176,3.0928702,-0.078462292) p1;
}
gate su4_833 p0,p1 {
	u3(1.6096598,-0.86023167,-3.066991) p0;
	u3(1.1760512,2.6574416,1.315628) p1;
	cx p0,p1;
	u3(0.61865211,-pi/2,-pi/2) p0;
	u3(2.6085672,-1.1016291,-2.7299415) p1;
	cx p0,p1;
	u3(0.092268112,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4315096,-1.9478078,1.4671637) p0;
	u3(2.5194473,-0.54563169,1.886727) p1;
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
gate su4_420 p0,p1 {
	u3(1.1366991,2.7639038,0.75974074) p0;
	u3(1.3868885,-2.098777,-2.6431434) p1;
	cx p0,p1;
	u3(0.86348313,-pi/2,-pi/2) p0;
	u3(2.6560669,-1.0560425,-2.6777466) p1;
	cx p0,p1;
	u3(0.02438051,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5991348,-0.18839343,-0.10867215) p0;
	u3(1.3323638,-2.7656668,1.8550199) p1;
}
gate su4_56 p0,p1 {
	u3(2.7573104,-3.1109292,2.0282604) p0;
	u3(1.6890731,0.32311038,2.4568198) p1;
	cx p0,p1;
	u3(0.78077184,-pi/2,-pi/2) p0;
	u3(2.6828467,-1.0253079,-2.6432403) p1;
	cx p0,p1;
	u3(0.28619406,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3326691,1.106772,-0.49331969) p0;
	u3(2.4803884,0.31952468,-1.6229347) p1;
}
gate su4_127 p0,p1 {
	u3(1.8480607,-1.2348663,0.47395936) p0;
	u3(0.79525711,1.9764252,2.6930588) p1;
	cx p0,p1;
	u3(0.68300122,-pi/2,-pi/2) p0;
	u3(2.7187613,-0.9765275,-2.5893156) p1;
	cx p0,p1;
	u3(0.026790031,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3053818,2.746511,-2.9717665) p0;
	u3(2.7634779,1.6078432,1.1878989) p1;
}
gate su4_856 p0,p1 {
	u3(2.298582,-1.2532107,1.9587258) p0;
	u3(2.2759604,-0.81581241,-1.2438898) p1;
	cx p0,p1;
	u3(0.47090413,-pi/2,-pi/2) p0;
	u3(2.5445539,-1.1497994,-2.7869431) p1;
	cx p0,p1;
	u3(0.32173668,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4473207,0.6740888,-1.6366385) p0;
	u3(1.5440373,2.7422812,2.9538393) p1;
}
gate su4_896 p0,p1 {
	u3(0.14917965,-0.42144332,-0.67787532) p0;
	u3(0.39088961,0.17924498,-0.11983635) p1;
	cx p0,p1;
	u3(0.39190138,-pi/2,-pi/2) p0;
	u3(2.7435613,-0.93632578,-2.5454771) p1;
	cx p0,p1;
	u3(0.18206079,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2774492,2.6494984,-0.62890609) p0;
	u3(2.24187,0.4868217,2.4770799) p1;
}
gate su4_488 p0,p1 {
	u3(0.30652637,2.0128854,1.6995331) p0;
	u3(2.1833652,0.25027854,1.3533682) p1;
	cx p0,p1;
	u3(0.66017196,-pi/2,-pi/2) p0;
	u3(2.6457846,-1.0667925,-2.6899343) p1;
	cx p0,p1;
	u3(0.41823739,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2203801,2.6640117,2.5177639) p0;
	u3(0.48301586,0.76497024,1.8944077) p1;
}
gate su4_500 p0,p1 {
	u3(1.7621026,2.8403674,2.6897645) p0;
	u3(0.1206039,2.5081409,0.69510174) p1;
	cx p0,p1;
	u3(0.75603932,-pi/2,-pi/2) p0;
	u3(2.6807948,-1.0278158,-2.6460388) p1;
	cx p0,p1;
	u3(0.32617281,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.80954028,-1.7084845,-2.6383474) p0;
	u3(1.754,-2.5998213,2.1767687) p1;
}
gate su4_950 p0,p1 {
	u3(2.6099044,-2.7824819,-2.2506779) p0;
	u3(2.7796152,-2.9012917,0.90235398) p1;
	cx p0,p1;
	u3(0.49250837,-pi/2,-pi/2) p0;
	u3(2.42104,-1.215129,-2.8693876) p1;
	cx p0,p1;
	u3(0.15661235,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.83350014,0.83270213,-0.40012637) p0;
	u3(1.2288198,2.2083851,2.9525032) p1;
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
gate su4_136 p0,p1 {
	u3(1.7716322,2.2916649,2.6454835) p0;
	u3(1.8053982,1.7056937,2.8272898) p1;
	cx p0,p1;
	u3(1.0699332,-pi/2,-pi/2) p0;
	u3(2.7663471,-0.89325138,-2.4989738) p1;
	cx p0,p1;
	u3(0.37201472,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.52843261,-2.7525558,2.8974411) p0;
	u3(2.1440225,0.74288568,2.2060318) p1;
}
gate su4_192 p0,p1 {
	u3(1.2966487,1.5398119,-2.8236044) p0;
	u3(2.2288751,2.7823676,-1.1140664) p1;
	cx p0,p1;
	u3(0.66174731,-pi/2,-pi/2) p0;
	u3(2.4941419,-1.1800068,-2.8241048) p1;
	cx p0,p1;
	u3(0.11178177,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4964675,1.3570906,-0.61930341) p0;
	u3(0.85461964,-2.8952499,2.8544417) p1;
}
gate su4_437 p0,p1 {
	u3(0.26673167,-1.7986758,-2.7503299) p0;
	u3(2.873331,-0.21505162,-1.008728) p1;
	cx p0,p1;
	u3(1.0026895,-pi/2,-pi/2) p0;
	u3(2.6661991,-1.0449034,-2.6651855) p1;
	cx p0,p1;
	u3(0.38946699,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0098445,3.0021026,-1.7930493) p0;
	u3(0.65986311,2.391774,1.1316285) p1;
}
gate su4_682 p0,p1 {
	u3(2.51126,-1.7426647,2.8492211) p0;
	u3(0.43169023,-1.6588556,2.4874059) p1;
	cx p0,p1;
	u3(0.79196949,-pi/2,-pi/2) p0;
	u3(2.6399882,-1.0726218,-2.696572) p1;
	cx p0,p1;
	u3(0.080987056,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1788803,-1.3749265,2.183358) p0;
	u3(2.4796231,2.336273,3.0688343) p1;
}
gate su4_164 p0,p1 {
	u3(1.6238917,1.4887825,-2.2822428) p0;
	u3(1.376176,-0.28778008,-2.6317052) p1;
	cx p0,p1;
	u3(0.81061454,-pi/2,-pi/2) p0;
	u3(2.4783884,-1.1883506,-2.8346283) p1;
	cx p0,p1;
	u3(0.047059717,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7748324,1.6203571,-2.7973726) p0;
	u3(2.2878563,2.6520046,-0.15962828) p1;
}
gate su4_30 p0,p1 {
	u3(0.7504849,2.7729198,1.0856329) p0;
	u3(1.7053062,1.5366367,3.0154261) p1;
	cx p0,p1;
	u3(0.56420457,-pi/2,-pi/2) p0;
	u3(2.632899,-1.0795373,-2.7044745) p1;
	cx p0,p1;
	u3(0.20027123,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2429083,0.93229358,1.5196317) p0;
	u3(2.5955178,1.3468768,2.4093017) p1;
}
gate su4_518 p0,p1 {
	u3(0.12709745,-3.0459269,-1.3815318) p0;
	u3(1.22186,1.1091518,-1.1339469) p1;
	cx p0,p1;
	u3(0.85550204,-pi/2,-pi/2) p0;
	u3(2.5508596,-1.1455941,-2.781869) p1;
	cx p0,p1;
	u3(0.013323001,1.4210855e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.30137415,-3.098553,-0.78510954) p0;
	u3(0.67873934,0.86407829,-1.6395909) p1;
}
gate su4_407 p0,p1 {
	u3(1.5096955,1.9615552,-2.3005345) p0;
	u3(1.5294695,1.1762135,-1.1717102) p1;
	cx p0,p1;
	u3(0.50720402,-pi/2,-pi/2) p0;
	u3(2.1265701,-1.2969265,-2.9944457) p1;
	cx p0,p1;
	u3(0.2274847,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8391797,-3.0213175,-0.79437755) p0;
	u3(0.88642299,-2.0831077,-2.9796834) p1;
}
gate su4_431 p0,p1 {
	u3(0.18199244,-0.3860854,0.97893144) p0;
	u3(1.607381,-2.632419,-1.2574787) p1;
	cx p0,p1;
	u3(0.98444249,-pi/2,-pi/2) p0;
	u3(2.7449923,-0.93380939,-2.5427481) p1;
	cx p0,p1;
	u3(0.22436503,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7075448,-2.7240292,0.9824267) p0;
	u3(0.58309567,2.0785183,-2.7448783) p1;
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
gate su4_905 p0,p1 {
	u3(0.30749982,0.48712028,0.13525162) p0;
	u3(1.1801962,-1.9885932,-2.269583) p1;
	cx p0,p1;
	u3(1.0353169,-pi/2,-pi/2) p0;
	u3(2.5221806,-1.1639163,-2.8041437) p1;
	cx p0,p1;
	u3(0.067378855,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.65876303,-0.54783588,-2.4020796) p0;
	u3(1.6726118,-2.610167,-0.89211921) p1;
}
gate su4_684 p0,p1 {
	u3(1.2108703,-0.19535775,0.72191645) p0;
	u3(2.0973058,1.941271,2.1135392) p1;
	cx p0,p1;
	u3(0.8890694,-pi/2,-pi/2) p0;
	u3(2.6569369,-1.0551079,-2.6766901) p1;
	cx p0,p1;
	u3(0.38668738,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5962373,-3.0389013,-0.72635382) p0;
	u3(1.338385,-2.0725382,0.65329985) p1;
}
gate su4_519 p0,p1 {
	u3(1.1173946,-1.3506544,1.6151137) p0;
	u3(1.162269,-2.6073017,1.7686051) p1;
	cx p0,p1;
	u3(0.67857506,-pi/2,-pi/2) p0;
	u3(2.4510294,-1.2017825,-2.8518574) p1;
	cx p0,p1;
	u3(0.20758591,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6436574,0.86078548,2.8904925) p0;
	u3(2.1547278,-2.0940738,1.7588048) p1;
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
gate su4_10 p0,p1 {
	u3(1.5456654,-1.7622722,-1.6222541) p0;
	u3(0.90348607,2.1896731,1.1581267) p1;
	cx p0,p1;
	u3(0.97750416,-pi/2,-pi/2) p0;
	u3(2.6581302,-1.0538195,-2.6752344) p1;
	cx p0,p1;
	u3(0.28053645,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1441014,-0.34079484,-2.5884062) p0;
	u3(0.91686809,1.625952,-1.2250406) p1;
}
gate su4_370 p0,p1 {
	u3(1.7472078,0.84143189,0.19842232) p0;
	u3(1.3668058,-2.9045521,-2.46013) p1;
	cx p0,p1;
	u3(0.37867018,-pi/2,-pi/2) p0;
	u3(2.557364,-1.1411448,-2.7765235) p1;
	cx p0,p1;
	u3(0.1993887,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.98080112,1.038882,-0.086959953) p0;
	u3(1.0995648,1.7734648,0.28663756) p1;
}
gate su4_115 p0,p1 {
	u3(0.94655325,-1.534603,-2.3286885) p0;
	u3(2.2489351,0.14928784,-1.966802) p1;
	cx p0,p1;
	u3(0.85084362,-pi/2,-pi/2) p0;
	u3(2.3748849,-1.2332564,-2.8940095) p1;
	cx p0,p1;
	u3(0.54458115,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8700494,-2.1725236,-1.4289462) p0;
	u3(1.9452376,1.4846099,-2.2591057) p1;
}
gate su4_530 p0,p1 {
	u3(2.004439,-3.0934069,2.5769073) p0;
	u3(2.7978759,0.50081125,2.8754626) p1;
	cx p0,p1;
	u3(0.98379607,-pi/2,-pi/2) p0;
	u3(2.6122002,-1.0984824,-2.7262918) p1;
	cx p0,p1;
	u3(0.4140897,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0999998,-2.4083707,-2.2957593) p0;
	u3(2.6518484,-1.5311418,-1.1842627) p1;
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
gate su4_17 p0,p1 {
	u3(2.3693534,-1.6935784,-1.9190366) p0;
	u3(2.7541815,-0.63809827,0.89148918) p1;
	cx p0,p1;
	u3(1.1503782,-pi/2,-pi/2) p0;
	u3(2.7880637,-0.84514647,-2.447493) p1;
	cx p0,p1;
	u3(0.23739871,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1981627,-1.172293,-1.3287954) p0;
	u3(1.6752848,0.061468265,-2.4981432) p1;
}
gate su4_147 p0,p1 {
	u3(2.590367,-1.5719373,0.57254729) p0;
	u3(0.57429077,-2.595636,1.5889267) p1;
	cx p0,p1;
	u3(0.80599198,-pi/2,-pi/2) p0;
	u3(2.5277263,-1.1605292,-2.799992) p1;
	cx p0,p1;
	u3(0.15257595,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.80992876,-0.75945484,-3.0518207) p0;
	u3(1.3407923,-2.6355771,0.74772978) p1;
}
gate su4_283 p0,p1 {
	u3(1.9627849,-0.48677177,2.612853) p0;
	u3(2.0227492,-1.0365351,2.5129392) p1;
	cx p0,p1;
	u3(0.51704241,-pi/2,-pi/2) p0;
	u3(2.3722987,-1.2341948,-2.8953141) p1;
	cx p0,p1;
	u3(0.21817432,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0891025,2.2569611,0.36658875) p0;
	u3(1.1903599,-0.85422691,-2.4342209) p1;
}
gate su4_425 p0,p1 {
	u3(1.4423174,-1.3015178,0.40524195) p0;
	u3(1.8950769,1.8774929,-2.08589) p1;
	cx p0,p1;
	u3(1.016714,-pi/2,-pi/2) p0;
	u3(2.6120376,-1.0986243,-2.7264562) p1;
	cx p0,p1;
	u3(0.60297329,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8805328,1.581403,-1.6362466) p0;
	u3(1.583551,3.0843721,0.74055491) p1;
}
gate su4_361 p0,p1 {
	u3(1.0240342,-0.94278996,1.1514856) p0;
	u3(1.3516108,1.4407917,-1.8611919) p1;
	cx p0,p1;
	u3(0.66010617,-pi/2,-pi/2) p0;
	u3(2.7828816,-0.85735367,-2.4605173) p1;
	cx p0,p1;
	u3(0.039594275,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0614409,-0.096448927,1.9148706) p0;
	u3(2.1343093,-0.6970353,-2.8711252) p1;
}
gate su4_504 p0,p1 {
	u3(1.5293855,0.7460112,2.5929389) p0;
	u3(2.5673518,-2.5118407,-1.6538704) p1;
	cx p0,p1;
	u3(0.94566886,-pi/2,-pi/2) p0;
	u3(2.7794589,-0.86515225,-2.4688514) p1;
	cx p0,p1;
	u3(0.21246806,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.657506,0.94285606,0.070777208) p0;
	u3(2.1487282,3.0101273,-1.1356766) p1;
}
gate su4_60 p0,p1 {
	u3(0.66254231,0.48321628,2.3502241) p0;
	u3(2.0990538,-3.1047897,-2.5681556) p1;
	cx p0,p1;
	u3(1.080097,-pi/2,-pi/2) p0;
	u3(2.5537927,-1.143602,-2.7794727) p1;
	cx p0,p1;
	u3(0.24063227,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7310589,0.4531091,2.5914336) p0;
	u3(1.8658721,0.27494948,1.2876583) p1;
}
gate su4_564 p0,p1 {
	u3(1.5957434,-0.60256449,3.0366492) p0;
	u3(1.0802134,3.133787,2.0724739) p1;
	cx p0,p1;
	u3(0.84626377,-pi/2,-pi/2) p0;
	u3(2.7029829,-0.99916959,-2.6142325) p1;
	cx p0,p1;
	u3(0.52994837,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0566152,-2.1323041,0.41505017) p0;
	u3(2.6323531,-1.6870814,-1.7604511) p1;
}
gate su4_315 p0,p1 {
	u3(1.5465891,-2.5292499,1.1616695) p0;
	u3(2.1416082,0.6014417,-2.4782007) p1;
	cx p0,p1;
	u3(0.78521478,-pi/2,-pi/2) p0;
	u3(2.6195203,-1.091985,-2.7187801) p1;
	cx p0,p1;
	u3(0.47838567,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1635268,2.8749171,-1.5171744) p0;
	u3(1.7861596,-1.7398465,-0.76570433) p1;
}
gate su4_515 p0,p1 {
	u3(1.0410215,-2.2209468,0.14471934) p0;
	u3(1.5903856,2.454123,-2.3995241) p1;
	cx p0,p1;
	u3(0.79850021,-pi/2,-pi/2) p0;
	u3(2.6572043,-1.0548199,-2.6763646) p1;
	cx p0,p1;
	u3(0.56357963,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.9902516,0.41429455,-1.5446713) p0;
	u3(2.0871684,-1.9368611,2.2669988) p1;
}
gate su4_140 p0,p1 {
	u3(0.57269922,1.7610037,-1.3989548) p0;
	u3(0.36108907,-2.7486975,1.0643998) p1;
	cx p0,p1;
	u3(0.92263473,-pi/2,-pi/2) p0;
	u3(2.7105957,-0.98850171,-2.6024703) p1;
	cx p0,p1;
	u3(0.56947627,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5380996,1.1779325,-0.65365613) p0;
	u3(0.67721655,2.1152117,-1.7140437) p1;
}
gate su4_259 p0,p1 {
	u3(1.677569,-2.9307955,-0.15548531) p0;
	u3(1.5999232,-1.4559269,1.4152565) p1;
	cx p0,p1;
	u3(0.56932362,-pi/2,-pi/2) p0;
	u3(2.4887218,-1.182931,-2.8277785) p1;
	cx p0,p1;
	u3(0.14722741,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1664527,-2.6628255,0.41387367) p0;
	u3(0.7294785,-3.0200953,2.5333019) p1;
}
gate su4_324 p0,p1 {
	u3(1.7621901,2.1713345,-0.53082162) p0;
	u3(2.4195429,-0.24199042,-1.0490964) p1;
	cx p0,p1;
	u3(0.89748367,-pi/2,-pi/2) p0;
	u3(2.6964757,-1.0079331,-2.623927) p1;
	cx p0,p1;
	u3(0.52848614,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6762918,-2.2118226,0.7564464) p0;
	u3(1.7633717,-0.92599145,-0.53337466) p1;
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
gate su4_428 p0,p1 {
	u3(1.1448206,-2.0330047,-1.885339) p0;
	u3(2.0222909,0.66248224,2.2909604) p1;
	cx p0,p1;
	u3(0.83437658,-pi/2,-pi/2) p0;
	u3(2.3995574,-1.2239038,-2.881176) p1;
	cx p0,p1;
	u3(0.21953242,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7341193,-0.95274037,-2.6193657) p0;
	u3(1.1372005,-2.4646976,0.75368507) p1;
}
qreg q[10];
creg meas[10];
su4_989 q[0],q[2];
su4_185 q[1],q[5];
su4_528 q[5],q[1];
su4_725 q[7],q[3];
su4_833 q[0],q[3];
su4_225 q[8],q[6];
su4_420 q[7],q[8];
su4_56 q[1],q[7];
su4_127 q[3],q[8];
su4_856 q[4],q[9];
su4_896 q[4],q[2];
su4_488 q[4],q[2];
su4_500 q[3],q[2];
su4_950 q[4],q[1];
su4_321 q[9],q[6];
su4_136 q[0],q[9];
su4_192 q[6],q[5];
su4_437 q[7],q[0];
su4_682 q[0],q[1];
su4_164 q[3],q[7];
su4_30 q[1],q[7];
su4_518 q[8],q[6];
su4_407 q[6],q[4];
su4_725 q[6],q[3];
su4_431 q[1],q[6];
su4_579 q[9],q[5];
su4_905 q[5],q[8];
su4_684 q[5],q[4];
su4_519 q[7],q[5];
su4_553 q[5],q[7];
su4_10 q[8],q[0];
su4_370 q[8],q[0];
su4_115 q[1],q[0];
su4_530 q[6],q[8];
su4_197 q[6],q[5];
su4_17 q[7],q[0];
su4_147 q[7],q[5];
su4_283 q[9],q[2];
su4_425 q[2],q[9];
su4_361 q[2],q[4];
su4_504 q[3],q[9];
su4_60 q[4],q[2];
su4_564 q[2],q[4];
su4_315 q[2],q[6];
su4_515 q[9],q[3];
su4_140 q[8],q[3];
su4_259 q[8],q[0];
su4_324 q[9],q[1];
su4_508 q[1],q[3];
su4_428 q[4],q[9];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];
measure q[8] -> meas[8];
measure q[9] -> meas[9];
