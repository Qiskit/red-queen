OPENQASM 2.0;
include "qelib1.inc";
gate su4_227 p0,p1 {
	u3(1.421976,1.7519232,-1.8696517) p0;
	u3(2.4803229,2.026867,-1.1547339) p1;
	cx p0,p1;
	u3(0.92543196,-pi/2,-pi/2) p0;
	u3(2.795566,-0.82655724,-2.4277058) p1;
	cx p0,p1;
	u3(0.5111806,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6036031,-2.1775743,-2.7430981) p0;
	u3(2.3494401,2.8329653,-2.919083) p1;
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
gate su4_585 p0,p1 {
	u3(1.6085527,0.0061301554,1.8062451) p0;
	u3(2.1071642,2.0787772,-0.56452736) p1;
	cx p0,p1;
	u3(0.34035988,-pi/2,-pi/2) p0;
	u3(2.2541442,-1.2700027,-2.9481793) p1;
	cx p0,p1;
	u3(0.15403935,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.94856881,-1.383811,-2.8308804) p0;
	u3(1.457587,-2.9616648,-1.9607846) p1;
}
gate su4_637 p0,p1 {
	u3(2.5110424,2.4053555,-2.9961222) p0;
	u3(0.47501266,-2.0607062,1.7566624) p1;
	cx p0,p1;
	u3(0.89027507,-pi/2,-pi/2) p0;
	u3(2.4580838,-1.1984405,-2.8475347) p1;
	cx p0,p1;
	u3(0.60370905,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.99905173,0.40865028,2.6037863) p0;
	u3(2.1667853,-0.87060821,0.31207982) p1;
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
gate su4_804 p0,p1 {
	u3(1.7791825,1.8649169,2.9396546) p0;
	u3(2.1605393,-0.68878677,1.6722928) p1;
	cx p0,p1;
	u3(0.55921636,-pi/2,-pi/2) p0;
	u3(2.5859334,-1.1201497,-2.7515895) p1;
	cx p0,p1;
	u3(0.24057597,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4786731,-0.40773118,2.3608624) p0;
	u3(2.5086775,-3.1226101,2.8054549) p1;
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
gate su4_562 p0,p1 {
	u3(1.720451,1.6438925,-1.6795913) p0;
	u3(2.3766408,-0.64014335,0.79991885) p1;
	cx p0,p1;
	u3(0.65895172,-pi/2,-pi/2) p0;
	u3(2.7984424,-0.81912179,-2.419806) p1;
	cx p0,p1;
	u3(0.18414052,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1436852,-0.51779738,-2.3464594) p0;
	u3(1.8036302,-0.96261318,0.16886626) p1;
}
gate su4_840 p0,p1 {
	u3(0.45313266,-1.5511346,-0.96139699) p0;
	u3(2.6672725,0.77777426,-0.0034540261) p1;
	cx p0,p1;
	u3(0.64511626,-pi/2,-pi/2) p0;
	u3(2.4908556,-1.1817866,-2.826339) p1;
	cx p0,p1;
	u3(0.041371162,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.72293582,-1.6152514,-1.2674625) p0;
	u3(2.3312245,-1.2743188,-2.4143605) p1;
}
gate su4_883 p0,p1 {
	u3(2.5385936,0.5746378,-2.4065461) p0;
	u3(1.3517104,1.9425191,0.5101462) p1;
	cx p0,p1;
	u3(1.1107188,-pi/2,-pi/2) p0;
	u3(2.5590062,-1.1400031,-2.7751554) p1;
	cx p0,p1;
	u3(0.013431012,1.3766766e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0549639,-1.3459146,0.56995332) p0;
	u3(2.1556948,-1.7176309,2.884515) p1;
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
gate su4_659 p0,p1 {
	u3(2.0366862,2.8144162,0.20691641) p0;
	u3(2.0433511,-0.0015586945,2.4075847) p1;
	cx p0,p1;
	u3(0.88509966,-pi/2,-pi/2) p0;
	u3(2.5700524,-1.1321235,-2.7657536) p1;
	cx p0,p1;
	u3(0.58808327,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7959749,-1.9966128,0.23485822) p0;
	u3(1.119819,-0.81264083,1.1215072) p1;
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
gate su4_888 p0,p1 {
	u3(2.7771556,-2.1819257,-2.4186116) p0;
	u3(1.4805657,-3.0145948,-2.5570053) p1;
	cx p0,p1;
	u3(0.58763632,-pi/2,-pi/2) p0;
	u3(2.4556973,-1.1995802,-2.849006) p1;
	cx p0,p1;
	u3(0.15657628,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6647877,-0.76449751,-0.46252562) p0;
	u3(1.7560612,-0.4647484,-0.22754837) p1;
}
gate su4_547 p0,p1 {
	u3(2.1279455,0.61047835,-1.8454827) p0;
	u3(1.2413374,-2.686911,-3.0893884) p1;
	cx p0,p1;
	u3(0.77376019,-pi/2,-pi/2) p0;
	u3(2.7904435,-0.83937116,-2.4413397) p1;
	cx p0,p1;
	u3(0.040606838,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0887766,2.3863623,-2.2415678) p0;
	u3(1.1212034,0.077179773,2.2864225) p1;
}
gate su4_940 p0,p1 {
	u3(2.1271746,2.0831583,2.8396585) p0;
	u3(1.7475846,-2.6512851,1.6552208) p1;
	cx p0,p1;
	u3(1.0479389,-pi/2,-pi/2) p0;
	u3(2.7651246,-0.8957378,-2.5016468) p1;
	cx p0,p1;
	u3(0.32118495,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3058101,2.167176,0.22243934) p0;
	u3(1.4567742,-1.8901764,1.6494003) p1;
}
gate su4_828 p0,p1 {
	u3(1.3949109,1.2616837,2.0975206) p0;
	u3(2.9607573,-0.35581938,1.4082664) p1;
	cx p0,p1;
	u3(0.82038947,-pi/2,-pi/2) p0;
	u3(2.6141433,-1.0967783,-2.7243187) p1;
	cx p0,p1;
	u3(0.0025121944,1.0613732e-13,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.046564,-0.40927526,-2.3555444) p0;
	u3(1.462022,1.28506,-0.62605067) p1;
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
gate su4_245 p0,p1 {
	u3(1.5746223,-2.2373836,0.21999313) p0;
	u3(1.136955,2.3508414,-0.91615624) p1;
	cx p0,p1;
	u3(1.0348564,-pi/2,-pi/2) p0;
	u3(2.5663578,-1.1347984,-2.7689377) p1;
	cx p0,p1;
	u3(0.11968059,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8897877,-0.54048721,0.39593477) p0;
	u3(1.9923452,-2.414278,3.028504) p1;
}
gate su4_885 p0,p1 {
	u3(1.678715,-0.43950644,-0.73251241) p0;
	u3(0.87952616,1.4719092,-1.1478227) p1;
	cx p0,p1;
	u3(0.50446027,-pi/2,-pi/2) p0;
	u3(2.7186596,-0.97668018,-2.589483) p1;
	cx p0,p1;
	u3(0.15215357,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7748195,2.7544429,-2.1557048) p0;
	u3(1.1774792,-0.84156236,2.9413086) p1;
}
gate su4_238 p0,p1 {
	u3(2.8369027,-1.3729303,-2.3352475) p0;
	u3(1.6321781,-2.9858587,-1.8562136) p1;
	cx p0,p1;
	u3(1.0953665,-pi/2,-pi/2) p0;
	u3(2.5324954,-1.1575586,-2.796364) p1;
	cx p0,p1;
	u3(0.41950423,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0322416,-1.2559475,-2.0757375) p0;
	u3(2.0239168,1.1382561,-2.5042535) p1;
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
gate su4_836 p0,p1 {
	u3(1.68338,0.65990984,-2.904376) p0;
	u3(0.79845225,-1.5441983,2.8435467) p1;
	cx p0,p1;
	u3(0.69777443,-pi/2,-pi/2) p0;
	u3(2.2470278,-1.2717815,-2.9510089) p1;
	cx p0,p1;
	u3(0.1915828,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0178295,-0.57041245,2.0109646) p0;
	u3(0.55004469,2.5857363,0.43086882) p1;
}
gate su4_411 p0,p1 {
	u3(1.8080201,0.96182193,2.2554472) p0;
	u3(1.8710539,-2.4055538,-1.054859) p1;
	cx p0,p1;
	u3(0.98831987,-pi/2,-pi/2) p0;
	u3(2.4957478,-1.1791294,-2.8230054) p1;
	cx p0,p1;
	u3(0.53733319,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9139812,-2.4599313,2.8560073) p0;
	u3(2.0743483,-2.2368696,2.7950151) p1;
}
gate su4_253 p0,p1 {
	u3(1.8740518,-0.96969493,1.8688076) p0;
	u3(1.960358,-2.6721778,-3.033668) p1;
	cx p0,p1;
	u3(1.2354151,-pi/2,-pi/2) p0;
	u3(2.7540366,-0.917346,-2.5249331) p1;
	cx p0,p1;
	u3(0.31976704,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1452808,-1.9396068,0.22991057) p0;
	u3(1.5975165,-1.3222943,2.2972749) p1;
}
gate su4_80 p0,p1 {
	u3(1.7726865,-1.2835077,2.4783656) p0;
	u3(2.5310974,2.0396109,2.5722525) p1;
	cx p0,p1;
	u3(0.64464478,-pi/2,-pi/2) p0;
	u3(2.7805057,-0.86278886,-2.4663246) p1;
	cx p0,p1;
	u3(0.060832801,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.31692389,1.985843,-0.024457104) p0;
	u3(1.5967839,-0.5499433,-1.4632748) p1;
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
gate su4_827 p0,p1 {
	u3(1.2753262,2.1845982,-2.338218) p0;
	u3(1.5919822,-2.9966013,0.58728325) p1;
	cx p0,p1;
	u3(0.82749527,-pi/2,-pi/2) p0;
	u3(2.3401597,-1.2452435,-2.9109366) p1;
	cx p0,p1;
	u3(0.04173857,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7980243,-1.4905421,2.9469558) p0;
	u3(0.33464997,2.9822489,0.03668509) p1;
}
gate su4_748 p0,p1 {
	u3(2.9025206,2.2809755,1.6577461) p0;
	u3(0.2313219,-3.0999419,-0.7055302) p1;
	cx p0,p1;
	u3(1.3153451,-pi/2,-pi/2) p0;
	u3(2.752015,-0.92111213,-2.5290026) p1;
	cx p0,p1;
	u3(0.15264197,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.82944935,-0.58448571,-0.13090572) p0;
	u3(2.0514413,-2.6997002,-2.6646291) p1;
}
gate su4_872 p0,p1 {
	u3(1.9811872,-1.1972556,-2.8438536) p0;
	u3(1.7831325,-2.586235,-0.20720416) p1;
	cx p0,p1;
	u3(0.39870335,-pi/2,-pi/2) p0;
	u3(2.1934582,-1.2840506,-2.9712891) p1;
	cx p0,p1;
	u3(0.21146594,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3457334,2.1585931,-1.2755192) p0;
	u3(1.5429495,0.86459589,0.057751037) p1;
}
gate su4_937 p0,p1 {
	u3(2.6148058,-0.016064247,1.0245472) p0;
	u3(1.0807236,1.7326771,2.7333456) p1;
	cx p0,p1;
	u3(0.70035052,-pi/2,-pi/2) p0;
	u3(2.6677,-1.0432047,-2.6632757) p1;
	cx p0,p1;
	u3(0.23315292,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1522156,-1.335877,2.7545334) p0;
	u3(2.1488845,-2.5274635,-1.7592186) p1;
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
gate su4_529 p0,p1 {
	u3(1.0019756,1.4446479,-2.5293241) p0;
	u3(1.3812664,-0.98105319,1.604259) p1;
	cx p0,p1;
	u3(0.70373608,-pi/2,-pi/2) p0;
	u3(2.4842833,-1.1852834,-2.830745) p1;
	cx p0,p1;
	u3(0.30736685,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.57990862,1.1220115,-2.6989631) p0;
	u3(0.84425623,-1.8268166,1.6407839) p1;
}
qreg q[9];
creg meas[9];
su4_227 q[3],q[1];
su4_472 q[0],q[4];
su4_425 q[1],q[4];
su4_585 q[6],q[5];
su4_637 q[6],q[3];
su4_130 q[3],q[6];
su4_804 q[2],q[7];
su4_881 q[7],q[2];
su4_562 q[4],q[2];
su4_840 q[4],q[3];
su4_883 q[8],q[5];
su4_324 q[0],q[8];
su4_659 q[5],q[1];
su4_503 q[0],q[1];
su4_516 q[0],q[7];
su4_888 q[2],q[5];
su4_547 q[5],q[4];
su4_940 q[0],q[4];
su4_828 q[0],q[5];
su4_959 q[6],q[8];
su4_245 q[1],q[6];
su4_885 q[6],q[1];
su4_238 q[8],q[2];
su4_682 q[2],q[7];
su4_211 q[3],q[8];
su4_836 q[3],q[1];
su4_411 q[4],q[2];
su4_253 q[5],q[4];
su4_80 q[5],q[1];
su4_156 q[6],q[3];
su4_827 q[8],q[7];
su4_748 q[0],q[7];
su4_872 q[0],q[3];
su4_937 q[8],q[2];
su4_251 q[2],q[6];
su4_529 q[7],q[8];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];
measure q[8] -> meas[8];
