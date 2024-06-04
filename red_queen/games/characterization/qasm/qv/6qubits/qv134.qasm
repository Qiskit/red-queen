OPENQASM 2.0;
include "qelib1.inc";
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
gate su4_134 p0,p1 {
	u3(1.0512481,-15/(7*pi),0.099956937) p0;
	u3(2.1942337,0.27168313,2.1715565) p1;
	cx p0,p1;
	u3(0.84156997,-pi/2,-pi/2) p0;
	u3(2.7441608,-0.9352745,-2.5443368) p1;
	cx p0,p1;
	u3(0.077303933,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1763848,0.32572864,3.1299078) p0;
	u3(1.5494776,0.070861431,-3.0589798) p1;
}
gate su4_738 p0,p1 {
	u3(0.42321747,2.5650416,-0.37614785) p0;
	u3(1.016659,-2.8329697,2.9442322) p1;
	cx p0,p1;
	u3(0.60771744,-pi/2,-pi/2) p0;
	u3(2.7339583,-0.95262949,-2.5631991) p1;
	cx p0,p1;
	u3(0.43514075,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3255027,2.4782066,-0.92833659) p0;
	u3(1.1733325,1.2062624,0.026910659) p1;
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
gate su4_355 p0,p1 {
	u3(2.4101022,-1.1729204,0.4883898) p0;
	u3(1.2524395,-2.985878,1.5960295) p1;
	cx p0,p1;
	u3(0.63327874,-pi/2,-pi/2) p0;
	u3(2.4076677,-1.2206634,-2.876796) p1;
	cx p0,p1;
	u3(0.28915089,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6939361,1.4011924,2.937466) p0;
	u3(2.3565592,2.2508776,2.0718059) p1;
}
gate su4_239 p0,p1 {
	u3(1.2867594,-0.26188702,0.59013431) p0;
	u3(1.5856562,0.20389373,0.045683649) p1;
	cx p0,p1;
	u3(0.99834139,-pi/2,-pi/2) p0;
	u3(2.6407711,-1.0718438,-2.695685) p1;
	cx p0,p1;
	u3(0.28866272,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4105134,-2.4159284,-0.15536424) p0;
	u3(2.6206313,-2.1801583,-1.3116745) p1;
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
gate su4_223 p0,p1 {
	u3(2.7570829,1.9478247,-0.68881254) p0;
	u3(1.0793224,-1.6323049,1.0735702) p1;
	cx p0,p1;
	u3(0.35001426,-pi/2,-pi/2) p0;
	u3(2.7101603,-0.98912452,-2.6031559) p1;
	cx p0,p1;
	u3(0.19636542,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0725866,-1.8306119,-2.8395402) p0;
	u3(2.4097762,2.2344381,2.6507678) p1;
}
gate su4_426 p0,p1 {
	u3(1.1404245,-2.7021947,-1.5891579) p0;
	u3(0.26123149,0.576501,-1.3708995) p1;
	cx p0,p1;
	u3(1.0816131,-pi/2,-pi/2) p0;
	u3(2.7823265,-0.85863253,-2.4618832) p1;
	cx p0,p1;
	u3(0.30764343,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5493376,-1.4542346,-0.98673756) p0;
	u3(2.8863749,2.9404128,2.8062198) p1;
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
gate su4_588 p0,p1 {
	u3(1.6294632,0.16213817,1.8201035) p0;
	u3(2.9172381,-0.1566296,1.402701) p1;
	cx p0,p1;
	u3(0.77470987,-pi/2,-pi/2) p0;
	u3(2.7319684,-0.95588645,-2.5667483) p1;
	cx p0,p1;
	u3(0.091479728,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5599992,1.4432249,0.75511257) p0;
	u3(1.5382523,3.0760608,-2.5456232) p1;
}
gate su4_73 p0,p1 {
	u3(0.92102153,-2.5586909,-2.1753412) p0;
	u3(1.7726243,-0.077111899,2.5315638) p1;
	cx p0,p1;
	u3(0.51726215,-pi/2,-pi/2) p0;
	u3(2.6980617,-1.0058263,-2.6215937) p1;
	cx p0,p1;
	u3(0.139381,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0445707,-1.1430967,0.52598175) p0;
	u3(2.1184287,2.5964164,1.8259335) p1;
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
gate su4_429 p0,p1 {
	u3(2.2202294,-1.5049538,0.26291181) p0;
	u3(1.5131228,-2.1945602,-0.30706874) p1;
	cx p0,p1;
	u3(1.1134156,-pi/2,-pi/2) p0;
	u3(2.6088641,-1.1013738,-2.7296451) p1;
	cx p0,p1;
	u3(0.024161938,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9210525,2.1318761,-0.39222074) p0;
	u3(1.7958141,-0.22224504,0.86837189) p1;
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
gate su4_171 p0,p1 {
	u3(1.8920857,-1.1040788,2.1445757) p0;
	u3(2.0237317,-3.0534536,-2.7431131) p1;
	cx p0,p1;
	u3(0.60208359,-pi/2,-pi/2) p0;
	u3(2.5582446,-1.1405335,-2.7757908) p1;
	cx p0,p1;
	u3(0.093885664,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.86779212,-2.878535,-2.7724988) p0;
	u3(0.47023192,0.62247426,-1.2261802) p1;
}
qreg q[6];
creg meas[6];
su4_221 q[3],q[0];
su4_134 q[2],q[4];
su4_738 q[0],q[2];
su4_449 q[5],q[1];
su4_355 q[4],q[1];
su4_239 q[0],q[4];
su4_60 q[5],q[3];
su4_836 q[1],q[5];
su4_223 q[1],q[5];
su4_426 q[2],q[3];
su4_519 q[2],q[4];
su4_588 q[3],q[0];
su4_73 q[1],q[0];
su4_558 q[4],q[2];
su4_429 q[4],q[0];
su4_238 q[5],q[3];
su4_474 q[1],q[5];
su4_171 q[3],q[2];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
