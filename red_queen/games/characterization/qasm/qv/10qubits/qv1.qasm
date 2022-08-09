OPENQASM 2.0;
include "qelib1.inc";
gate su4_38 p0,p1 {
	u3(0.26129831,2.7815401,-2.8279432) p0;
	u3(2.0394194,2.2386228,0.50271567) p1;
	cx p0,p1;
	u3(0.75687081,-pi/2,-pi/2) p0;
	u3(2.5532295,-1.1439863,-2.7799347) p1;
	cx p0,p1;
	u3(0.30910981,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.66235404,1.2604394,1.3012463) p0;
	u3(2.5180172,-1.2295024,-0.74081842) p1;
}
gate su4_263 p0,p1 {
	u3(2.3746956,-3.1344744,-0.7850807) p0;
	u3(1.2527351,0.036259529,-0.58153917) p1;
	cx p0,p1;
	u3(0.54647602,-pi/2,-pi/2) p0;
	u3(2.7393929,-0.94352511,-2.5532938) p1;
	cx p0,p1;
	u3(0.072196264,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8655662,0.98205537,-0.58947277) p0;
	u3(2.2682602,0.1180371,1.4901996) p1;
}
gate su4_394 p0,p1 {
	u3(2.055207,0.68560663,-1.9612141) p0;
	u3(1.0227036,2.0316194,1.6433244) p1;
	cx p0,p1;
	u3(1.0012715,-pi/2,-pi/2) p0;
	u3(2.6382687,-1.0743204,-2.6985102) p1;
	cx p0,p1;
	u3(0.1702943,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.31701567,0.58576175,2.6824284) p0;
	u3(1.6083555,-0.40062882,2.566806) p1;
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
gate su4_331 p0,p1 {
	u3(0.88986755,2.4280978,-0.6140225) p0;
	u3(2.584785,2.4015368,-1.7302688) p1;
	cx p0,p1;
	u3(0.51395361,-pi/2,-pi/2) p0;
	u3(2.1393124,-1.2946617,-2.9901966) p1;
	cx p0,p1;
	u3(0.03186051,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4133792,0.82498928,-0.99066503) p0;
	u3(1.4030338,-1.491448,-0.33860682) p1;
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
gate su4_234 p0,p1 {
	u3(1.2151577,1.5944596,0.5199352) p0;
	u3(0.30670956,-1.6304157,-2.1754541) p1;
	cx p0,p1;
	u3(1.1175123,-pi/2,-pi/2) p0;
	u3(2.6891993,-1.0173681,-2.6343988) p1;
	cx p0,p1;
	u3(0.059829254,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5365862,-1.9678519,0.50901866) p0;
	u3(1.7239661,-0.94480754,-0.26517538) p1;
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
gate su4_39 p0,p1 {
	u3(1.1245528,-2.6601122,0.83284992) p0;
	u3(0.64715284,2.8863764,2.0575451) p1;
	cx p0,p1;
	u3(0.46135584,-pi/2,-pi/2) p0;
	u3(2.794784,-0.82854834,-2.4298227) p1;
	cx p0,p1;
	u3(0.20036686,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4642564,1.6065583,-3.1033146) p0;
	u3(0.5673915,-2.9588957,-1.8209597) p1;
}
gate su4_403 p0,p1 {
	u3(1.9763437,1.6999263,-2.472036) p0;
	u3(0.952436,-0.25730606,-2.1349735) p1;
	cx p0,p1;
	u3(0.63662853,-pi/2,-pi/2) p0;
	u3(2.5827644,-1.1226027,-2.7544798) p1;
	cx p0,p1;
	u3(0.085894802,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2336266,1.3387394,-1.1658987) p0;
	u3(2.3865549,-2.2737055,-0.62335634) p1;
}
gate su4_661 p0,p1 {
	u3(1.9030673,1.2705663,-2.5003086) p0;
	u3(0.8137085,-2.7262232,-1.8362804) p1;
	cx p0,p1;
	u3(0.60183902,-pi/2,-pi/2) p0;
	u3(2.1384272,-1.2948217,-2.9904941) p1;
	cx p0,p1;
	u3(0.064378943,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.87322218,-2.1945583,-2.0718118) p0;
	u3(1.8059797,1.7056934,2.5242293) p1;
}
gate su4_457 p0,p1 {
	u3(0.83393764,1.5852705,-2.6136829) p0;
	u3(1.8546747,1.6921541,-2.0043393) p1;
	cx p0,p1;
	u3(0.81540947,-pi/2,-pi/2) p0;
	u3(2.760086,-0.90576244,-2.5124371) p1;
	cx p0,p1;
	u3(0.38345368,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0044064,-0.75326634,-0.94081182) p0;
	u3(2.3205759,0.68968373,0.6094226) p1;
}
gate su4_196 p0,p1 {
	u3(1.5980048,1.3910195,2.4054876) p0;
	u3(0.6076972,2.8881477,0.084963307) p1;
	cx p0,p1;
	u3(0.43373818,-pi/2,-pi/2) p0;
	u3(2.5509231,-1.1455512,-2.7818173) p1;
	cx p0,p1;
	u3(0.16282762,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5838654,1.8674336,0.77166278) p0;
	u3(2.4039077,1.8575702,-2.6427105) p1;
}
gate su4_55 p0,p1 {
	u3(2.944788,-3.1147266,-2.9579396) p0;
	u3(0.66855969,0.67353103,-1.8206603) p1;
	cx p0,p1;
	u3(1.0501887,-pi/2,-pi/2) p0;
	u3(2.7189762,-0.97620455,-2.5889614) p1;
	cx p0,p1;
	u3(0.35557165,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.6608177,-1.1101719,-1.430641) p0;
	u3(2.6775384,-2.9649169,0.32472497) p1;
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
gate su4_66 p0,p1 {
	u3(1.1224612,-0.54235876,-1.9824847) p0;
	u3(0.6633938,-1.4903491,-2.698193) p1;
	cx p0,p1;
	u3(1.0877526,-pi/2,-pi/2) p0;
	u3(2.646191,-1.0663776,-2.6894627) p1;
	cx p0,p1;
	u3(0.40339289,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9109043,2.3706386,1.5174375) p0;
	u3(1.1219845,0.63113826,-1.500334) p1;
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
gate su4_443 p0,p1 {
	u3(2.6627938,2.7702144,-0.74685467) p0;
	u3(0.60224047,-2.32434,0.970168) p1;
	cx p0,p1;
	u3(0.44204206,-pi/2,-pi/2) p0;
	u3(2.4594381,-1.1977896,-2.8466956) p1;
	cx p0,p1;
	u3(0.17558928,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2117489,-2.6400075,-2.7432724) p0;
	u3(1.8189409,2.9406372,2.0502137) p1;
}
gate su4_651 p0,p1 {
	u3(1.1873844,2.1073072,0.56853062) p0;
	u3(2.1424693,-0.92785914,1.966108) p1;
	cx p0,p1;
	u3(1.1460052,-pi/2,-pi/2) p0;
	u3(2.6722245,-1.0380045,-2.6574382) p1;
	cx p0,p1;
	u3(0.024403544,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4460076,0.24895496,-0.88231198) p0;
	u3(1.8375158,-2.269494,2.3715806) p1;
}
gate su4_977 p0,p1 {
	u3(2.7807429,1.7022208,0.4355568) p0;
	u3(1.7837971,1.8753006,2.2360236) p1;
	cx p0,p1;
	u3(1.1989976,-pi/2,-pi/2) p0;
	u3(2.5940465,-1.1137175,-2.7440373) p1;
	cx p0,p1;
	u3(0.19287954,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9972829,0.86357842,-0.92574004) p0;
	u3(2.5896358,2.8682777,2.390099) p1;
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
gate su4_645 p0,p1 {
	u3(2.7702742,-0.23118953,-0.75989275) p0;
	u3(1.4277256,2.0862963,-0.12735969) p1;
	cx p0,p1;
	u3(1.0522198,-pi/2,-pi/2) p0;
	u3(2.686558,-1.0207021,-2.6381081) p1;
	cx p0,p1;
	u3(0.26378431,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1764601,-0.96161987,2.5419902) p0;
	u3(1.8666777,-0.34130783,-2.5196325) p1;
}
gate su4_861 p0,p1 {
	u3(1.9486465,1.6742685,2.424327) p0;
	u3(1.6501122,-2.877584,1.4237123) p1;
	cx p0,p1;
	u3(1.0258962,-pi/2,-pi/2) p0;
	u3(2.7211605,-0.97289871,-2.5853385) p1;
	cx p0,p1;
	u3(0.12185431,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1350573,-2.7055135,3.0847386) p0;
	u3(2.1053888,0.027964413,1.9907163) p1;
}
gate su4_873 p0,p1 {
	u3(1.4050501,-2.7590827,0.5438827) p0;
	u3(2.0217531,3.007048,2.6862914) p1;
	cx p0,p1;
	u3(1.0997429,-pi/2,-pi/2) p0;
	u3(2.7135018,-0.98430534,-2.5978546) p1;
	cx p0,p1;
	u3(0.0058250487,3.1974423e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5870209,-1.5737053,-3.121586) p0;
	u3(1.2935689,-1.3139338,-3.0088712) p1;
}
gate su4_855 p0,p1 {
	u3(2.293397,-2.3819369,-0.20559904) p0;
	u3(0.6855493,-0.090849702,-2.5691317) p1;
	cx p0,p1;
	u3(0.47598397,-pi/2,-pi/2) p0;
	u3(2.4674869,-1.1938569,-2.8416457) p1;
	cx p0,p1;
	u3(0.33300148,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2299167,1.9226113,-2.180326) p0;
	u3(1.5912716,-1.7660855,3.1365672) p1;
}
gate su4_960 p0,p1 {
	u3(2.0169519,-2.4312008,-0.96618733) p0;
	u3(1.6915805,-1.4938497,2.0058709) p1;
	cx p0,p1;
	u3(0.96964151,-pi/2,-pi/2) p0;
	u3(2.5697718,-1.1323281,-2.7659968) p1;
	cx p0,p1;
	u3(0.16071068,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.49516623,-0.3321749,-1.1520178) p0;
	u3(1.4841752,-1.1359517,-0.25789898) p1;
}
gate su4_279 p0,p1 {
	u3(1.6178222,0.17436924,-1.1495161) p0;
	u3(1.6869642,1.7598509,-0.3786781) p1;
	cx p0,p1;
	u3(0.81354178,-pi/2,-pi/2) p0;
	u3(2.5059806,-1.1734158,-2.8158783) p1;
	cx p0,p1;
	u3(0.4066677,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2805825,0.2065787,2.3664857) p0;
	u3(0.91417641,0.2111804,-0.83242076) p1;
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
gate su4_510 p0,p1 {
	u3(1.2029319,-2.9340851,0.46005999) p0;
	u3(2.1253521,2.6524581,0.28097867) p1;
	cx p0,p1;
	u3(0.79745657,-pi/2,-pi/2) p0;
	u3(2.3089725,-1.2549679,-2.9251435) p1;
	cx p0,p1;
	u3(0.28619558,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2494616,-0.64268505,2.4337383) p0;
	u3(2.7204893,-1.5475813,0.79959247) p1;
}
gate su4_251 p0,p1 {
	u3(2.0653876,2.3332049,2.9655368) p0;
	u3(1.580439,2.9867382,1.8847049) p1;
	cx p0,p1;
	u3(0.69071338,-pi/2,-pi/2) p0;
	u3(2.5940443,-1.1137193,-2.7440394) p1;
	cx p0,p1;
	u3(0.11787478,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9515775,-0.51114068,-1.5668942) p0;
	u3(2.6394588,-2.2962014,-1.3748983) p1;
}
gate su4_923 p0,p1 {
	u3(1.694453,-1.4338493,-1.4867115) p0;
	u3(2.4757003,-2.7886791,-1.2067938) p1;
	cx p0,p1;
	u3(1.0006589,-pi/2,-pi/2) p0;
	u3(2.7861213,-0.84978008,-2.4524338) p1;
	cx p0,p1;
	u3(0.43181583,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5577394,-2.956737,-2.9517711) p0;
	u3(0.88214288,-1.3018007,1.5918993) p1;
}
gate su4_15 p0,p1 {
	u3(2.4354191,2.9707215,1.0012224) p0;
	u3(1.177929,-2.7442866,-2.4078943) p1;
	cx p0,p1;
	u3(0.30721657,-pi/2,-pi/2) p0;
	u3(2.484023,-1.1854202,-2.8309178) p1;
	cx p0,p1;
	u3(0.12912597,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3136086,-0.76385212,-0.34974616) p0;
	u3(2.0485505,-0.56618345,-0.056914081) p1;
}
gate su4_505 p0,p1 {
	u3(0.76396193,1.2067195,1.1119164) p0;
	u3(1.3718894,-0.51573493,-2.461893) p1;
	cx p0,p1;
	u3(0.791405,-pi/2,-pi/2) p0;
	u3(2.5396928,-1.1529711,-2.7907846) p1;
	cx p0,p1;
	u3(0.54414708,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.90792091,-0.011513767,-1.0188161) p0;
	u3(1.9398523,-1.1974691,-1.4501681) p1;
}
gate su4_858 p0,p1 {
	u3(1.9430639,-2.3883673,-2.8592224) p0;
	u3(2.0360015,-3.0545917,1.1006483) p1;
	cx p0,p1;
	u3(1.093197,-pi/2,-pi/2) p0;
	u3(2.5488675,-1.1469339,-2.7834833) p1;
	cx p0,p1;
	u3(0.68176503,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0945475,0.062960481,-3.0266528) p0;
	u3(1.2360188,-2.2010802,0.382737) p1;
}
gate su4_255 p0,p1 {
	u3(0.99404,-1.9435959,-2.4313208) p0;
	u3(1.3703238,-1.8885663,0.49339673) p1;
	cx p0,p1;
	u3(0.38839071,-pi/2,-pi/2) p0;
	u3(2.5845442,-1.1212291,-2.7528606) p1;
	cx p0,p1;
	u3(0.034338119,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4269679,-1.7414055,2.8898349) p0;
	u3(2.0091251,0.86441633,-2.4890356) p1;
}
gate su4_87 p0,p1 {
	u3(1.2334269,1.5448245,0.89940145) p0;
	u3(2.5453833,-2.1659102,0.14784684) p1;
	cx p0,p1;
	u3(0.57044976,-pi/2,-pi/2) p0;
	u3(2.7891237,-0.8425877,-2.4447661) p1;
	cx p0,p1;
	u3(0.14008447,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.8087498,3.0286061,-0.20380457) p0;
	u3(2.638252,2.5188314,-0.26293993) p1;
}
gate su4_107 p0,p1 {
	u3(0.57085158,1.0874444,1.4295665) p0;
	u3(1.7255715,-0.45028063,-0.44612645) p1;
	cx p0,p1;
	u3(1.1165104,-pi/2,-pi/2) p0;
	u3(2.6341355,-1.0783477,-2.7031128) p1;
	cx p0,p1;
	u3(0.2306754,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8104627,-2.4958609,-2.8172657) p0;
	u3(1.0098952,-1.8888169,1.1152785) p1;
}
gate su4_783 p0,p1 {
	u3(0.42247754,-3.0736793,-2.9583672) p0;
	u3(2.2200285,1.1688548,0.47567121) p1;
	cx p0,p1;
	u3(0.47275932,-pi/2,-pi/2) p0;
	u3(2.6334508,-1.0790073,-2.7038677) p1;
	cx p0,p1;
	u3(0.096829468,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5188559,-1.8204958,-1.3201378) p0;
	u3(1.5754617,-2.0511216,-2.9478118) p1;
}
gate su4_756 p0,p1 {
	u3(1.723131,1.5938998,-1.1927684) p0;
	u3(2.7599645,2.4309567,-0.93321281) p1;
	cx p0,p1;
	u3(0.14189799,-pi/2,-pi/2) p0;
	u3(2.52077,-1.1647666,-2.8051885) p1;
	cx p0,p1;
	u3(0.0029900359,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.86104893,-1.3301162,1.2805778) p0;
	u3(1.7329012,-2.8680623,-2.2729418) p1;
}
gate su4_516 p0,p1 {
	u3(1.4900592,-3.1282879,-1.9821639) p0;
	u3(2.1776158,-1.3525145,1.9406813) p1;
	cx p0,p1;
	u3(0.77564542,-pi/2,-pi/2) p0;
	u3(2.3865554,-1.2289245,-2.8880283) p1;
	cx p0,p1;
	u3(0.20961311,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.075946,-1.5328013,2.3688628) p0;
	u3(2.3767657,-2.9298672,-1.5590138) p1;
}
gate su4_390 p0,p1 {
	u3(2.2484239,2.498342,0.75608891) p0;
	u3(0.50575712,-0.40038701,1.9636995) p1;
	cx p0,p1;
	u3(0.61895795,-pi/2,-pi/2) p0;
	u3(2.6682439,-1.0425859,-2.6625803) p1;
	cx p0,p1;
	u3(0.1074433,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3359888,-2.6782716,0.37699545) p0;
	u3(1.1858379,1.9298529,-0.72854999) p1;
}
gate su4_472 p0,p1 {
	u3(0.79952722,1.1256724,-2.3448341) p0;
	u3(2.6938795,2.3151646,-2.9732065) p1;
	cx p0,p1;
	u3(0.58073773,-pi/2,-pi/2) p0;
	u3(2.3346526,-1.2470287,-2.91351) p1;
	cx p0,p1;
	u3(0.28306217,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.58001356,-0.96964286,1.7543215) p0;
	u3(0.60540621,0.96066262,-2.4751641) p1;
}
gate su4_50 p0,p1 {
	u3(0.4759968,-3.1198439,1.5561688) p0;
	u3(1.5601364,-2.0315475,3.0706481) p1;
	cx p0,p1;
	u3(0.72769899,-pi/2,-pi/2) p0;
	u3(2.5789634,-1.1255024,-2.7579038) p1;
	cx p0,p1;
	u3(0.17258296,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8092522,1.4836246,1.4558474) p0;
	u3(1.3210774,2.9536008,2.9111643) p1;
}
gate su4_511 p0,p1 {
	u3(1.4944851,-0.27895016,0.20705084) p0;
	u3(1.3938993,0.25773099,-0.49587001) p1;
	cx p0,p1;
	u3(1.0089825,-pi/2,-pi/2) p0;
	u3(2.5813173,-1.1237122,-2.7557889) p1;
	cx p0,p1;
	u3(0.58160133,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.569579,1.8768674,0.9279136) p0;
	u3(1.2773195,1.5399603,-2.7477752) p1;
}
qreg q[10];
creg meas[10];
su4_38 q[3],q[4];
su4_263 q[1],q[5];
su4_394 q[1],q[4];
su4_843 q[0],q[7];
su4_331 q[7],q[0];
su4_862 q[2],q[8];
su4_234 q[2],q[3];
su4_902 q[4],q[2];
su4_29 q[7],q[3];
su4_425 q[9],q[6];
su4_39 q[8],q[6];
su4_403 q[1],q[8];
su4_661 q[1],q[2];
su4_457 q[1],q[2];
su4_196 q[9],q[5];
su4_55 q[6],q[5];
su4_668 q[4],q[6];
su4_860 q[8],q[5];
su4_66 q[5],q[8];
su4_408 q[1],q[8];
su4_443 q[9],q[0];
su4_651 q[3],q[0];
su4_977 q[3],q[6];
su4_719 q[7],q[9];
su4_645 q[7],q[0];
su4_861 q[3],q[0];
su4_873 q[5],q[7];
su4_855 q[1],q[5];
su4_960 q[8],q[3];
su4_279 q[3],q[1];
su4_207 q[9],q[4];
su4_250 q[2],q[9];
su4_273 q[6],q[4];
su4_510 q[2],q[4];
su4_251 q[6],q[7];
su4_923 q[2],q[6];
su4_15 q[4],q[7];
su4_505 q[3],q[4];
su4_510 q[7],q[2];
su4_858 q[9],q[0];
su4_255 q[0],q[8];
su4_87 q[6],q[8];
su4_107 q[6],q[7];
su4_783 q[9],q[5];
su4_756 q[5],q[1];
su4_516 q[4],q[1];
su4_390 q[5],q[8];
su4_472 q[9],q[0];
su4_50 q[3],q[0];
su4_511 q[9],q[2];
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
