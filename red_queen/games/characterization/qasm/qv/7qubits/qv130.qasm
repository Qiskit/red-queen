OPENQASM 2.0;
include "qelib1.inc";
gate su4_360 p0,p1 {
	u3(1.0887798,0.28817783,2.2057304) p0;
	u3(0.51803414,2.6443994,0.20304798) p1;
	cx p0,p1;
	u3(0.78567384,-pi/2,-pi/2) p0;
	u3(2.7585755,-0.9086998,-2.515603) p1;
	cx p0,p1;
	u3(0.31234013,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6388726,-0.30994921,0.91571215) p0;
	u3(1.8567946,-1.6022846,2.6781129) p1;
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
gate su4_21 p0,p1 {
	u3(1.4426467,0.51815763,-2.9626211) p0;
	u3(1.3611549,0.12059197,-3.0732588) p1;
	cx p0,p1;
	u3(0.77073002,-pi/2,-pi/2) p0;
	u3(2.6818957,-1.0264737,-2.6445408) p1;
	cx p0,p1;
	u3(0.17031748,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5286988,2.3665788,-1.601776) p0;
	u3(2.6414131,-1.8299421,-1.7722638) p1;
}
gate su4_765 p0,p1 {
	u3(1.9561083,-0.5320353,-0.84659869) p0;
	u3(1.2761063,-1.1873919,-1.0851283) p1;
	cx p0,p1;
	u3(0.67482237,-pi/2,-pi/2) p0;
	u3(2.6646717,-1.046619,-2.6671158) p1;
	cx p0,p1;
	u3(0.12285666,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.71498894,-2.9527964,-0.86076755) p0;
	u3(1.4145195,-2.8191608,-1.9857097) p1;
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
gate su4_456 p0,p1 {
	u3(1.3758268,-1.3903978,2.2756248) p0;
	u3(1.160574,0.85210112,1.2024475) p1;
	cx p0,p1;
	u3(0.51182513,-pi/2,-pi/2) p0;
	u3(2.5326028,-1.1574911,-2.7962817) p1;
	cx p0,p1;
	u3(0.1035528,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7358534,-1.9769558,1.4563186) p0;
	u3(2.3711533,0.33348529,-0.095255407) p1;
}
gate su4_982 p0,p1 {
	u3(0.8297132,1.923616,2.4702292) p0;
	u3(1.2245697,0.59807348,0.069712924) p1;
	cx p0,p1;
	u3(1.0071032,-pi/2,-pi/2) p0;
	u3(2.7227642,-0.97044405,-2.5826506) p1;
	cx p0,p1;
	u3(0.055301706,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3011008,1.0509308,-0.98872473) p0;
	u3(1.0689983,-0.4587745,-0.94361595) p1;
}
gate su4_56 p0,p1 {
	u3(2.7573104,-3.1109292,2.0282604) p0;
	u3(1.6890731,0.32311038,2.4568198) p1;
	cx p0,p1;
	u3(0.78077184,-pi/2,-pi/2) p0;
	u3(2.6828467,-1.0253079,-2.6432403) p1;
	cx p0,p1;
	u3(0.28619406,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3326691,1.106772,-0.49331969) p0;
	u3(2.4803884,0.31952468,-1.6229347) p1;
}
gate su4_286 p0,p1 {
	u3(1.1739313,-1.2138893,1.1282723) p0;
	u3(2.0082599,1.706919,-1.9619909) p1;
	cx p0,p1;
	u3(0.99577651,-pi/2,-pi/2) p0;
	u3(2.7892847,-0.84219712,-2.4443499) p1;
	cx p0,p1;
	u3(0.54599439,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0798415,-3.0924047,-1.5394062) p0;
	u3(3.0500161,-2.1863724,-2.3579609) p1;
}
gate su4_830 p0,p1 {
	u3(2.2598322,-0.1548386,-0.32196535) p0;
	u3(0.42490271,-1.0017192,-1.5334301) p1;
	cx p0,p1;
	u3(0.81217434,-pi/2,-pi/2) p0;
	u3(2.6890073,-1.0176121,-2.6346701) p1;
	cx p0,p1;
	u3(0.13022941,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3798293,-0.29196815,0.12217856) p0;
	u3(1.2947141,1.2347105,0.80921267) p1;
}
gate su4_749 p0,p1 {
	u3(0.58767241,2.6446712,1.7026787) p0;
	u3(0.97408709,1.6783938,-0.8349338) p1;
	cx p0,p1;
	u3(0.54707762,-pi/2,-pi/2) p0;
	u3(2.6923541,-1.0133233,-2.629905) p1;
	cx p0,p1;
	u3(0.21592272,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6654502,2.4094685,1.7718185) p0;
	u3(2.7035213,3.0580775,-1.4476755) p1;
}
gate su4_731 p0,p1 {
	u3(2.2199785,2.1364361,-0.53744791) p0;
	u3(1.8000889,-0.28501669,-0.87852942) p1;
	cx p0,p1;
	u3(1.271746,-pi/2,-pi/2) p0;
	u3(2.6599809,-1.0518061,-2.6729616) p1;
	cx p0,p1;
	u3(0.45047329,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9557035,1.4304414,-0.62664499) p0;
	u3(1.2798301,2.0406171,-0.54569348) p1;
}
gate su4_799 p0,p1 {
	u3(1.7546631,0.44703076,-3.0164492) p0;
	u3(0.73036847,-2.738689,-1.5715758) p1;
	cx p0,p1;
	u3(0.76307991,-pi/2,-pi/2) p0;
	u3(2.6805171,-1.0281532,-2.6464155) p1;
	cx p0,p1;
	u3(0.080367334,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4231324,0.97914829,-1.5604772) p0;
	u3(2.5963758,3.0748262,-2.7601191) p1;
}
gate su4_596 p0,p1 {
	u3(1.4781772,-1.7257258,-2.1143171) p0;
	u3(0.49907722,3.0548884,1.6410906) p1;
	cx p0,p1;
	u3(1.1209341,-pi/2,-pi/2) p0;
	u3(2.6728394,-1.0372885,-2.6566355) p1;
	cx p0,p1;
	u3(0.092524003,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3612428,2.7200735,-2.7476609) p0;
	u3(2.1125097,0.13311378,-0.92383415) p1;
}
gate su4_911 p0,p1 {
	u3(1.4456477,2.7052731,1.8171398) p0;
	u3(2.471636,-1.0983229,-3.0091089) p1;
	cx p0,p1;
	u3(0.96447815,-pi/2,-pi/2) p0;
	u3(2.4484535,-1.2029828,-2.8534161) p1;
	cx p0,p1;
	u3(0.44621451,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5955617,1.329173,0.87549783) p0;
	u3(0.31224099,-2.5180821,0.87102367) p1;
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
gate su4_792 p0,p1 {
	u3(2.7852825,-0.73319442,-2.3355744) p0;
	u3(1.3214878,2.5580046,0.8258953) p1;
	cx p0,p1;
	u3(0.3999407,-pi/2,-pi/2) p0;
	u3(2.5340569,-1.1565741,-2.7951643) p1;
	cx p0,p1;
	u3(0.25700809,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.79987024,-2.7383217,-1.6356697) p0;
	u3(1.2027372,-2.2831594,2.1134361) p1;
}
gate su4_145 p0,p1 {
	u3(3.0609526,1.2622244,1.1422044) p0;
	u3(2.4709487,-2.881467,2.4712658) p1;
	cx p0,p1;
	u3(0.68702831,-pi/2,-pi/2) p0;
	u3(2.6968849,-1.0073913,-2.6233268) p1;
	cx p0,p1;
	u3(0.16407731,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8210645,1.522001,0.91209128) p0;
	u3(0.8624559,2.1892617,1.0774049) p1;
}
gate su4_589 p0,p1 {
	u3(0.22746925,0.19753764,-0.10064833) p0;
	u3(1.2045171,2.8865898,-1.4994984) p1;
	cx p0,p1;
	u3(0.84400841,-pi/2,-pi/2) p0;
	u3(2.7193185,-0.9756893,-2.5883965) p1;
	cx p0,p1;
	u3(0.010391532,1.8207658e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6494166,-2.5520184,-2.9493735) p0;
	u3(2.8123985,-2.3060582,2.2992099) p1;
}
gate su4_139 p0,p1 {
	u3(2.2077922,-2.6986673,-1.3670683) p0;
	u3(0.78398864,0.079798601,-1.9737907) p1;
	cx p0,p1;
	u3(0.70830499,-pi/2,-pi/2) p0;
	u3(2.2541594,-1.2699989,-2.9481732) p1;
	cx p0,p1;
	u3(0.033933523,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7724741,0.11505756,-0.11238279) p0;
	u3(1.629141,1.2793728,-2.8440118) p1;
}
qreg q[7];
creg meas[7];
su4_360 q[0],q[2];
su4_800 q[1],q[5];
su4_21 q[0],q[1];
su4_765 q[2],q[1];
su4_361 q[4],q[6];
su4_991 q[3],q[4];
su4_456 q[3],q[0];
su4_982 q[4],q[1];
su4_56 q[6],q[5];
su4_286 q[6],q[5];
su4_830 q[0],q[6];
su4_749 q[2],q[5];
su4_731 q[1],q[5];
su4_799 q[2],q[6];
su4_596 q[3],q[5];
su4_911 q[4],q[0];
su4_400 q[4],q[1];
su4_792 q[5],q[4];
su4_145 q[6],q[0];
su4_589 q[1],q[0];
su4_139 q[2],q[6];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
