OPENQASM 2.0;
include "qelib1.inc";
gate su4_213 p0,p1 {
	u3(2.0196622,-0.73834217,0.7624376) p0;
	u3(1.8111069,1.6371192,2.2075369) p1;
	cx p0,p1;
	u3(0.93298124,-pi/2,-pi/2) p0;
	u3(2.7345829,-0.95159882,-2.5620766) p1;
	cx p0,p1;
	u3(0.21634453,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.28281877,-0.37563604,-0.85460304) p0;
	u3(1.4839814,2.4148058,1.750871) p1;
}
gate su4_318 p0,p1 {
	u3(0.94824942,1.6362783,0.19746235) p0;
	u3(0.67973641,-2.020786,-2.4115415) p1;
	cx p0,p1;
	u3(0.88054296,-pi/2,-pi/2) p0;
	u3(2.6359752,-1.0765648,-2.701074) p1;
	cx p0,p1;
	u3(0.52309239,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3814914,1.5620214,1.8696666) p0;
	u3(1.6778648,0.16644939,2.8453694) p1;
}
gate su4_465 p0,p1 {
	u3(1.7444486,-3.0002838,0.79693683) p0;
	u3(1.4368541,0.30367705,3.0431388) p1;
	cx p0,p1;
	u3(0.64446977,-pi/2,-pi/2) p0;
	u3(2.6539823,-1.0582657,-2.6802617) p1;
	cx p0,p1;
	u3(0.37795692,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9589737,0.099809919,-2.5560669) p0;
	u3(2.5501004,-0.87077176,0.42713637) p1;
}
gate su4_730 p0,p1 {
	u3(2.2873906,-2.1023936,0.40224784) p0;
	u3(0.95838322,-2.2973566,1.9247855) p1;
	cx p0,p1;
	u3(0.51225224,-pi/2,-pi/2) p0;
	u3(2.4895222,-1.1825028,-2.8272396) p1;
	cx p0,p1;
	u3(0.25828492,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4058749,1.4102516,-1.9643755) p0;
	u3(1.6057719,-1.0366356,-0.54843762) p1;
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
gate su4_110 p0,p1 {
	u3(1.5219167,-2.8344331,1.5864005) p0;
	u3(2.051672,2.8165387,1.541699) p1;
	cx p0,p1;
	u3(0.82050384,-pi/2,-pi/2) p0;
	u3(2.4610593,-1.1970063,-2.8456871) p1;
	cx p0,p1;
	u3(0.19955945,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.55454968,2.0622272,2.303978) p0;
	u3(1.4578087,-1.2668604,0.72227092) p1;
}
gate su4_867 p0,p1 {
	u3(2.4133697,-3.0592836,-2.2543677) p0;
	u3(2.1376287,-0.40392516,2.1849859) p1;
	cx p0,p1;
	u3(0.98326388,-pi/2,-pi/2) p0;
	u3(2.360291,-1.2384531,-2.9012762) p1;
	cx p0,p1;
	u3(0.020685226,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.35728951,1.8010904,-2.4812955) p0;
	u3(0.56724266,-2.6549407,2.2577572) p1;
}
gate su4_830 p0,p1 {
	u3(2.2598322,-0.1548386,-0.32196535) p0;
	u3(0.42490271,-1.0017192,-1.5334301) p1;
	cx p0,p1;
	u3(0.81217434,-pi/2,-pi/2) p0;
	u3(2.6890073,-1.0176121,-2.6346701) p1;
	cx p0,p1;
	u3(0.13022941,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3798293,-0.29196815,0.12217856) p0;
	u3(1.2947141,1.2347105,0.80921267) p1;
}
gate su4_908 p0,p1 {
	u3(2.2037935,2.0711971,-0.025729386) p0;
	u3(1.2895415,1.7752596,1.3718719) p1;
	cx p0,p1;
	u3(0.66165483,-pi/2,-pi/2) p0;
	u3(2.2061724,-1.2813089,-2.9666292) p1;
	cx p0,p1;
	u3(0.19497015,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4538606,-1.4958242,2.6457172) p0;
	u3(1.538175,-0.63334542,0.11506023) p1;
}
gate su4_375 p0,p1 {
	u3(2.4215669,-0.28070319,1.1931336) p0;
	u3(1.4699073,1.5477149,-0.17158543) p1;
	cx p0,p1;
	u3(0.64104141,-pi/2,-pi/2) p0;
	u3(2.0569446,-1.3079185,-3.0165165) p1;
	cx p0,p1;
	u3(0.064316288,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.86496442,-0.2965661,-2.6851563) p0;
	u3(1.8322268,3.1342727,2.7392806) p1;
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
gate su4_485 p0,p1 {
	u3(0.92462298,2.0833806,-2.8398045) p0;
	u3(0.87282884,-1.8282937,-0.92003105) p1;
	cx p0,p1;
	u3(0.78712969,-pi/2,-pi/2) p0;
	u3(2.8109653,-0.78452525,-2.38315) p1;
	cx p0,p1;
	u3(0.19442288,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5808646,2.4430151,-0.32812215) p0;
	u3(2.3756204,-2.1753669,-0.34486189) p1;
}
gate su4_587 p0,p1 {
	u3(2.1877395,-1.0080795,0.34225357) p0;
	u3(0.6471185,0.84675719,-1.1755336) p1;
	cx p0,p1;
	u3(1.3803386,-pi/2,-pi/2) p0;
	u3(2.7072871,-0.99319494,-2.6076399) p1;
	cx p0,p1;
	u3(0.065684995,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.95219114,-1.51696,1.3354698) p0;
	u3(2.2768556,0.9151169,0.82398407) p1;
}
gate su4_408 p0,p1 {
	u3(1.1560392,-0.15180312,1.1413985) p0;
	u3(2.1451347,-2.0405062,1.8162092) p1;
	cx p0,p1;
	u3(0.55733228,-pi/2,-pi/2) p0;
	u3(2.6260274,-1.0860262,-2.7119183) p1;
	cx p0,p1;
	u3(0.45220803,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2436825,2.2108689,0.46091322) p0;
	u3(0.68969002,0.49219495,-1.9695252) p1;
}
gate su4_29 p0,p1 {
	u3(2.7389722,-2.8280026,2.2448824) p0;
	u3(1.8460127,1.5632647,2.0259045) p1;
	cx p0,p1;
	u3(0.48592005,-pi/2,-pi/2) p0;
	u3(2.3255448,-1.2499157,-2.9177036) p1;
	cx p0,p1;
	u3(0.040485928,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.39086405,-2.2533232,2.8721493) p0;
	u3(0.29771198,-3.0668309,0.38070924) p1;
}
gate su4_517 p0,p1 {
	u3(0.54352521,-0.43236522,1.9045079) p0;
	u3(2.3427876,-2.588867,0.22438939) p1;
	cx p0,p1;
	u3(1.0932939,-pi/2,-pi/2) p0;
	u3(2.6503471,-1.0620887,-2.6845932) p1;
	cx p0,p1;
	u3(0.330225,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7392705,-1.855091,-1.9850593) p0;
	u3(2.1871683,2.8663622,-1.3782027) p1;
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
gate su4_632 p0,p1 {
	u3(1.7442476,0.21526529,-2.1668018) p0;
	u3(1.0401069,1.7137787,2.6187137) p1;
	cx p0,p1;
	u3(0.71744097,-pi/2,-pi/2) p0;
	u3(2.4245945,-1.2136164,-2.8673777) p1;
	cx p0,p1;
	u3(0.57851368,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3424495,1.9643964,-1.1577789) p0;
	u3(2.3928165,-2.5310719,1.6038655) p1;
}
gate su4_116 p0,p1 {
	u3(2.6143483,0.84637821,1.6276572) p0;
	u3(0.76011498,2.2520202,-0.47652849) p1;
	cx p0,p1;
	u3(0.9161455,-pi/2,-pi/2) p0;
	u3(2.811874,-0.78186212,-2.3803348) p1;
	cx p0,p1;
	u3(0.20561757,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.176568,-1.5914515,1.5302038) p0;
	u3(1.2027832,-0.7760442,-0.83664076) p1;
}
gate su4_207 p0,p1 {
	u3(1.3278117,-0.74182447,0.66678128) p0;
	u3(1.9071318,1.5539128,-0.6899307) p1;
	cx p0,p1;
	u3(0.20879803,-pi/2,-pi/2) p0;
	u3(2.6161147,-1.0950344,-2.7223016) p1;
	cx p0,p1;
	u3(0.045936208,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.99676209,-2.9556186,2.6527312) p0;
	u3(1.5297532,-0.47312801,0.041066799) p1;
}
gate su4_235 p0,p1 {
	u3(0.85577954,-2.1047698,-2.6771694) p0;
	u3(1.0832445,-2.128207,2.8382395) p1;
	cx p0,p1;
	u3(0.99969123,-pi/2,-pi/2) p0;
	u3(2.6443715,-1.0682285,-2.6915675) p1;
	cx p0,p1;
	u3(0.061290784,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4128609,2.1736991,-2.9070062) p0;
	u3(0.72457595,-2.4034468,-2.0950268) p1;
}
gate su4_561 p0,p1 {
	u3(1.2528548,-2.8361763,-2.855719) p0;
	u3(1.1356588,1.5035894,2.3115506) p1;
	cx p0,p1;
	u3(0.84927149,-pi/2,-pi/2) p0;
	u3(2.53005,-1.1590886,-2.798231) p1;
	cx p0,p1;
	u3(0.56505442,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9777013,-0.13511397,0.48487073) p0;
	u3(1.5243625,-0.38290193,-1.8168769) p1;
}
gate su4_875 p0,p1 {
	u3(2.6963362,1.2328081,-1.6602347) p0;
	u3(2.1351912,-1.2128839,-0.96804821) p1;
	cx p0,p1;
	u3(1.2309667,-pi/2,-pi/2) p0;
	u3(2.6242064,-1.0877116,-2.7138565) p1;
	cx p0,p1;
	u3(0.72357354,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1342595,1.4784879,0.3838684) p0;
	u3(1.9442207,0.026118698,-2.7618767) p1;
}
gate su4_156 p0,p1 {
	u3(0.94158553,1.8621374,-0.40185151) p0;
	u3(2.39797,1.403749,2.4863038) p1;
	cx p0,p1;
	u3(0.37561753,-pi/2,-pi/2) p0;
	u3(2.1532315,-1.2920903,-2.985472) p1;
	cx p0,p1;
	u3(0.10239056,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.95275695,-0.78478319,2.3077806) p0;
	u3(0.60258414,0.4042691,-0.412479) p1;
}
gate su4_20 p0,p1 {
	u3(1.5163127,-0.15273933,-2.9925225) p0;
	u3(1.8775972,1.378813,-0.98415604) p1;
	cx p0,p1;
	u3(0.94564117,-pi/2,-pi/2) p0;
	u3(2.7784329,-0.86745072,-2.4713097) p1;
	cx p0,p1;
	u3(0.082606141,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0449439,1.8798753,-1.2482257) p0;
	u3(0.68902839,2.2026866,0.90340812) p1;
}
gate su4_876 p0,p1 {
	u3(1.5112592,-1.6495807,-1.3192539) p0;
	u3(2.1772932,2.8340698,2.1060464) p1;
	cx p0,p1;
	u3(1.1153752,-pi/2,-pi/2) p0;
	u3(2.6748366,-1.034947,-2.6540122) p1;
	cx p0,p1;
	u3(0.65000218,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8624393,1.5110177,-2.2228802) p0;
	u3(0.63505305,-0.63688087,2.2267817) p1;
}
gate su4_163 p0,p1 {
	u3(2.1173362,-2.1373938,2.2045162) p0;
	u3(1.5703882,0.15999468,2.591046) p1;
	cx p0,p1;
	u3(0.75553685,-pi/2,-pi/2) p0;
	u3(2.241175,-1.2732169,-2.9533108) p1;
	cx p0,p1;
	u3(0.033406629,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3123333,2.7658318,-0.45127264) p0;
	u3(1.9162932,-1.0704599,-2.9744076) p1;
}
gate su4_503 p0,p1 {
	u3(2.4508947,-0.21254286,-2.8119512) p0;
	u3(2.1197617,1.0481427,2.3407684) p1;
	cx p0,p1;
	u3(0.7903214,-pi/2,-pi/2) p0;
	u3(2.5795601,-1.1250502,-2.7573693) p1;
	cx p0,p1;
	u3(0.06995317,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.23197186,0.92016218,2.633229) p0;
	u3(1.5683772,0.31663785,-1.6647848) p1;
}
gate su4_497 p0,p1 {
	u3(2.3291644,0.74880032,-2.4989908) p0;
	u3(2.704969,0.33665924,0.017876045) p1;
	cx p0,p1;
	u3(1.0268263,-pi/2,-pi/2) p0;
	u3(2.475266,-1.1899494,-2.8366597) p1;
	cx p0,p1;
	u3(0.29684145,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9117916,0.73332578,2.8908512) p0;
	u3(1.7549786,0.62108021,-1.9830209) p1;
}
gate su4_881 p0,p1 {
	u3(2.2352162,-2.0962553,-2.9950527) p0;
	u3(1.1248818,-1.1059286,1.9604591) p1;
	cx p0,p1;
	u3(1.0673316,-pi/2,-pi/2) p0;
	u3(2.7881377,-0.8449685,-2.4473033) p1;
	cx p0,p1;
	u3(0.70446639,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3733479,-1.7570013,-3.0641273) p0;
	u3(1.6937198,3.104841,-2.5480443) p1;
}
gate su4_491 p0,p1 {
	u3(2.7630789,0.45307456,-1.0321614) p0;
	u3(1.1887728,-1.2744248,2.02758) p1;
	cx p0,p1;
	u3(0.74136483,-pi/2,-pi/2) p0;
	u3(2.758249,-0.90933074,-2.5162832) p1;
	cx p0,p1;
	u3(0.26250185,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0913395,-2.9254212,0.5420938) p0;
	u3(1.8471758,-1.7914844,0.79548198) p1;
}
qreg q[8];
creg meas[8];
su4_213 q[1],q[2];
su4_318 q[3],q[0];
su4_465 q[0],q[1];
su4_730 q[3],q[2];
su4_76 q[0],q[2];
su4_506 q[0],q[2];
su4_110 q[4],q[6];
su4_867 q[6],q[4];
su4_830 q[6],q[1];
su4_908 q[1],q[6];
su4_375 q[6],q[2];
su4_192 q[5],q[7];
su4_485 q[7],q[5];
su4_587 q[3],q[7];
su4_408 q[5],q[4];
su4_29 q[5],q[3];
su4_517 q[5],q[1];
su4_755 q[7],q[4];
su4_632 q[0],q[7];
su4_116 q[0],q[1];
su4_207 q[0],q[1];
su4_235 q[2],q[7];
su4_561 q[4],q[3];
su4_875 q[4],q[5];
su4_156 q[4],q[2];
su4_20 q[4],q[0];
su4_876 q[6],q[3];
su4_163 q[5],q[6];
su4_503 q[2],q[6];
su4_497 q[5],q[1];
su4_881 q[7],q[3];
su4_491 q[7],q[3];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];
