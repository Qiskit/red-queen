OPENQASM 2.0;
include "qelib1.inc";
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
gate su4_158 p0,p1 {
	u3(2.2559871,-1.6471768,-0.62767627) p0;
	u3(1.1065873,-1.2317565,1.957969) p1;
	cx p0,p1;
	u3(0.66759407,-pi/2,-pi/2) p0;
	u3(2.7011228,-1.0017071,-2.6170366) p1;
	cx p0,p1;
	u3(0.33463418,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.9088424,-3.0739541,-1.4198882) p0;
	u3(0.80336175,-1.416786,-0.48501538) p1;
}
gate su4_820 p0,p1 {
	u3(2.3397185,-2.8691168,1.9541651) p0;
	u3(1.3928566,-1.0336507,-2.707957) p1;
	cx p0,p1;
	u3(0.69818305,-pi/2,-pi/2) p0;
	u3(2.6915224,-1.0143963,-2.6310965) p1;
	cx p0,p1;
	u3(0.19033187,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.87510775,-1.810854,0.089299109) p0;
	u3(2.368679,0.2995359,0.49970317) p1;
}
gate su4_133 p0,p1 {
	u3(0.8981299,-2.0988276,2.9070401) p0;
	u3(1.1363487,-1.8374921,-0.95023463) p1;
	cx p0,p1;
	u3(0.56465127,-pi/2,-pi/2) p0;
	u3(2.4991844,-1.1772343,-2.8206355) p1;
	cx p0,p1;
	u3(0.17245918,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8701926,-1.1100837,-0.62927211) p0;
	u3(2.1325974,-1.3253184,-0.48694907) p1;
}
gate su4_271 p0,p1 {
	u3(1.8943325,-1.5647277,2.6057825) p0;
	u3(2.2100773,2.7865287,3.0162677) p1;
	cx p0,p1;
	u3(0.93257259,-pi/2,-pi/2) p0;
	u3(2.7562989,-0.91306992,-2.5203166) p1;
	cx p0,p1;
	u3(0.63156231,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.26604664,-1.0745806,-2.4102464) p0;
	u3(1.0912258,-2.1278959,2.2323578) p1;
}
gate su4_604 p0,p1 {
	u3(1.6995872,2.9881229,-0.78536723) p0;
	u3(1.5540044,-1.274291,0.41789828) p1;
	cx p0,p1;
	u3(0.63757884,-pi/2,-pi/2) p0;
	u3(2.7939408,-0.83068099,-2.4320907) p1;
	cx p0,p1;
	u3(0.0084298323,2.220446e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.40337328,2.5342723,-0.90583828) p0;
	u3(2.4472485,0.18606625,1.7482297) p1;
}
gate su4_212 p0,p1 {
	u3(2.5159894,1.7808522,-0.89074767) p0;
	u3(1.0170227,-0.050298969,0.79363027) p1;
	cx p0,p1;
	u3(0.74300722,-pi/2,-pi/2) p0;
	u3(2.8108654,-0.78481664,-2.3834581) p1;
	cx p0,p1;
	u3(0.23237787,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.58012008,-0.77131502,-0.30426767) p0;
	u3(2.4463107,2.6110649,-1.1042992) p1;
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
gate su4_759 p0,p1 {
	u3(2.6102765,-0.63968662,2.5678754) p0;
	u3(1.3256507,0.28396408,2.1777661) p1;
	cx p0,p1;
	u3(0.93866959,-pi/2,-pi/2) p0;
	u3(2.6855824,-1.0219216,-2.6394661) p1;
	cx p0,p1;
	u3(0.3494244,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5734616,-0.26890475,0.3620934) p0;
	u3(1.0464438,-2.2287083,2.1135335) p1;
}
gate su4_634 p0,p1 {
	u3(0.47626357,1.6765647,-1.399113) p0;
	u3(0.44618374,0.053600561,0.55492672) p1;
	cx p0,p1;
	u3(0.52619181,-pi/2,-pi/2) p0;
	u3(2.7441306,-0.93532745,-2.5443942) p1;
	cx p0,p1;
	u3(0.15658647,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.406726,1.4589055,3.0624518) p0;
	u3(0.92403632,-0.19402756,2.8019022) p1;
}
gate su4_967 p0,p1 {
	u3(1.4503254,2.507315,-1.3596075) p0;
	u3(1.5167427,-1.9691763,2.8877811) p1;
	cx p0,p1;
	u3(0.28424926,-pi/2,-pi/2) p0;
	u3(2.1284903,-1.2965905,-2.9938099) p1;
	cx p0,p1;
	u3(0.030212974,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9383289,1.2612869,-2.4122878) p0;
	u3(0.82097008,1.3227482,1.1537471) p1;
}
gate su4_175 p0,p1 {
	u3(0.93326574,-2.2258341,0.22592296) p0;
	u3(2.7095992,-1.58364,1.9449001) p1;
	cx p0,p1;
	u3(0.94841614,-pi/2,-pi/2) p0;
	u3(2.6959009,-1.0086921,-2.6247681) p1;
	cx p0,p1;
	u3(0.16814349,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.61941209,-0.87906276,-2.441488) p0;
	u3(2.1827683,2.2855463,0.42108813) p1;
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
gate su4_303 p0,p1 {
	u3(1.3348871,-2.9949056,-2.0343899) p0;
	u3(1.4626691,-1.420882,-2.958709) p1;
	cx p0,p1;
	u3(0.38197618,-pi/2,-pi/2) p0;
	u3(2.6755433,-1.0341127,-2.6530782) p1;
	cx p0,p1;
	u3(0.078810177,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0966056,1.2338349,-0.95328034) p0;
	u3(1.2739934,-1.7659199,-3.0937475) p1;
}
gate su4_382 p0,p1 {
	u3(2.2489792,-2.3964022,0.21142478) p0;
	u3(1.0374461,1.5226499,1.0202327) p1;
	cx p0,p1;
	u3(0.85626548,-pi/2,-pi/2) p0;
	u3(2.7352339,-0.95052041,-2.5609025) p1;
	cx p0,p1;
	u3(0.069820129,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2689805,-1.6886191,-2.1264188) p0;
	u3(1.7450433,1.7392297,1.5612951) p1;
}
gate su4_513 p0,p1 {
	u3(1.4155258,-1.4814966,2.9937767) p0;
	u3(2.4058192,0.26779636,-1.8037072) p1;
	cx p0,p1;
	u3(0.8389386,-pi/2,-pi/2) p0;
	u3(2.5981814,-1.1103525,-2.7401011) p1;
	cx p0,p1;
	u3(0.045386021,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.38224288,0.48456827,-1.6565681) p0;
	u3(1.0273508,-2.2071168,2.2939208) p1;
}
gate su4_117 p0,p1 {
	u3(0.88606491,0.88904275,-1.3674591) p0;
	u3(2.5323753,-0.18067273,-3.067937) p1;
	cx p0,p1;
	u3(1.2947739,-pi/2,-pi/2) p0;
	u3(2.7460921,-0.93185942,-2.5406346) p1;
	cx p0,p1;
	u3(0.37778958,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.59012457,0.70487269,1.3143234) p0;
	u3(1.8774121,-1.2750105,-0.81962319) p1;
}
gate su4_558 p0,p1 {
	u3(0.97138154,2.3968487,-2.417465) p0;
	u3(0.14825439,-2.0975484,0.87047214) p1;
	cx p0,p1;
	u3(0.86056742,-pi/2,-pi/2) p0;
	u3(2.7191361,-0.97596396,-2.5886976) p1;
	cx p0,p1;
	u3(0.062928769,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9231936,-2.0492227,2.7664249) p0;
	u3(0.71172563,2.2305574,-1.8912202) p1;
}
gate su4_862 p0,p1 {
	u3(0.40748287,-1.3876679,-0.71804272) p0;
	u3(1.1710506,2.7490117,1.2517561) p1;
	cx p0,p1;
	u3(0.69502956,-pi/2,-pi/2) p0;
	u3(2.773111,-0.87909399,-2.4837779) p1;
	cx p0,p1;
	u3(0.27050459,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.44938102,2.8213069,-0.83267484) p0;
	u3(1.3545628,0.40685411,-1.5163552) p1;
}
gate su4_698 p0,p1 {
	u3(1.5320005,-0.58336662,-1.176747) p0;
	u3(1.0456299,2.4125159,1.1907722) p1;
	cx p0,p1;
	u3(0.46233875,-pi/2,-pi/2) p0;
	u3(2.7349441,-0.95100104,-2.5614257) p1;
	cx p0,p1;
	u3(0.10644742,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2496186,-1.1164709,2.1898221) p0;
	u3(1.7011195,0.076710997,-1.9266993) p1;
}
gate su4_392 p0,p1 {
	u3(1.8202231,0.82623093,1.8081118) p0;
	u3(0.7393238,2.8318911,-0.073782748) p1;
	cx p0,p1;
	u3(1.0204235,-pi/2,-pi/2) p0;
	u3(2.7487089,-0.92716295,-2.535548) p1;
	cx p0,p1;
	u3(0.044220711,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9457168,-2.4897564,0.79295548) p0;
	u3(2.5503765,-0.39093269,-1.5494422) p1;
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
gate su4_880 p0,p1 {
	u3(1.7151177,1.0485188,1.4472121) p0;
	u3(1.7737844,2.7949535,-1.9682401) p1;
	cx p0,p1;
	u3(0.70450179,-pi/2,-pi/2) p0;
	u3(2.6666654,-1.044377,-2.6645935) p1;
	cx p0,p1;
	u3(0.49948723,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3224751,1.7748703,-1.7251747) p0;
	u3(1.7647393,1.9715725,1.8905012) p1;
}
gate su4_3 p0,p1 {
	u3(1.7154245,1.4544676,1.7658996) p0;
	u3(2.5537672,-0.21568865,-1.9044731) p1;
	cx p0,p1;
	u3(0.80330418,-pi/2,-pi/2) p0;
	u3(2.5567211,-1.1415898,-2.777057) p1;
	cx p0,p1;
	u3(0.54734419,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4171603,2.4096884,1.2706478) p0;
	u3(2.0125436,2.3447458,2.637524) p1;
}
gate su4_396 p0,p1 {
	u3(1.1873933,-1.8000285,-0.96995111) p0;
	u3(1.4598833,2.7028947,-0.38742725) p1;
	cx p0,p1;
	u3(0.94012604,-pi/2,-pi/2) p0;
	u3(2.6178419,-1.0934937,-2.7205215) p1;
	cx p0,p1;
	u3(0.61572086,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.92732942,0.79789758,1.6176388) p0;
	u3(0.91720991,-2.1140836,2.1675364) p1;
}
gate su4_154 p0,p1 {
	u3(1.6110801,-0.053728374,-1.9954061) p0;
	u3(1.7077179,1.1802229,-2.7827971) p1;
	cx p0,p1;
	u3(0.93262376,-pi/2,-pi/2) p0;
	u3(2.7778036,-0.86885182,-2.4728088) p1;
	cx p0,p1;
	u3(0.21912678,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.81071213,1.6560344,-0.93821681) p0;
	u3(1.3068866,2.2338191,0.91984514) p1;
}
gate su4_77 p0,p1 {
	u3(1.0591904,1.4999396,-1.8600374) p0;
	u3(2.031499,-0.47924615,-2.0971981) p1;
	cx p0,p1;
	u3(0.46730552,-pi/2,-pi/2) p0;
	u3(2.7982061,-0.81973929,-2.4204617) p1;
	cx p0,p1;
	u3(0.18687268,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4819204,2.5277277,-1.0690376) p0;
	u3(1.7607582,2.6197422,2.126947) p1;
}
gate su4_592 p0,p1 {
	u3(1.5661261,2.4362827,-1.7656964) p0;
	u3(0.24576105,-2.2844531,0.33162075) p1;
	cx p0,p1;
	u3(0.66547649,-pi/2,-pi/2) p0;
	u3(2.4688367,-1.1931865,-2.8407881) p1;
	cx p0,p1;
	u3(0.55352936,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1323077,-0.17554289,-0.60700439) p0;
	u3(1.2375077,1.2564531,1.0363466) p1;
}
gate su4_100 p0,p1 {
	u3(1.895609,-2.7850347,-1.7118909) p0;
	u3(2.8378032,-2.334399,1.7616539) p1;
	cx p0,p1;
	u3(0.73759985,-pi/2,-pi/2) p0;
	u3(2.7087006,-0.99120081,-2.6054424) p1;
	cx p0,p1;
	u3(0.33325444,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.9170551,-1.8579495,-0.69071104) p0;
	u3(2.686751,-0.22113846,0.89872687) p1;
}
gate su4_96 p0,p1 {
	u3(0.50641105,0.21724799,-0.21195798) p0;
	u3(2.2550402,2.6634625,-0.33992922) p1;
	cx p0,p1;
	u3(0.64576427,-pi/2,-pi/2) p0;
	u3(2.5081341,-1.1721858,-2.814351) p1;
	cx p0,p1;
	u3(0.009467678,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9419381,2.1943129,2.9674956) p0;
	u3(2.206462,-2.1234154,1.4557985) p1;
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
gate su4_665 p0,p1 {
	u3(2.0169674,-1.3973914,0.62777872) p0;
	u3(1.4925234,0.040067338,2.8422411) p1;
	cx p0,p1;
	u3(0.52208983,-pi/2,-pi/2) p0;
	u3(2.5645626,-1.1360836,-2.7704703) p1;
	cx p0,p1;
	u3(0.22212498,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.14789752,2.5648861,-0.02059603) p0;
	u3(2.4013882,-1.5900861,-1.7122357) p1;
}
gate su4_474 p0,p1 {
	u3(2.0707777,-1.5970045,-2.0896421) p0;
	u3(1.5511061,0.65343532,-2.7080655) p1;
	cx p0,p1;
	u3(0.55989822,-pi/2,-pi/2) p0;
	u3(2.2528677,-1.2703245,-2.9486894) p1;
	cx p0,p1;
	u3(0.063666336,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5793077,-0.23075109,1.8911809) p0;
	u3(2.169632,-2.9032263,-2.5866507) p1;
}
gate su4_912 p0,p1 {
	u3(1.4973872,-1.8855493,1.8725822) p0;
	u3(0.54897799,0.30514158,0.54750434) p1;
	cx p0,p1;
	u3(1.0789903,-pi/2,-pi/2) p0;
	u3(2.7486608,-0.92724997,-2.5356422) p1;
	cx p0,p1;
	u3(0.85612216,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.76752386,-0.42938232,-0.057569159) p0;
	u3(1.4571707,0.65432793,-0.29693423) p1;
}
gate su4_900 p0,p1 {
	u3(2.5334807,0.53227909,-1.7719053) p0;
	u3(0.64235655,-1.0096123,2.7750377) p1;
	cx p0,p1;
	u3(0.77920154,-pi/2,-pi/2) p0;
	u3(2.5982242,-1.1103173,-2.74006) p1;
	cx p0,p1;
	u3(0.15812889,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1408518,-0.81782483,2.1649074) p0;
	u3(1.7509478,2.1408991,-1.1641597) p1;
}
gate su4_202 p0,p1 {
	u3(1.3803901,0.66056381,2.2338862) p0;
	u3(2.2460294,0.95767127,-0.66814763) p1;
	cx p0,p1;
	u3(0.75693285,-pi/2,-pi/2) p0;
	u3(2.6977931,-1.0061843,-2.6219901) p1;
	cx p0,p1;
	u3(0.38301419,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2182094,2.6816698,-3.0096555) p0;
	u3(2.2249124,-2.220863,1.3259825) p1;
}
gate su4_144 p0,p1 {
	u3(2.5527972,1.8363314,-2.4407894) p0;
	u3(1.1499763,-2.2473666,-3.1146243) p1;
	cx p0,p1;
	u3(0.59694888,-pi/2,-pi/2) p0;
	u3(2.5111678,-1.1704363,-2.8121829) p1;
	cx p0,p1;
	u3(0.3849367,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0068956,-0.78034685,0.91174374) p0;
	u3(1.4071569,1.3571424,1.8293297) p1;
}
gate su4_33 p0,p1 {
	u3(1.2591187,-2.4651015,1.9406429) p0;
	u3(1.9995827,-1.5353931,1.0536493) p1;
	cx p0,p1;
	u3(0.46813706,-pi/2,-pi/2) p0;
	u3(2.1546295,-1.2918263,-2.9849925) p1;
	cx p0,p1;
	u3(0.22609077,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.90601434,-0.97298811,2.9917093) p0;
	u3(2.8475946,2.5213451,2.0838989) p1;
}
gate su4_130 p0,p1 {
	u3(1.1043379,2.8125349,0.99599956) p0;
	u3(0.62113902,0.68013786,-3.1047475) p1;
	cx p0,p1;
	u3(1.2846336,-pi/2,-pi/2) p0;
	u3(2.6197053,-1.0918181,-2.7185875) p1;
	cx p0,p1;
	u3(0.4350718,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.54923484,0.67554432,1.0005951) p0;
	u3(1.895496,1.1623121,-0.86828887) p1;
}
gate su4_273 p0,p1 {
	u3(1.6195957,-0.5122379,-2.6570474) p0;
	u3(0.41926018,-1.7373642,-1.5111988) p1;
	cx p0,p1;
	u3(0.72010473,-pi/2,-pi/2) p0;
	u3(2.4683361,-1.1934355,-2.8411065) p1;
	cx p0,p1;
	u3(0.089450441,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.62919929,1.2707382,3.045882) p0;
	u3(2.0088495,0.52505741,1.7214653) p1;
}
gate su4_668 p0,p1 {
	u3(2.7330589,-2.8035125,-1.0473767) p0;
	u3(1.9799935,-0.6908435,2.610944) p1;
	cx p0,p1;
	u3(1.1334735,-pi/2,-pi/2) p0;
	u3(2.5766572,-1.1272394,-2.7599589) p1;
	cx p0,p1;
	u3(0.21567114,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6773497,0.085226371,1.9877605) p0;
	u3(1.2404905,-2.0227696,-2.0414159) p1;
}
gate su4_845 p0,p1 {
	u3(1.7674295,-1.6710552,-2.4439037) p0;
	u3(2.1944547,-0.43196721,0.020391419) p1;
	cx p0,p1;
	u3(0.43927768,-pi/2,-pi/2) p0;
	u3(2.6518751,-1.06049,-2.6827808) p1;
	cx p0,p1;
	u3(0.25735924,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.75825009,-2.4080446,-2.1574845) p0;
	u3(2.6307619,2.0493968,2.7134149) p1;
}
gate su4_323 p0,p1 {
	u3(0.8552938,1.6833394,2.0491238) p0;
	u3(0.27038743,-0.80379437,-1.4117306) p1;
	cx p0,p1;
	u3(0.61912426,-pi/2,-pi/2) p0;
	u3(2.3439685,-1.2439911,-2.9091398) p1;
	cx p0,p1;
	u3(0.15038653,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6817387,0.29925076,0.8351312) p0;
	u3(1.1115808,1.9468053,-0.56573909) p1;
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
gate su4_751 p0,p1 {
	u3(0.97829727,0.95623718,0.51479585) p0;
	u3(1.6380451,0.2489167,1.7410344) p1;
	cx p0,p1;
	u3(1.0180668,-pi/2,-pi/2) p0;
	u3(2.5335438,-1.1568983,-2.7955591) p1;
	cx p0,p1;
	u3(0.49977125,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0257676,0.87232534,0.40157025) p0;
	u3(1.6374117,0.21128032,-1.7299636) p1;
}
gate su4_64 p0,p1 {
	u3(2.24287,-2.3537112,1.3610994) p0;
	u3(0.43926516,2.895173,-2.6688022) p1;
	cx p0,p1;
	u3(0.43808347,-pi/2,-pi/2) p0;
	u3(2.6751112,-1.0346233,-2.6536498) p1;
	cx p0,p1;
	u3(0.33824481,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.48544591,-2.2668053,1.1418169) p0;
	u3(2.2089547,1.3273815,-0.88247719) p1;
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
gate su4_705 p0,p1 {
	u3(2.1068627,-0.66163092,0.10309382) p0;
	u3(0.67354485,2.6806041,-0.82860541) p1;
	cx p0,p1;
	u3(0.73279643,-pi/2,-pi/2) p0;
	u3(2.6389952,-1.0736045,-2.6976931) p1;
	cx p0,p1;
	u3(0.14951599,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6156575,0.94966218,-2.7056292) p0;
	u3(2.3134754,2.3353371,0.96656036) p1;
}
qreg q[10];
creg meas[10];
su4_875 q[5],q[0];
su4_158 q[6],q[2];
su4_820 q[5],q[2];
su4_133 q[7],q[1];
su4_271 q[8],q[3];
su4_604 q[3],q[0];
su4_212 q[5],q[3];
su4_182 q[3],q[5];
su4_759 q[5],q[3];
su4_634 q[8],q[6];
su4_967 q[6],q[8];
su4_175 q[4],q[9];
su4_361 q[4],q[7];
su4_303 q[4],q[2];
su4_382 q[2],q[8];
su4_513 q[9],q[1];
su4_117 q[0],q[9];
su4_558 q[0],q[6];
su4_862 q[0],q[6];
su4_698 q[1],q[7];
su4_392 q[1],q[9];
su4_864 q[2],q[1];
su4_880 q[1],q[5];
su4_3 q[3],q[2];
su4_396 q[4],q[7];
su4_154 q[4],q[9];
su4_77 q[4],q[6];
su4_592 q[3],q[4];
su4_100 q[3],q[4];
su4_96 q[5],q[1];
su4_315 q[8],q[7];
su4_532 q[8],q[7];
su4_665 q[8],q[6];
su4_474 q[8],q[1];
su4_912 q[3],q[1];
su4_900 q[9],q[0];
su4_202 q[0],q[2];
su4_144 q[5],q[0];
su4_33 q[6],q[2];
su4_130 q[2],q[8];
su4_273 q[6],q[4];
su4_668 q[1],q[4];
su4_845 q[7],q[9];
su4_323 q[7],q[9];
su4_719 q[7],q[0];
su4_532 q[2],q[7];
su4_751 q[8],q[6];
su4_64 q[9],q[5];
su4_81 q[0],q[9];
su4_705 q[5],q[3];
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
