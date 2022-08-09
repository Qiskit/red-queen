OPENQASM 2.0;
include "qelib1.inc";
gate su4_380 p0,p1 {
	u3(1.5763821,-1.060282,1.0164) p0;
	u3(2.0538534,-1.1403327,2.1049341) p1;
	cx p0,p1;
	u3(0.76481622,-pi/2,-pi/2) p0;
	u3(2.4065877,-1.2210998,-2.8773841) p1;
	cx p0,p1;
	u3(0.45136987,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5691939,-0.58408746,-2.6091513) p0;
	u3(1.9968608,-0.42046722,1.8046674) p1;
}
gate su4_483 p0,p1 {
	u3(2.2413595,1.1967413,-1.6410048) p0;
	u3(2.6926466,-2.1584292,-2.6764886) p1;
	cx p0,p1;
	u3(0.66003849,-pi/2,-pi/2) p0;
	u3(2.0464379,-1.3093893,-3.0196962) p1;
	cx p0,p1;
	u3(0.16925316,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1198761,1.2529776,1.1571201) p0;
	u3(0.19089828,-0.6933837,0.45238227) p1;
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
gate su4_725 p0,p1 {
	u3(0.96866403,-1.9820942,0.10235632) p0;
	u3(0.64937913,-1.6317369,2.1078352) p1;
	cx p0,p1;
	u3(0.58356936,-pi/2,-pi/2) p0;
	u3(2.5762384,-1.1275531,-2.7603303) p1;
	cx p0,p1;
	u3(0.47437827,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6695997,0.1100872,0.68775843) p0;
	u3(0.5122176,3.0928702,-0.078462292) p1;
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
gate su4_372 p0,p1 {
	u3(1.2674312,-2.9944589,2.3041764) p0;
	u3(1.45633,3.0517377,-1.4361608) p1;
	cx p0,p1;
	u3(0.98140982,-pi/2,-pi/2) p0;
	u3(2.5064225,-1.1731642,-2.8155657) p1;
	cx p0,p1;
	u3(0.6628428,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.338358,-2.2222979,-0.060067847) p0;
	u3(1.100012,-2.6254354,-1.0171205) p1;
}
gate su4_556 p0,p1 {
	u3(2.8369538,1.0180753,2.9622497) p0;
	u3(1.7048844,-0.36813795,2.2052789) p1;
	cx p0,p1;
	u3(0.491173,-pi/2,-pi/2) p0;
	u3(2.4420614,-1.2059162,-2.8572396) p1;
	cx p0,p1;
	u3(0.065994852,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0091656,-0.88620089,0.62850268) p0;
	u3(2.8768226,0.14046652,2.3909011) p1;
}
gate su4_161 p0,p1 {
	u3(1.1905157,-1.387992,1.010486) p0;
	u3(0.70627377,-0.96584322,-2.7821239) p1;
	cx p0,p1;
	u3(0.76564864,-pi/2,-pi/2) p0;
	u3(2.4665529,-1.1943189,-2.8422373) p1;
	cx p0,p1;
	u3(0.62098085,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2820352,2.7551639,2.7986966) p0;
	u3(1.0771738,-0.38801216,-1.7021514) p1;
}
gate su4_71 p0,p1 {
	u3(0.82740453,1.484278,1.6240515) p0;
	u3(1.0595433,2.307716,2.1563367) p1;
	cx p0,p1;
	u3(1.0408329,-pi/2,-pi/2) p0;
	u3(2.6234006,-1.0884529,-2.7147097) p1;
	cx p0,p1;
	u3(0.87838244,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7611145,-2.1761328,-0.18999917) p0;
	u3(2.3008181,1.166631,-0.85821968) p1;
}
gate su4_467 p0,p1 {
	u3(0.46079029,0.57229216,2.4791138) p0;
	u3(0.60060586,1.8431523,0.36062583) p1;
	cx p0,p1;
	u3(0.34664493,-pi/2,-pi/2) p0;
	u3(2.3072277,-1.2554852,-2.925913) p1;
	cx p0,p1;
	u3(0.085152967,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8185252,-0.0814723,0.45444131) p0;
	u3(2.5779781,-2.4721525,2.979868) p1;
}
gate su4_764 p0,p1 {
	u3(1.3893209,-1.5690806,0.67896632) p0;
	u3(2.4823802,-1.3331781,-0.60380065) p1;
	cx p0,p1;
	u3(0.79334679,-pi/2,-pi/2) p0;
	u3(2.7116909,-0.98692853,-2.6007392) p1;
	cx p0,p1;
	u3(0.32977928,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6200153,-3.0990098,-2.8614599) p0;
	u3(1.675079,2.575728,0.10988795) p1;
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
gate su4_188 p0,p1 {
	u3(2.3385535,0.30348174,2.0628969) p0;
	u3(1.7708636,3.1230565,0.80662615) p1;
	cx p0,p1;
	u3(0.40906413,-pi/2,-pi/2) p0;
	u3(2.6623065,-1.0492497,-2.6700787) p1;
	cx p0,p1;
	u3(0.01556053,1.1546319e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5962218,-3.0867386,-1.9838989) p0;
	u3(1.7919194,2.1578191,-0.61920248) p1;
}
gate su4_368 p0,p1 {
	u3(2.1155967,2.6053825,-2.8167251) p0;
	u3(1.9979289,-0.1147633,1.7284666) p1;
	cx p0,p1;
	u3(0.93433893,-pi/2,-pi/2) p0;
	u3(2.8128691,-0.77892039,-2.3772262) p1;
	cx p0,p1;
	u3(0.19877238,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2933453,-1.6195002,-0.06438557) p0;
	u3(1.4372498,0.97935907,1.3082744) p1;
}
gate su4_712 p0,p1 {
	u3(2.8356186,-1.5129597,-1.6092578) p0;
	u3(1.7876227,1.2953539,2.1965539) p1;
	cx p0,p1;
	u3(0.73580586,-pi/2,-pi/2) p0;
	u3(2.6820194,-1.0263223,-2.6443719) p1;
	cx p0,p1;
	u3(0.35481988,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0163161,0.13878043,2.3240439) p0;
	u3(2.3300301,-0.61990665,2.4655443) p1;
}
gate su4_683 p0,p1 {
	u3(1.3435667,1.8450067,-1.2254194) p0;
	u3(2.7527413,2.1722697,-0.1730849) p1;
	cx p0,p1;
	u3(1.1054988,-pi/2,-pi/2) p0;
	u3(2.7195209,-0.97538426,-2.5880621) p1;
	cx p0,p1;
	u3(0.80123074,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6588364,-2.5015558,2.4357311) p0;
	u3(1.5398478,2.652679,-1.5320737) p1;
}
gate su4_961 p0,p1 {
	u3(1.4621056,2.8769759,2.4626387) p0;
	u3(1.4018217,2.1497737,1.9607635) p1;
	cx p0,p1;
	u3(0.65392749,-pi/2,-pi/2) p0;
	u3(2.4442391,-1.204924,-2.855944) p1;
	cx p0,p1;
	u3(0.1679394,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9956059,1.9806639,-0.21240766) p0;
	u3(2.139796,1.8977398,-0.75066128) p1;
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
gate su4_685 p0,p1 {
	u3(1.8420259,-0.67034043,2.4019431) p0;
	u3(1.7163923,-1.5366672,0.041589889) p1;
	cx p0,p1;
	u3(0.60239677,-pi/2,-pi/2) p0;
	u3(2.80812,-0.79272382,-2.3918223) p1;
	cx p0,p1;
	u3(0.041066369,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6679558,-1.5644121,0.50859424) p0;
	u3(0.98920879,1.5546381,2.5659459) p1;
}
gate su4_385 p0,p1 {
	u3(1.4627933,0.88726388,1.7681008) p0;
	u3(2.1539166,-1.3837695,-1.6214688) p1;
	cx p0,p1;
	u3(0.71348008,-pi/2,-pi/2) p0;
	u3(2.6785654,-1.0305101,-2.6490485) p1;
	cx p0,p1;
	u3(0.1867241,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3916693,1.6410735,-0.20080358) p0;
	u3(1.5680608,2.4315591,-1.6723797) p1;
}
gate su4_775 p0,p1 {
	u3(0.96379706,1.278316,1.2391111) p0;
	u3(2.5892567,1.6943843,-1.7447478) p1;
	cx p0,p1;
	u3(1.009904,-pi/2,-pi/2) p0;
	u3(2.5801006,-1.1246397,-2.7568842) p1;
	cx p0,p1;
	u3(0.10424351,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6457506,0.43917991,-2.9220102) p0;
	u3(1.3072701,-2.7547447,0.0054862863) p1;
}
gate su4_901 p0,p1 {
	u3(1.9820674,-1.8426589,2.8364898) p0;
	u3(0.27513242,-2.1405939,-1.4235806) p1;
	cx p0,p1;
	u3(1.0004703,-pi/2,-pi/2) p0;
	u3(2.6494489,-1.0630229,-2.6856529) p1;
	cx p0,p1;
	u3(0.36258103,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.616759,0.35714552,2.0090929) p0;
	u3(2.8493702,-0.90199763,-0.3180775) p1;
}
gate su4_958 p0,p1 {
	u3(2.0992972,0.120597,0.51355663) p0;
	u3(1.9043204,-2.0632123,-1.7846045) p1;
	cx p0,p1;
	u3(0.79011195,-pi/2,-pi/2) p0;
	u3(2.7588034,-0.90825867,-2.5151274) p1;
	cx p0,p1;
	u3(0.015208353,pi/252651348286730,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6800837,-2.5397207,2.2308781) p0;
	u3(0.98019692,-0.94675676,0.17480969) p1;
}
gate su4_468 p0,p1 {
	u3(1.1604699,-0.60800681,-2.9270264) p0;
	u3(1.3458171,1.6149841,-0.6269851) p1;
	cx p0,p1;
	u3(0.73663864,-pi/2,-pi/2) p0;
	u3(2.5551949,-1.1426414,-2.7783189) p1;
	cx p0,p1;
	u3(0.20268863,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2776571,-0.0092334414,0.99505161) p0;
	u3(0.53009131,2.1232824,0.28338011) p1;
}
gate su4_105 p0,p1 {
	u3(1.4808039,2.8360114,1.0463253) p0;
	u3(2.3868367,-3.0104669,0.77233348) p1;
	cx p0,p1;
	u3(1.1271048,-pi/2,-pi/2) p0;
	u3(2.8062045,-0.79812702,-2.3975424) p1;
	cx p0,p1;
	u3(0.87605794,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7079252,1.9001753,2.1471507) p0;
	u3(0.4692453,2.9249536,-0.34299958) p1;
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
gate su4_892 p0,p1 {
	u3(1.8996498,0.55410022,0.59814339) p0;
	u3(1.6895789,2.7826489,0.096229344) p1;
	cx p0,p1;
	u3(1.008815,-pi/2,-pi/2) p0;
	u3(2.807485,-0.79452504,-2.3937287) p1;
	cx p0,p1;
	u3(0.46099098,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0651291,-1.070664,1.9392154) p0;
	u3(2.4240973,-2.2080082,-0.18075057) p1;
}
gate su4_537 p0,p1 {
	u3(1.2818776,1.0890386,0.29198086) p0;
	u3(1.0119681,0.90265079,-0.51355934) p1;
	cx p0,p1;
	u3(0.76352933,-pi/2,-pi/2) p0;
	u3(2.668012,-1.0428499,-2.662877) p1;
	cx p0,p1;
	u3(0.089905288,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.710143,1.8665088,-2.0258783) p0;
	u3(2.4594592,-3.031899,-0.57366042) p1;
}
qreg q[8];
creg meas[8];
su4_380 q[2],q[1];
su4_483 q[2],q[1];
su4_908 q[3],q[0];
su4_659 q[4],q[6];
su4_725 q[6],q[0];
su4_900 q[1],q[6];
su4_129 q[5],q[7];
su4_372 q[5],q[3];
su4_556 q[0],q[3];
su4_161 q[0],q[1];
su4_71 q[1],q[0];
su4_467 q[5],q[2];
su4_764 q[6],q[5];
su4_651 q[7],q[4];
su4_529 q[7],q[4];
su4_188 q[4],q[3];
su4_368 q[5],q[4];
su4_712 q[4],q[0];
su4_683 q[7],q[2];
su4_961 q[2],q[6];
su4_87 q[2],q[5];
su4_107 q[0],q[5];
su4_685 q[7],q[3];
su4_385 q[1],q[7];
su4_775 q[4],q[7];
su4_901 q[5],q[4];
su4_958 q[6],q[3];
su4_468 q[3],q[1];
su4_105 q[1],q[0];
su4_407 q[6],q[2];
su4_892 q[6],q[2];
su4_537 q[7],q[3];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];
