OPENQASM 2.0;
include "qelib1.inc";
gate su4_98 p0,p1 {
	u3(1.6256022,-1.2572429,-0.87831126) p0;
	u3(2.9473643,-1.0212116,-0.97094381) p1;
	cx p0,p1;
	u3(0.43873952,-pi/2,-pi/2) p0;
	u3(2.8115957,-0.7826802,-2.3811995) p1;
	cx p0,p1;
	u3(0.28067596,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1133287,0.096126923,-3.0802189) p0;
	u3(1.2223164,-3.1394054,-2.316082) p1;
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
gate su4_800 p0,p1 {
	u3(1.6678558,0.94827651,1.4807813) p0;
	u3(1.0612538,-2.9874563,-1.2880599) p1;
	cx p0,p1;
	u3(0.8383,-pi/2,-pi/2) p0;
	u3(2.6328592,-1.0795755,-2.7045182) p1;
	cx p0,p1;
	u3(0.75680784,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6386326,2.6774717,0.64890916) p0;
	u3(1.6452585,1.828326,2.7566957) p1;
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
gate su4_221 p0,p1 {
	u3(1.5910632,-2.8452497,-2.1032472) p0;
	u3(1.1747028,-1.3140465,2.1881442) p1;
	cx p0,p1;
	u3(0.60011344,-pi/2,-pi/2) p0;
	u3(2.7414684,-0.9399646,-2.5494263) p1;
	cx p0,p1;
	u3(0.13173963,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5599048,-0.00037536262,2.6941977) p0;
	u3(1.7123413,-2.5812526,2.5863065) p1;
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
gate su4_704 p0,p1 {
	u3(1.4836417,-0.48371137,-2.2091917) p0;
	u3(0.40703735,2.7795365,-2.9852422) p1;
	cx p0,p1;
	u3(1.1713962,-pi/2,-pi/2) p0;
	u3(2.5865484,-1.1196699,-2.7510248) p1;
	cx p0,p1;
	u3(0.70481493,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3750775,2.6167744,3.0616864) p0;
	u3(2.2760229,2.1978335,1.6830126) p1;
}
gate su4_409 p0,p1 {
	u3(1.5405408,-0.41257502,3.0013984) p0;
	u3(1.7108053,-0.20525962,1.4418795) p1;
	cx p0,p1;
	u3(0.39369888,-pi/2,-pi/2) p0;
	u3(2.6658872,-1.0452548,-2.6655808) p1;
	cx p0,p1;
	u3(0.083830544,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.87451494,2.839371,-1.5115162) p0;
	u3(0.88780085,1.9286754,2.662502) p1;
}
gate su4_436 p0,p1 {
	u3(1.5791842,0.45173074,-0.40309385) p0;
	u3(1.0895948,2.1822142,-1.7553323) p1;
	cx p0,p1;
	u3(0.98210663,-pi/2,-pi/2) p0;
	u3(2.7388279,-0.94448621,-2.5543384) p1;
	cx p0,p1;
	u3(0.36911488,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2085785,-2.0986161,0.96373075) p0;
	u3(2.6635061,1.0671063,2.7902875) p1;
}
gate su4_86 p0,p1 {
	u3(1.6397218,1.9904532,2.2393125) p0;
	u3(1.2174394,0.81310223,0.17212333) p1;
	cx p0,p1;
	u3(0.70177643,-pi/2,-pi/2) p0;
	u3(2.4100821,-1.219682,-2.8754758) p1;
	cx p0,p1;
	u3(0.24989387,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0679533,-2.9339399,2.9801206) p0;
	u3(2.5065734,-0.17631773,-1.9110858) p1;
}
gate su4_68 p0,p1 {
	u3(0.72764034,-1.5365608,-2.0051461) p0;
	u3(1.9856531,-2.3122358,2.7919457) p1;
	cx p0,p1;
	u3(0.71715648,-pi/2,-pi/2) p0;
	u3(2.683003,-1.0251158,-2.643026) p1;
	cx p0,p1;
	u3(0.21699082,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.62624,0.72862367,1.8387547) p0;
	u3(1.9265284,-1.0138933,2.4173351) p1;
}
gate su4_559 p0,p1 {
	u3(2.2943073,0.58665821,-1.9683895) p0;
	u3(1.2706011,1.8143157,-2.7104086) p1;
	cx p0,p1;
	u3(0.50413432,-pi/2,-pi/2) p0;
	u3(2.6493054,-1.0631719,-2.6858219) p1;
	cx p0,p1;
	u3(0.025042965,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0667081,-1.9297337,1.943168) p0;
	u3(1.8952327,0.64682515,-0.88402307) p1;
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
gate su4_750 p0,p1 {
	u3(1.6069588,-2.0910662,1.363315) p0;
	u3(0.35248048,0.90020136,0.90364474) p1;
	cx p0,p1;
	u3(0.44008176,-pi/2,-pi/2) p0;
	u3(2.7628718,-0.90026359,-2.5065156) p1;
	cx p0,p1;
	u3(0.0072991385,2.5313085e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.9079656,0.7569609,0.54390554) p0;
	u3(1.8591887,0.30690309,2.2894427) p1;
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
gate su4_780 p0,p1 {
	u3(2.3628,-0.57381069,-0.62367322) p0;
	u3(0.65692186,3.021201,1.4387233) p1;
	cx p0,p1;
	u3(0.89180831,-pi/2,-pi/2) p0;
	u3(2.7687623,-0.88827524,-2.4936281) p1;
	cx p0,p1;
	u3(0.38257318,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(3.1004633,-2.5082754,1.9692085) p0;
	u3(2.0205891,2.6171074,0.50076472) p1;
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
qreg q[6];
creg meas[6];
su4_98 q[3],q[2];
su4_88 q[1],q[4];
su4_800 q[4],q[1];
su4_857 q[0],q[5];
su4_221 q[3],q[0];
su4_682 q[4],q[3];
su4_704 q[5],q[2];
su4_409 q[0],q[5];
su4_436 q[0],q[5];
su4_86 q[2],q[1];
su4_68 q[3],q[1];
su4_559 q[3],q[0];
su4_234 q[4],q[2];
su4_529 q[1],q[4];
su4_750 q[1],q[0];
su4_643 q[3],q[4];
su4_780 q[5],q[2];
su4_599 q[5],q[2];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
