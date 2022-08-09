OPENQASM 2.0;
include "qelib1.inc";
gate su4_904 p0,p1 {
	u3(0.93812927,-0.23336958,0.0096719919) p0;
	u3(0.75551323,-1.1831928,2.7146399) p1;
	cx p0,p1;
	u3(1.0498123,-pi/2,-pi/2) p0;
	u3(2.7153683,-0.9815725,-2.594852) p1;
	cx p0,p1;
	u3(0.10964201,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4253518,-0.40001089,2.4910491) p0;
	u3(2.0220577,-1.4740737,0.51789257) p1;
}
gate su4_555 p0,p1 {
	u3(1.433793,0.40852771,0.86100302) p0;
	u3(1.6701891,2.4888387,-2.8639714) p1;
	cx p0,p1;
	u3(0.46856151,-pi/2,-pi/2) p0;
	u3(2.807163,-0.79543473,-2.3946917) p1;
	cx p0,p1;
	u3(0.14204863,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0319029,-2.8338109,0.481985) p0;
	u3(1.5770174,2.7795544,-2.6379737) p1;
}
gate su4_762 p0,p1 {
	u3(0.37245498,-3.1355425,0.51119951) p0;
	u3(1.8866206,-0.37797376,1.6674894) p1;
	cx p0,p1;
	u3(0.56592813,-pi/2,-pi/2) p0;
	u3(2.7514854,-0.92209051,-2.5300604) p1;
	cx p0,p1;
	u3(0.10292677,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7163874,-1.6537277,1.0415772) p0;
	u3(1.235668,-2.7129614,-0.087094254) p1;
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
gate su4_460 p0,p1 {
	u3(0.66967391,-0.35783559,2.3912197) p0;
	u3(2.3273057,2.8170545,-0.56814573) p1;
	cx p0,p1;
	u3(0.75193504,-pi/2,-pi/2) p0;
	u3(2.5806155,-1.1242477,-2.7564212) p1;
	cx p0,p1;
	u3(0.2785951,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6835755,2.7481713,-2.9260993) p0;
	u3(0.70402288,-0.38007031,0.62492501) p1;
}
gate su4_200 p0,p1 {
	u3(1.909919,-0.49771894,-2.2011427) p0;
	u3(1.2257657,-0.56240826,-0.61366034) p1;
	cx p0,p1;
	u3(0.41844369,-pi/2,-pi/2) p0;
	u3(2.7893161,-0.8421207,-2.4442685) p1;
	cx p0,p1;
	u3(0.070271833,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7832149,-1.1621312,-1.6331669) p0;
	u3(1.4661356,0.51036565,-1.9788717) p1;
}
gate su4_477 p0,p1 {
	u3(1.798646,2.1743512,-2.3975378) p0;
	u3(1.2527552,-2.1713465,0.70516176) p1;
	cx p0,p1;
	u3(0.91142772,-pi/2,-pi/2) p0;
	u3(2.7770416,-0.87053935,-2.4746147) p1;
	cx p0,p1;
	u3(0.043654058,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0615184,-2.3141724,-1.7160324) p0;
	u3(1.3710799,-0.67613285,-1.5373328) p1;
}
gate su4_224 p0,p1 {
	u3(2.1165019,-2.5261014,2.5706557) p0;
	u3(2.5582153,-0.3095269,1.3693253) p1;
	cx p0,p1;
	u3(0.87448101,-pi/2,-pi/2) p0;
	u3(2.5111447,-1.1704496,-2.8121994) p1;
	cx p0,p1;
	u3(0.27679939,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3785019,0.70487903,-0.49953136) p0;
	u3(1.3228031,0.82130141,3.1255769) p1;
}
gate su4_204 p0,p1 {
	u3(1.7542563,0.39963457,-1.8030416) p0;
	u3(2.1760783,2.6637993,-2.2226678) p1;
	cx p0,p1;
	u3(0.73816736,-pi/2,-pi/2) p0;
	u3(2.385603,-1.2292841,-2.8885223) p1;
	cx p0,p1;
	u3(0.14040968,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.656497,1.3447408,-2.0065174) p0;
	u3(2.0853324,-0.10471407,2.5285599) p1;
}
gate su4_494 p0,p1 {
	u3(1.331381,-0.3492933,0.17538468) p0;
	u3(1.698828,-2.1134984,0.86682699) p1;
	cx p0,p1;
	u3(0.95722955,-pi/2,-pi/2) p0;
	u3(2.7141284,-0.9833911,-2.5968498) p1;
	cx p0,p1;
	u3(0.46496768,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.35436351,-3.0758423,0.36201792) p0;
	u3(1.7635436,1.7339376,1.3909722) p1;
}
gate su4_708 p0,p1 {
	u3(1.4274353,-0.66436499,1.4715808) p0;
	u3(2.2840929,2.5331392,-1.5059855) p1;
	cx p0,p1;
	u3(1.1109385,-pi/2,-pi/2) p0;
	u3(2.7827996,-0.85754287,-2.4607194) p1;
	cx p0,p1;
	u3(0.30883341,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3443738,1.957149,-0.036897125) p0;
	u3(2.0791878,1.5102649,-2.8384098) p1;
}
gate su4_489 p0,p1 {
	u3(1.8491082,-1.8000404,0.49562041) p0;
	u3(1.629861,-0.101915,-1.7751788) p1;
	cx p0,p1;
	u3(0.52093174,-pi/2,-pi/2) p0;
	u3(2.7024482,-0.99990168,-2.6150413) p1;
	cx p0,p1;
	u3(0.29169275,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.90624,-0.15005239,0.39804983) p0;
	u3(0.41301986,-2.5886137,1.892646) p1;
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
gate su4_102 p0,p1 {
	u3(2.1670948,2.5540834,-1.5465839) p0;
	u3(2.5827777,0.54136062,-0.74571541) p1;
	cx p0,p1;
	u3(0.65987421,-pi/2,-pi/2) p0;
	u3(2.6934587,-1.0118905,-2.6283149) p1;
	cx p0,p1;
	u3(0.38765645,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1087809,0.014883705,1.2745811) p0;
	u3(0.45726481,1.5141306,1.1331691) p1;
}
gate su4_172 p0,p1 {
	u3(1.6624819,0.37356778,-1.4447835) p0;
	u3(1.8763301,-2.6746831,1.6128531) p1;
	cx p0,p1;
	u3(0.51963618,-pi/2,-pi/2) p0;
	u3(2.6953713,-1.0093894,-2.625541) p1;
	cx p0,p1;
	u3(0.030719264,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5767575,-1.7924066,-1.8397935) p0;
	u3(1.1318039,-0.29072294,-1.1406431) p1;
}
gate su4_715 p0,p1 {
	u3(2.3485266,-2.5435407,0.86101816) p0;
	u3(1.4073273,-2.6248526,2.6934423) p1;
	cx p0,p1;
	u3(0.83770034,-pi/2,-pi/2) p0;
	u3(2.7455184,-0.93287835,-2.5417389) p1;
	cx p0,p1;
	u3(0.024237402,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.93119719,-0.55070813,1.0699094) p0;
	u3(1.5469572,1.6771219,1.3871057) p1;
}
gate su4_757 p0,p1 {
	u3(2.5711177,-0.54881751,2.6702845) p0;
	u3(1.9706061,-1.1356802,0.79569954) p1;
	cx p0,p1;
	u3(0.61821136,-pi/2,-pi/2) p0;
	u3(2.68847,-1.0182934,-2.6354278) p1;
	cx p0,p1;
	u3(0.26104589,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8280303,1.1017816,-2.5768999) p0;
	u3(2.6471407,0.87345074,2.5752179) p1;
}
gate su4_690 p0,p1 {
	u3(0.95867216,-1.2574941,-1.7811878) p0;
	u3(0.75567955,3.0969591,0.15713038) p1;
	cx p0,p1;
	u3(1.2243406,-pi/2,-pi/2) p0;
	u3(2.6653383,-1.0458719,-2.666275) p1;
	cx p0,p1;
	u3(0.54950743,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5294437,1.6613063,-0.0053319557) p0;
	u3(0.51943071,-2.3729068,0.92832373) p1;
}
gate su4_26 p0,p1 {
	u3(1.7265198,-1.6904524,0.47244208) p0;
	u3(1.9314235,-0.99950541,-2.8648143) p1;
	cx p0,p1;
	u3(0.55848578,-pi/2,-pi/2) p0;
	u3(2.6225897,-1.0891962,-2.7155656) p1;
	cx p0,p1;
	u3(0.075213256,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7533271,-0.35867727,1.4660164) p0;
	u3(1.259061,2.7498002,3.0591232) p1;
}
gate su4_720 p0,p1 {
	u3(0.77906012,-1.6096717,1.8736437) p0;
	u3(1.7283972,-0.073824222,-1.7891078) p1;
	cx p0,p1;
	u3(0.90775225,-pi/2,-pi/2) p0;
	u3(2.5009977,-1.1762248,-2.8193755) p1;
	cx p0,p1;
	u3(0.27970028,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5016512,-1.3489541,1.6275713) p0;
	u3(2.7258505,2.679585,2.4082282) p1;
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
gate su4_88 p0,p1 {
	u3(0.46701427,1.274771,2.7247402) p0;
	u3(1.6239836,0.055740717,2.6632078) p1;
	cx p0,p1;
	u3(1.0571895,-pi/2,-pi/2) p0;
	u3(2.7887319,-0.84353585,-2.4457764) p1;
	cx p0,p1;
	u3(0.58037492,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5814367,-0.97191116,-2.406005) p0;
	u3(0.65721283,0.7307938,-0.2366061) p1;
}
gate su4_669 p0,p1 {
	u3(1.6380699,-1.4208325,-3.1227491) p0;
	u3(1.2945142,-0.82583464,2.0847473) p1;
	cx p0,p1;
	u3(0.69157467,-pi/2,-pi/2) p0;
	u3(2.6367093,-1.075849,-2.700256) p1;
	cx p0,p1;
	u3(0.27121376,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.44271645,2.5291083,-3.1357031) p0;
	u3(1.0366471,0.64710749,1.985114) p1;
}
gate su4_310 p0,p1 {
	u3(1.2544174,2.3274553,-0.77503748) p0;
	u3(1.6334925,1.763363,1.9546908) p1;
	cx p0,p1;
	u3(0.76850023,-pi/2,-pi/2) p0;
	u3(2.7606655,-0.90462721,-2.5112141) p1;
	cx p0,p1;
	u3(0.12396614,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1213184,-1.074847,-0.57405938) p0;
	u3(0.9449986,0.056469366,3.0343) p1;
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
gate su4_701 p0,p1 {
	u3(2.9415795,2.694255,1.4096814) p0;
	u3(1.0853955,0.061178852,-0.45489341) p1;
	cx p0,p1;
	u3(0.48373554,-pi/2,-pi/2) p0;
	u3(2.6529921,-1.0593138,-2.6814483) p1;
	cx p0,p1;
	u3(0.3243605,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.85011454,-2.3318558,1.7794951) p0;
	u3(0.66737722,-2.2785072,2.7513475) p1;
}
gate su4_877 p0,p1 {
	u3(0.58636369,-2.5071126,2.1359481) p0;
	u3(2.0648675,-0.77804807,1.2625785) p1;
	cx p0,p1;
	u3(0.65451703,-pi/2,-pi/2) p0;
	u3(2.5414705,-1.1518182,-2.7893867) p1;
	cx p0,p1;
	u3(0.11652014,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1188364,0.84522574,-1.2695605) p0;
	u3(2.3028343,1.3376108,0.16520218) p1;
}
gate su4_295 p0,p1 {
	u3(1.2718405,1.23582,-0.7235959) p0;
	u3(1.5154524,2.557015,0.92077814) p1;
	cx p0,p1;
	u3(0.96703293,-pi/2,-pi/2) p0;
	u3(2.8094183,-0.78900908,-2.3878919) p1;
	cx p0,p1;
	u3(0.21627111,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1728606,0.67995518,1.6586299) p0;
	u3(0.2215745,2.9585,2.1226412) p1;
}
gate su4_413 p0,p1 {
	u3(2.322081,2.7895732,2.5396083) p0;
	u3(1.0636073,-2.0222633,-1.9654889) p1;
	cx p0,p1;
	u3(0.3814073,-pi/2,-pi/2) p0;
	u3(2.5056222,-1.1736196,-2.8161316) p1;
	cx p0,p1;
	u3(0.10202819,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9145387,1.990961,1.2131097) p0;
	u3(1.0400032,-2.3542461,1.6099043) p1;
}
gate su4_763 p0,p1 {
	u3(0.5211817,2.6860711,2.5882025) p0;
	u3(0.32364858,2.4975217,1.7123215) p1;
	cx p0,p1;
	u3(0.87580537,-pi/2,-pi/2) p0;
	u3(2.7683296,-0.88917321,-2.4945924) p1;
	cx p0,p1;
	u3(0.3925893,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6144729,3.1009863,0.50701165) p0;
	u3(1.4306776,-1.5686013,1.6156641) p1;
}
gate su4_899 p0,p1 {
	u3(2.6294633,1.7999996,0.28002703) p0;
	u3(2.6381064,-1.8812114,-0.3692209) p1;
	cx p0,p1;
	u3(0.34373645,-pi/2,-pi/2) p0;
	u3(2.7582704,-0.90928939,-2.5162387) p1;
	cx p0,p1;
	u3(0.14061285,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0570751,-0.89951688,1.2766078) p0;
	u3(2.330206,2.0587051,1.3203691) p1;
}
gate su4_242 p0,p1 {
	u3(1.7213411,-1.5823195,2.1516415) p0;
	u3(0.92004134,1.3083432,-1.2381984) p1;
	cx p0,p1;
	u3(0.77504472,-pi/2,-pi/2) p0;
	u3(2.5244638,-1.1625304,-2.802443) p1;
	cx p0,p1;
	u3(0.431186,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7320279,-2.0090285,-3.0335427) p0;
	u3(3.0134045,-0.011761328,1.9313187) p1;
}
gate su4_978 p0,p1 {
	u3(0.52759206,1.6327651,-1.5577562) p0;
	u3(1.0320328,2.8602686,0.50603461) p1;
	cx p0,p1;
	u3(0.7624812,-pi/2,-pi/2) p0;
	u3(2.380295,-1.2312683,-2.8912561) p1;
	cx p0,p1;
	u3(0.48525933,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9879249,2.6820429,-0.5507297) p0;
	u3(2.7133219,1.5535021,-2.5621041) p1;
}
gate su4_599 p0,p1 {
	u3(2.4946186,1.6600876,-1.279614) p0;
	u3(0.45847598,-2.8210867,-0.16952581) p1;
	cx p0,p1;
	u3(0.65545391,-pi/2,-pi/2) p0;
	u3(2.281449,-1.2628213,-2.9369929) p1;
	cx p0,p1;
	u3(0.55952397,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3635976,2.668835,-1.0914394) p0;
	u3(0.24897525,-1.9622093,0.48625066) p1;
}
qreg q[9];
creg meas[9];
su4_904 q[0],q[2];
su4_555 q[1],q[4];
su4_762 q[7],q[3];
su4_407 q[1],q[7];
su4_460 q[3],q[0];
su4_200 q[3],q[5];
su4_477 q[8],q[6];
su4_224 q[2],q[8];
su4_204 q[0],q[2];
su4_494 q[0],q[5];
su4_708 q[4],q[6];
su4_489 q[4],q[6];
su4_783 q[4],q[6];
su4_102 q[6],q[4];
su4_172 q[8],q[1];
su4_715 q[3],q[8];
su4_757 q[7],q[1];
su4_690 q[1],q[5];
su4_26 q[3],q[7];
su4_720 q[0],q[3];
su4_315 q[5],q[4];
su4_88 q[5],q[6];
su4_669 q[8],q[2];
su4_310 q[1],q[8];
su4_910 q[2],q[7];
su4_519 q[3],q[2];
su4_701 q[2],q[1];
su4_877 q[7],q[4];
su4_295 q[5],q[4];
su4_904 q[5],q[3];
su4_413 q[8],q[0];
su4_763 q[6],q[0];
su4_899 q[6],q[2];
su4_242 q[8],q[7];
su4_978 q[7],q[1];
su4_599 q[8],q[4];
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
