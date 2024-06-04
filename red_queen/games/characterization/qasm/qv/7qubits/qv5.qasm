OPENQASM 2.0;
include "qelib1.inc";
gate su4_540 p0,p1 {
	u3(1.7713849,-2.5720957,-1.6532512) p0;
	u3(2.7455271,0.54706004,2.5319364) p1;
	cx p0,p1;
	u3(0.60332402,-pi/2,-pi/2) p0;
	u3(2.3909009,-1.2272698,-2.8857607) p1;
	cx p0,p1;
	u3(0.017097435,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7538912,1.9974527,2.3534607) p0;
	u3(1.2521944,2.3200233,2.1661311) p1;
}
gate su4_947 p0,p1 {
	u3(1.1538971,3.0778591,0.33541263) p0;
	u3(1.3151379,-0.80163686,1.5670658) p1;
	cx p0,p1;
	u3(0.60818975,-pi/2,-pi/2) p0;
	u3(2.4440321,-1.2050187,-2.8560675) p1;
	cx p0,p1;
	u3(0.12831233,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.51300979,0.85463832,-1.6673919) p0;
	u3(0.3153141,-2.9412902,-1.2588394) p1;
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
gate su4_422 p0,p1 {
	u3(2.0258195,2.2428739,2.2334405) p0;
	u3(2.03573,1.6299379,-0.31064355) p1;
	cx p0,p1;
	u3(0.44535059,-pi/2,-pi/2) p0;
	u3(2.6633167,-1.0481299,-2.668817) p1;
	cx p0,p1;
	u3(0.3028774,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5672855,-0.061381887,0.055043061) p0;
	u3(2.2302564,2.3573955,-1.2933821) p1;
}
gate su4_688 p0,p1 {
	u3(1.4340891,0.18812249,-0.81085682) p0;
	u3(1.2936297,-1.8948841,-1.2651013) p1;
	cx p0,p1;
	u3(0.36188628,-pi/2,-pi/2) p0;
	u3(2.604887,-1.1047657,-2.7335872) p1;
	cx p0,p1;
	u3(0.067888133,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8376756,1.7030164,-1.7473948) p0;
	u3(0.94593314,2.7877291,2.8940596) p1;
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
gate su4_326 p0,p1 {
	u3(2.2199661,0.32075328,-2.58276) p0;
	u3(1.2208738,0.094355746,-1.5967063) p1;
	cx p0,p1;
	u3(0.82679999,-pi/2,-pi/2) p0;
	u3(2.171596,-1.2885356,-2.9790984) p1;
	cx p0,p1;
	u3(0.58343843,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8525872,-0.22636617,-0.56976582) p0;
	u3(2.3929297,2.3777209,-2.1258698) p1;
}
gate su4_47 p0,p1 {
	u3(1.6400386,-2.4295527,0.95932086) p0;
	u3(1.5711477,0.46033901,8/(11*pi)) p1;
	cx p0,p1;
	u3(0.95512361,-pi/2,-pi/2) p0;
	u3(2.7328662,-0.95442192,-2.565152) p1;
	cx p0,p1;
	u3(0.44670081,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2747501,1.4053676,2.5611879) p0;
	u3(2.1988827,0.24168285,-1.1608164) p1;
}
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
gate su4_677 p0,p1 {
	u3(2.1588623,0.32088063,-1.1519919) p0;
	u3(1.1462791,-0.81103096,-1.3233527) p1;
	cx p0,p1;
	u3(0.52341276,-pi/2,-pi/2) p0;
	u3(2.1376263,-1.2949662,-2.9907629) p1;
	cx p0,p1;
	u3(0.069467863,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4276081,-0.31058394,2.859338) p0;
	u3(2.8591936,-2.1296909,-3.138939) p1;
}
gate su4_262 p0,p1 {
	u3(0.14487656,-1.7424175,2.3917891) p0;
	u3(2.0666611,-0.52699519,-0.87771435) p1;
	cx p0,p1;
	u3(0.84029545,-pi/2,-pi/2) p0;
	u3(2.473091,-1.1910527,-2.8380644) p1;
	cx p0,p1;
	u3(0.32143327,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4405363,-1.2017234,0.025971246) p0;
	u3(1.0547674,1.5924636,-1.6825053) p1;
}
gate su4_231 p0,p1 {
	u3(0.95898058,1.1130554,0.76095475) p0;
	u3(2.069222,2.8652239,-1.1301354) p1;
	cx p0,p1;
	u3(0.90442185,-pi/2,-pi/2) p0;
	u3(2.4637363,-1.1957032,-2.8440124) p1;
	cx p0,p1;
	u3(0.018866537,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3661268,1.2114279,0.26133044) p0;
	u3(2.0314034,-1.9138093,0.24055468) p1;
}
gate su4_580 p0,p1 {
	u3(2.6792303,-2.1283638,0.1552699) p0;
	u3(2.0718974,2.8211345,1.6836832) p1;
	cx p0,p1;
	u3(1.0136083,-pi/2,-pi/2) p0;
	u3(2.6741111,-1.0358004,-2.654968) p1;
	cx p0,p1;
	u3(0.22242341,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0444229,-1.1865864,0.65467629) p0;
	u3(1.9076388,2.2328311,3.0905885) p1;
}
gate su4_807 p0,p1 {
	u3(1.581797,-0.94954012,-0.62717102) p0;
	u3(2.0912262,-1.7947787,1.1271839) p1;
	cx p0,p1;
	u3(0.75148116,-pi/2,-pi/2) p0;
	u3(2.5338617,-1.1566976,-2.7953146) p1;
	cx p0,p1;
	u3(1.2007408e-06,1.578413e-10,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9125297,-1.7896328,2.429564) p0;
	u3(1.1303223,2.9472329,2.8193679) p1;
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
gate su4_849 p0,p1 {
	u3(2.0814737,2.7150905,-2.3852796) p0;
	u3(1.062328,-0.35672535,1.8465905) p1;
	cx p0,p1;
	u3(0.80412752,-pi/2,-pi/2) p0;
	u3(2.5047953,-1.1740886,-2.8167149) p1;
	cx p0,p1;
	u3(0.62177175,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0228155,-0.2165504,-2.8263323) p0;
	u3(0.58865559,-0.80996192,-2.3118253) p1;
}
gate su4_963 p0,p1 {
	u3(2.7883737,-0.81849018,2.3903262) p0;
	u3(1.0390649,2.8990109,-1.379126) p1;
	cx p0,p1;
	u3(0.76481339,-pi/2,-pi/2) p0;
	u3(2.7612729,-0.9034326,-2.5099274) p1;
	cx p0,p1;
	u3(0.086185684,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.42122778,0.55406918,-0.68770737) p0;
	u3(1.9125722,-1.4215933,3.0879782) p1;
}
gate su4_450 p0,p1 {
	u3(1.5994326,1.2298498,1.8756958) p0;
	u3(2.0350365,2.4572746,0.64736985) p1;
	cx p0,p1;
	u3(0.77289421,-pi/2,-pi/2) p0;
	u3(2.4790343,-1.1880177,-2.834206) p1;
	cx p0,p1;
	u3(0.28009863,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4290169,-1.5288599,-2.5851224) p0;
	u3(1.8484386,0.38909425,-1.9885581) p1;
}
gate su4_282 p0,p1 {
	u3(0.9748986,0.73006006,-0.55749633) p0;
	u3(0.29467578,-0.52488049,0.04783243) p1;
	cx p0,p1;
	u3(0.78409751,-pi/2,-pi/2) p0;
	u3(2.7899451,-0.84058976,-2.4426376) p1;
	cx p0,p1;
	u3(0.29619815,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5395695,1.7037719,-1.9890902) p0;
	u3(1.6310938,1.8440953,-2.1248218) p1;
}
gate su4_350 p0,p1 {
	u3(2.7220692,-0.40757556,0.65604212) p0;
	u3(1.0348257,-0.78211744,-2.9801369) p1;
	cx p0,p1;
	u3(0.67731737,-pi/2,-pi/2) p0;
	u3(2.6844992,-1.0232683,-2.6409664) p1;
	cx p0,p1;
	u3(0.028844426,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3747622,1.6507981,2.0455695) p0;
	u3(2.033707,2.3530665,2.669247) p1;
}
qreg q[7];
creg meas[7];
su4_540 q[3],q[0];
su4_947 q[4],q[2];
su4_678 q[2],q[0];
su4_422 q[1],q[6];
su4_688 q[4],q[1];
su4_622 q[1],q[0];
su4_326 q[2],q[4];
su4_47 q[0],q[2];
su4_38 q[6],q[3];
su4_677 q[3],q[5];
su4_262 q[1],q[3];
su4_231 q[1],q[2];
su4_580 q[3],q[5];
su4_807 q[1],q[3];
su4_204 q[4],q[6];
su4_858 q[0],q[4];
su4_849 q[2],q[6];
su4_963 q[0],q[6];
su4_450 q[2],q[3];
su4_282 q[4],q[5];
su4_350 q[5],q[1];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
