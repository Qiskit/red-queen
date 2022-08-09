OPENQASM 2.0;
include "qelib1.inc";
gate su4_378 p0,p1 {
	u3(0.6483101,-1.0261869,0.32380917) p0;
	u3(0.36516176,0.43266376,0.12432434) p1;
	cx p0,p1;
	u3(0.67834443,-pi/2,-pi/2) p0;
	u3(2.1935626,-1.2840284,-2.9712512) p1;
	cx p0,p1;
	u3(0.16274531,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(3.0186865,-1.2568651,-2.4565592) p0;
	u3(1.5316575,0.17006682,-0.71272071) p1;
}
gate su4_159 p0,p1 {
	u3(0.84497989,1.5591351,0.41247111) p0;
	u3(2.0448292,2.7168466,1.4250428) p1;
	cx p0,p1;
	u3(1.0382875,-pi/2,-pi/2) p0;
	u3(2.5792829,-1.1252604,-2.7576177) p1;
	cx p0,p1;
	u3(0.099562046,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0077076,-2.5136934,-3.1340734) p0;
	u3(2.5438333,-2.8102174,2.3234736) p1;
}
gate su4_210 p0,p1 {
	u3(1.5188169,-0.40257855,1.1543384) p0;
	u3(1.510724,1.5759043,-2.076247) p1;
	cx p0,p1;
	u3(0.64348229,-pi/2,-pi/2) p0;
	u3(2.6093781,-1.1009311,-2.7291313) p1;
	cx p0,p1;
	u3(0.051670398,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.90889138,0.75947284,1.9267565) p0;
	u3(1.9713758,2.6919918,2.3741041) p1;
}
gate su4_447 p0,p1 {
	u3(2.1065723,2.5752796,-3.1159635) p0;
	u3(0.73241195,-0.55324038,1.2918628) p1;
	cx p0,p1;
	u3(0.91403121,-pi/2,-pi/2) p0;
	u3(2.4799645,-1.1875369,-2.8335963) p1;
	cx p0,p1;
	u3(0.014474588,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7937095,0.67109852,-1.7585282) p0;
	u3(2.0413609,-1.2681115,-0.80849801) p1;
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
gate su4_75 p0,p1 {
	u3(1.7319288,-1.9776761,-1.5431876) p0;
	u3(1.3601757,-0.024945813,2.5211363) p1;
	cx p0,p1;
	u3(1.043093,-pi/2,-pi/2) p0;
	u3(2.6303311,-1.0819864,-2.7072806) p1;
	cx p0,p1;
	u3(0.064246853,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.52507066,2.1620169,-0.64855798) p0;
	u3(0.85554992,1.784979,-1.7390387) p1;
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
gate su4_400 p0,p1 {
	u3(1.3175175,2.4156159,-1.7890563) p0;
	u3(1.974171,-1.7329138,-0.69164719) p1;
	cx p0,p1;
	u3(0.7820009,-pi/2,-pi/2) p0;
	u3(2.616631,-1.0945751,-2.7217708) p1;
	cx p0,p1;
	u3(0.021866382,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9334578,0.94794283,1.3630164) p0;
	u3(0.96285509,-0.28974046,1.5464059) p1;
}
gate su4_995 p0,p1 {
	u3(2.8737681,1.467437,-1.5798981) p0;
	u3(2.2337847,0.7455928,-1.8543564) p1;
	cx p0,p1;
	u3(0.78136424,-pi/2,-pi/2) p0;
	u3(2.1711851,-1.2886172,-2.9792428) p1;
	cx p0,p1;
	u3(0.0049637858,3.8191672e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9256756,1.2222395,1.9958765) p0;
	u3(0.65218336,-2.4373703,-2.213153) p1;
}
gate su4_786 p0,p1 {
	u3(2.5316583,-1.0141276,0.0030372505) p0;
	u3(0.19817479,2.1908749,-1.8032031) p1;
	cx p0,p1;
	u3(0.41293603,-pi/2,-pi/2) p0;
	u3(2.8107698,-0.78509539,-2.3837528) p1;
	cx p0,p1;
	u3(0.17197707,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.59324651,1.9163636,-2.1845074) p0;
	u3(1.483988,1.5727947,1.860823) p1;
}
gate su4_643 p0,p1 {
	u3(2.6897842,2.4244675,-3.0479905) p0;
	u3(0.70385215,1.3782956,0.23324621) p1;
	cx p0,p1;
	u3(0.47975497,-pi/2,-pi/2) p0;
	u3(2.4601781,-1.1974325,-2.8462358) p1;
	cx p0,p1;
	u3(0.17899511,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0683443,-0.39654905,-2.6665509) p0;
	u3(2.1461984,2.3659714,-2.5704028) p1;
}
gate su4_325 p0,p1 {
	u3(1.9508059,0.34301053,-1.0372102) p0;
	u3(1.9158504,1.024051,-1.2293932) p1;
	cx p0,p1;
	u3(0.31014184,-pi/2,-pi/2) p0;
	u3(2.6200933,-1.0914674,-2.718183) p1;
	cx p0,p1;
	u3(0.10882988,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5546078,3.0579964,-2.06786) p0;
	u3(1.4589867,2.9377515,1.1077521) p1;
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
gate su4_531 p0,p1 {
	u3(0.59799255,-0.9161506,1.3511885) p0;
	u3(0.5804208,0.91640499,2.492314) p1;
	cx p0,p1;
	u3(0.83991814,-pi/2,-pi/2) p0;
	u3(2.6691667,-1.0415321,-2.6613967) p1;
	cx p0,p1;
	u3(0.41805777,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2119176,2.6525085,-0.040952071) p0;
	u3(1.9756437,-0.96134056,-0.30648903) p1;
}
gate su4_997 p0,p1 {
	u3(2.9482445,3.0481286,0.36809986) p0;
	u3(1.8220024,-2.5570897,-0.72228239) p1;
	cx p0,p1;
	u3(0.90021641,-pi/2,-pi/2) p0;
	u3(2.6071317,-1.1028586,-2.7313696) p1;
	cx p0,p1;
	u3(0.53536559,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3202656,1.8026478,2.3339351) p0;
	u3(1.6271655,-2.1893956,-2.7560212) p1;
}
gate su4_929 p0,p1 {
	u3(1.9954599,-1.8454084,2.6817001) p0;
	u3(0.89983848,2.2510303,2.9346496) p1;
	cx p0,p1;
	u3(0.73838911,-pi/2,-pi/2) p0;
	u3(2.6866474,-1.02059,-2.6379833) p1;
	cx p0,p1;
	u3(0.22082893,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.77080809,-2.6200948,0.030623207) p0;
	u3(1.1781076,-0.25576833,2.8612942) p1;
}
gate su4_844 p0,p1 {
	u3(1.659385,0.58900431,-0.83080673) p0;
	u3(1.8161421,-0.09447441,2.3608943) p1;
	cx p0,p1;
	u3(1.0127275,-pi/2,-pi/2) p0;
	u3(2.6306423,-1.0816911,-2.7069421) p1;
	cx p0,p1;
	u3(0.27321548,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0422268,-2.4348942,-2.1061174) p0;
	u3(1.0995271,-1.1942096,1.8666888) p1;
}
gate su4_678 p0,p1 {
	u3(2.7774238,2.4691916,2.1559136) p0;
	u3(0.77377692,-2.6387717,-1.2402558) p1;
	cx p0,p1;
	u3(0.5009816,-pi/2,-pi/2) p0;
	u3(2.7398952,-0.94266767,-2.5523621) p1;
	cx p0,p1;
	u3(0.016326252,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.47950686,-0.33211927,-2.126901) p0;
	u3(1.7812215,-1.1147888,1.0951122) p1;
}
gate su4_810 p0,p1 {
	u3(1.9581466,-1.8030447,-1.5961325) p0;
	u3(2.5671211,-2.2394672,2.8861691) p1;
	cx p0,p1;
	u3(0.74390809,-pi/2,-pi/2) p0;
	u3(2.6403396,-1.072273,-2.6961742) p1;
	cx p0,p1;
	u3(0.41645642,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9110025,2.7153172,2.4578433) p0;
	u3(1.3141593,0.50439189,2.6674375) p1;
}
gate su4_575 p0,p1 {
	u3(1.5297726,2.7241282,2.1746378) p0;
	u3(2.1118187,-1.3682326,1.0641973) p1;
	cx p0,p1;
	u3(0.59580138,-pi/2,-pi/2) p0;
	u3(2.5091939,-1.1715768,-2.8135958) p1;
	cx p0,p1;
	u3(0.3242786,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8432177,-0.80015684,-1.6197775) p0;
	u3(1.9646486,-0.75579773,1.9857727) p1;
}
gate su4_106 p0,p1 {
	u3(1.9809416,-0.29243022,1.3735637) p0;
	u3(0.96093179,1.9205946,0.31937279) p1;
	cx p0,p1;
	u3(1.1534243,-pi/2,-pi/2) p0;
	u3(2.6891354,-1.0174493,-2.6344891) p1;
	cx p0,p1;
	u3(0.25530211,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6724338,-2.7170755,3.0232378) p0;
	u3(2.0839875,-1.5940871,-0.71881707) p1;
}
gate su4_633 p0,p1 {
	u3(1.2649215,-1.6363857,0.52299801) p0;
	u3(2.3619614,2.4674275,-2.2361678) p1;
	cx p0,p1;
	u3(0.84312208,-pi/2,-pi/2) p0;
	u3(2.7553877,-0.91480011,-2.5221841) p1;
	cx p0,p1;
	u3(0.53960363,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0867112,-2.1843453,-0.072979068) p0;
	u3(2.0688736,0.029660527,-1.5025195) p1;
}
gate su4_157 p0,p1 {
	u3(2.8769677,-0.054918738,-0.025103316) p0;
	u3(0.84986496,-2.7075676,-1.4624227) p1;
	cx p0,p1;
	u3(0.57145186,-pi/2,-pi/2) p0;
	u3(2.3740997,-1.2335421,-2.8944064) p1;
	cx p0,p1;
	u3(0.1899514,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9996198,2.1166679,0.29918222) p0;
	u3(1.9500458,1.6816617,1.3618449) p1;
}
gate su4_526 p0,p1 {
	u3(1.7235844,-2.6771839,0.83089376) p0;
	u3(1.3605319,-1.1267232,2.4261223) p1;
	cx p0,p1;
	u3(0.37295741,-pi/2,-pi/2) p0;
	u3(2.1369831,-1.295082,-2.9909786) p1;
	cx p0,p1;
	u3(0.18732477,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.93888836,-1.4073075,-2.2555571) p0;
	u3(0.71366658,2.4717374,2.4377206) p1;
}
gate su4_301 p0,p1 {
	u3(0.87733022,2.0987679,1.3478683) p0;
	u3(1.776102,0.47302003,-0.73042268) p1;
	cx p0,p1;
	u3(0.46325795,-pi/2,-pi/2) p0;
	u3(2.7542505,-0.91694449,-2.5244995) p1;
	cx p0,p1;
	u3(0.26860008,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.342209,-3.1120538,-0.51190362) p0;
	u3(0.75192858,-1.5187016,3.1068275) p1;
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
gate su4_670 p0,p1 {
	u3(1.4722472,-1.4175433,-0.83927688) p0;
	u3(0.98915011,-1.4467723,1.607715) p1;
	cx p0,p1;
	u3(0.51266352,-pi/2,-pi/2) p0;
	u3(2.6753401,-1.034353,-2.6533471) p1;
	cx p0,p1;
	u3(0.15735208,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.56362585,-0.36701206,-2.4613788) p0;
	u3(1.8272388,-2.7869281,3.0622275) p1;
}
gate su4_622 p0,p1 {
	u3(1.6555231,2.8949244,-2.4949874) p0;
	u3(1.471752,1.9272162,-2.1935035) p1;
	cx p0,p1;
	u3(0.58956034,-pi/2,-pi/2) p0;
	u3(2.2217657,-1.2778055,-2.9607879) p1;
	cx p0,p1;
	u3(0.11352077,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4795596,-2.9544489,-2.5275696) p0;
	u3(0.84583535,-0.83164355,2.8752623) p1;
}
gate su4_930 p0,p1 {
	u3(1.6282558,2.7573992,-2.5163376) p0;
	u3(0.80356175,-2.6910588,-2.0347932) p1;
	cx p0,p1;
	u3(0.90061285,-pi/2,-pi/2) p0;
	u3(2.4897618,-1.1823743,-2.827078) p1;
	cx p0,p1;
	u3(0.4173546,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3379501,1.1969772,0.77470256) p0;
	u3(1.7777328,2.9577376,-2.8206707) p1;
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
qreg q[8];
creg meas[8];
su4_378 q[1],q[3];
su4_159 q[4],q[0];
su4_210 q[3],q[0];
su4_447 q[2],q[6];
su4_763 q[6],q[1];
su4_75 q[5],q[7];
su4_682 q[2],q[5];
su4_400 q[2],q[6];
su4_995 q[3],q[5];
su4_786 q[5],q[6];
su4_643 q[7],q[4];
su4_325 q[1],q[7];
su4_564 q[3],q[7];
su4_531 q[4],q[0];
su4_997 q[0],q[1];
su4_929 q[4],q[2];
su4_844 q[2],q[0];
su4_678 q[2],q[0];
su4_810 q[5],q[4];
su4_575 q[4],q[5];
su4_106 q[6],q[1];
su4_633 q[7],q[3];
su4_157 q[6],q[3];
su4_526 q[2],q[3];
su4_301 q[6],q[0];
su4_661 q[6],q[0];
su4_899 q[7],q[1];
su4_670 q[1],q[5];
su4_622 q[5],q[2];
su4_930 q[7],q[4];
su4_437 q[4],q[3];
su4_133 q[7],q[1];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];
