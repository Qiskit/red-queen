OPENQASM 2.0;
include "qelib1.inc";
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
gate su4_496 p0,p1 {
	u3(1.9727804,-0.36974042,1.2192238) p0;
	u3(0.91780146,0.23443373,2.8602433) p1;
	cx p0,p1;
	u3(0.90706217,-pi/2,-pi/2) p0;
	u3(2.5008996,-1.1762795,-2.8194438) p1;
	cx p0,p1;
	u3(0.071957173,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2356954,-2.5024439,1.2196233) p0;
	u3(1.5702165,2.7120983,1.2921797) p1;
}
gate su4_432 p0,p1 {
	u3(1.4567128,-1.9856533,1.6235702) p0;
	u3(1.4802689,1.2413327,-0.2012493) p1;
	cx p0,p1;
	u3(0.64134702,-pi/2,-pi/2) p0;
	u3(2.7388448,-0.94445754,-2.5543072) p1;
	cx p0,p1;
	u3(0.082254822,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7856956,-0.65090852,3.0967511) p0;
	u3(0.86992835,0.19100087,2.5759185) p1;
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
gate su4_79 p0,p1 {
	u3(0.94578866,0.80971364,-1.3360561) p0;
	u3(2.747514,-0.90768397,-2.0398879) p1;
	cx p0,p1;
	u3(1.2898477,-pi/2,-pi/2) p0;
	u3(2.7498365,-0.92511421,-2.5333308) p1;
	cx p0,p1;
	u3(0.21703915,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.45707137,-1.546562,1.5615856) p0;
	u3(1.0330909,0.64843736,-2.5443589) p1;
}
gate su4_63 p0,p1 {
	u3(1.0783212,2.147372,-3.079332) p0;
	u3(1.8523627,0.67552895,-2.4803966) p1;
	cx p0,p1;
	u3(0.8833579,-pi/2,-pi/2) p0;
	u3(2.4417348,-1.2060644,-2.8574333) p1;
	cx p0,p1;
	u3(0.051953325,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0985359,2.0301604,-2.3240622) p0;
	u3(1.6233528,-2.9110088,2.8973166) p1;
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
gate su4_285 p0,p1 {
	u3(1.8929324,3.060646,-0.46523391) p0;
	u3(0.60165482,-1.3383245,1.936969) p1;
	cx p0,p1;
	u3(0.48317664,-pi/2,-pi/2) p0;
	u3(2.7142142,-0.98326568,-2.596712) p1;
	cx p0,p1;
	u3(0.24195069,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2460168,0.65531164,-0.16442112) p0;
	u3(1.6488178,0.71372336,-0.37911561) p1;
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
gate su4_717 p0,p1 {
	u3(1.1252382,-0.35597176,-2.8265815) p0;
	u3(2.4770677,3.0690594,-2.5516007) p1;
	cx p0,p1;
	u3(1.1345181,-pi/2,-pi/2) p0;
	u3(2.7359863,-0.94926837,-2.5595396) p1;
	cx p0,p1;
	u3(0.032755929,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.419993,-1.2795809,-0.46282396) p0;
	u3(0.77362158,3.0384701,2.8342541) p1;
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
gate su4_560 p0,p1 {
	u3(1.7836958,0.032729156,0.2777457) p0;
	u3(0.33637234,2.3154765,0.53576338) p1;
	cx p0,p1;
	u3(0.74104161,-pi/2,-pi/2) p0;
	u3(2.7873511,-0.8468547,-2.4493141) p1;
	cx p0,p1;
	u3(0.39910466,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.69315572,-3.0791696,2.4516143) p0;
	u3(2.5265787,2.8805962,1.3891754) p1;
}
gate su4_290 p0,p1 {
	u3(1.3077939,-2.7173247,-2.212099) p0;
	u3(1.6045391,-2.2541023,-1.9109151) p1;
	cx p0,p1;
	u3(0.50820178,-pi/2,-pi/2) p0;
	u3(2.4166087,-1.2169901,-2.871869) p1;
	cx p0,p1;
	u3(0.13285086,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1690704,0.98287592,-2.8038476) p0;
	u3(2.340843,-1.0073373,3.0255015) p1;
}
gate su4_129 p0,p1 {
	u3(2.676532,1.9779435,1.4985772) p0;
	u3(1.0277395,1.9520403,1.5397109) p1;
	cx p0,p1;
	u3(0.8383081,-pi/2,-pi/2) p0;
	u3(2.2015607,-1.282315,-2.9683299) p1;
	cx p0,p1;
	u3(0.54080313,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.58601319,1.6523348,-1.3229422) p0;
	u3(2.2054449,-2.3853742,-0.96616057) p1;
}
gate su4_550 p0,p1 {
	u3(1.2749255,2.9885328,-2.081452) p0;
	u3(1.4843955,-0.83714971,-2.5165552) p1;
	cx p0,p1;
	u3(0.87333282,-pi/2,-pi/2) p0;
	u3(2.7690597,-0.88765655,-2.4929638) p1;
	cx p0,p1;
	u3(0.088881126,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.77054181,-1.6835747,-2.9559031) p0;
	u3(1.3967679,0.61131137,-1.8598025) p1;
}
gate su4_816 p0,p1 {
	u3(1.0537293,-2.1858127,2.2171844) p0;
	u3(0.2542813,-0.93799131,2.9980571) p1;
	cx p0,p1;
	u3(0.91824706,-pi/2,-pi/2) p0;
	u3(2.458122,-1.1984222,-2.847511) p1;
	cx p0,p1;
	u3(0.057159309,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5780667,-0.85912071,-1.5518192) p0;
	u3(1.6803732,1.3183903,-0.92173094) p1;
}
gate su4_454 p0,p1 {
	u3(0.7536409,0.10196696,2.7106523) p0;
	u3(1.8660164,-1.108546,2.0311064) p1;
	cx p0,p1;
	u3(1.0656176,-pi/2,-pi/2) p0;
	u3(2.7467863,-0.93062137,-2.5392931) p1;
	cx p0,p1;
	u3(0.14140056,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9779994,-2.390343,-2.5579415) p0;
	u3(1.2666004,-2.2546517,0.44439365) p1;
}
gate su4_991 p0,p1 {
	u3(1.0671427,-0.023397099,0.50652279) p0;
	u3(0.85320416,0.72809188,0.69980647) p1;
	cx p0,p1;
	u3(0.95967601,-pi/2,-pi/2) p0;
	u3(2.6125352,-1.0981897,-2.7259527) p1;
	cx p0,p1;
	u3(0.24312966,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2790675,-1.8754727,-2.5264924) p0;
	u3(2.7039954,2.1234464,0.94884251) p1;
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
qreg q[7];
creg meas[7];
su4_43 q[0],q[1];
su4_204 q[4],q[5];
su4_496 q[5],q[4];
su4_432 q[2],q[6];
su4_500 q[0],q[2];
su4_79 q[0],q[3];
su4_63 q[5],q[3];
su4_872 q[6],q[1];
su4_285 q[1],q[4];
su4_592 q[6],q[2];
su4_717 q[2],q[0];
su4_497 q[3],q[0];
su4_500 q[6],q[1];
su4_560 q[1],q[4];
su4_290 q[4],q[5];
su4_129 q[4],q[0];
su4_550 q[6],q[2];
su4_816 q[1],q[6];
su4_454 q[2],q[3];
su4_991 q[3],q[5];
su4_382 q[6],q[2];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
