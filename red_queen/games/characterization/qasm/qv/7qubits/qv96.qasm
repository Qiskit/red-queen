OPENQASM 2.0;
include "qelib1.inc";
gate su4_635 p0,p1 {
	u3(0.20623287,3.055203,2.7262694) p0;
	u3(2.2568425,-1.9016809,-0.92180955) p1;
	cx p0,p1;
	u3(0.93801972,-pi/2,-pi/2) p0;
	u3(2.6763121,-1.0332016,-2.6520585) p1;
	cx p0,p1;
	u3(0.51084939,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3109018,-1.6014726,-1.213634) p0;
	u3(1.1041441,1.5593537,2.7583422) p1;
}
gate su4_415 p0,p1 {
	u3(2.2717561,0.54674213,-2.6189917) p0;
	u3(1.4996182,2.9113814,-0.49738586) p1;
	cx p0,p1;
	u3(0.61188077,-pi/2,-pi/2) p0;
	u3(2.6160654,-1.0950782,-2.7223522) p1;
	cx p0,p1;
	u3(0.17902954,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6493513,-1.1241669,-1.0603744) p0;
	u3(1.0972766,-0.093770367,-1.6072056) p1;
}
gate su4_722 p0,p1 {
	u3(1.1756929,3.0535922,-0.013334719) p0;
	u3(0.71996271,-2.9573488,-1.2520409) p1;
	cx p0,p1;
	u3(0.36020882,-pi/2,-pi/2) p0;
	u3(2.474747,-1.1902135,-2.8369956) p1;
	cx p0,p1;
	u3(0.004280149,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4562682,2.0536514,-0.0019278095) p0;
	u3(1.9802406,-0.89007365,-2.9213763) p1;
}
gate su4_684 p0,p1 {
	u3(1.2108703,-0.19535775,0.72191645) p0;
	u3(2.0973058,1.941271,2.1135392) p1;
	cx p0,p1;
	u3(0.8890694,-pi/2,-pi/2) p0;
	u3(2.6569369,-1.0551079,-2.6766901) p1;
	cx p0,p1;
	u3(0.38668738,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5962373,-3.0389013,-0.72635382) p0;
	u3(1.338385,-2.0725382,0.65329985) p1;
}
gate su4_617 p0,p1 {
	u3(0.54854639,-3.039213,-1.0687247) p0;
	u3(0.48179368,-3.0818089,-0.43511278) p1;
	cx p0,p1;
	u3(0.72869986,-pi/2,-pi/2) p0;
	u3(2.8105001,-0.78588027,-2.3845828) p1;
	cx p0,p1;
	u3(0.19214373,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7611295,-1.4068994,2.186919) p0;
	u3(2.165354,-1.1159091,1.3201167) p1;
}
gate su4_270 p0,p1 {
	u3(2.4905616,-1.0640198,-2.3995526) p0;
	u3(2.5428307,3.123627,-1.4352062) p1;
	cx p0,p1;
	u3(0.83903238,-pi/2,-pi/2) p0;
	u3(2.7762235,-0.87234047,-2.4765428) p1;
	cx p0,p1;
	u3(0.016049311,1.110223e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0363573,1.6099297,0.50462747) p0;
	u3(1.1851707,-2.8892169,1.9040724) p1;
}
gate su4_847 p0,p1 {
	u3(1.0701256,-1.9418709,1.6131143) p0;
	u3(1.156359,-1.5848389,0.74353017) p1;
	cx p0,p1;
	u3(0.6261342,-pi/2,-pi/2) p0;
	u3(2.332929,-1.2475812,-2.9143095) p1;
	cx p0,p1;
	u3(0.17805914,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2526179,-1.2887931,-1.0378203) p0;
	u3(2.3135094,2.6787526,1.1685973) p1;
}
gate su4_566 p0,p1 {
	u3(0.73644921,0.57451025,-0.79382203) p0;
	u3(2.6780668,-0.31120291,2.3890858) p1;
	cx p0,p1;
	u3(1.1587667,-pi/2,-pi/2) p0;
	u3(2.7958326,-0.82587572,-2.4269814) p1;
	cx p0,p1;
	u3(0.066350562,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1340503,-2.477343,0.25495256) p0;
	u3(0.39269027,-0.028253989,0.29072412) p1;
}
gate su4_594 p0,p1 {
	u3(2.1051865,2.2917985,1.793844) p0;
	u3(0.70885808,-0.61526652,1.6503747) p1;
	cx p0,p1;
	u3(0.97713766,-pi/2,-pi/2) p0;
	u3(2.7224715,-0.97089378,-2.5831429) p1;
	cx p0,p1;
	u3(0.50796939,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.77107731,1.601932,1.7237147) p0;
	u3(2.4149019,0.46325869,-1.530138) p1;
}
gate su4_11 p0,p1 {
	u3(1.165459,-1.906417,0.67538771) p0;
	u3(2.8471749,2.1189522,-1.1978635) p1;
	cx p0,p1;
	u3(0.65367097,-pi/2,-pi/2) p0;
	u3(2.3637554,-1.237241,-2.8995719) p1;
	cx p0,p1;
	u3(0.373939,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.55258956,-1.1026743,-1.3694112) p0;
	u3(0.39815726,-0.55978396,-2.7082525) p1;
}
gate su4_16 p0,p1 {
	u3(1.1893878,2.5169955,-2.9748439) p0;
	u3(1.3456428,1.5640546,-1.1301356) p1;
	cx p0,p1;
	u3(1.1739898,-pi/2,-pi/2) p0;
	u3(2.7747061,-0.87565242,-2.4800899) p1;
	cx p0,p1;
	u3(0.49256673,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.24434064,-2.5201193,0.3365986) p0;
	u3(0.75093512,-0.54688041,2.2095674) p1;
}
gate su4_244 p0,p1 {
	u3(2.2914662,0.16603634,2.7122837) p0;
	u3(1.4976896,2.9957089,2.6243463) p1;
	cx p0,p1;
	u3(0.82619106,-pi/2,-pi/2) p0;
	u3(2.4538343,-1.2004634,-2.8501482) p1;
	cx p0,p1;
	u3(0.32645264,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2257901,0.79798098,-1.9369965) p0;
	u3(0.82751584,-0.14049704,0.31315047) p1;
}
gate su4_7 p0,p1 {
	u3(0.95310031,-1.1324105,-1.9147316) p0;
	u3(0.56001983,2.4085516,-2.4102908) p1;
	cx p0,p1;
	u3(0.80731896,-pi/2,-pi/2) p0;
	u3(2.4451041,-1.2045279,-2.8554274) p1;
	cx p0,p1;
	u3(0.5470182,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.66436339,-1.1840981,2.4979544) p0;
	u3(2.2594807,-0.90499483,-0.50627599) p1;
}
gate su4_412 p0,p1 {
	u3(0.95960557,2.7031638,0.28228906) p0;
	u3(2.4748926,2.0555114,0.4918664) p1;
	cx p0,p1;
	u3(0.63324522,-pi/2,-pi/2) p0;
	u3(2.5456136,-1.1490999,-2.7860976) p1;
	cx p0,p1;
	u3(0.22833642,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0249097,2.1005359,-1.2202701) p0;
	u3(2.5635918,-0.96985935,-2.6790163) p1;
}
gate su4_461 p0,p1 {
	u3(2.7150074,-0.23883538,-2.9138342) p0;
	u3(2.6088902,1.7284617,-0.63017416) p1;
	cx p0,p1;
	u3(0.79360817,-pi/2,-pi/2) p0;
	u3(2.4955549,-1.179235,-2.8231378) p1;
	cx p0,p1;
	u3(0.50353614,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7874766,2.9151256,-2.0356617) p0;
	u3(2.344353,-1.383389,-1.5682868) p1;
}
gate su4_584 p0,p1 {
	u3(1.7424968,-2.1517867,-2.7399389) p0;
	u3(1.6450798,-2.5029197,1.6338232) p1;
	cx p0,p1;
	u3(1.1917133,-pi/2,-pi/2) p0;
	u3(2.7098408,-0.98958041,-2.6036578) p1;
	cx p0,p1;
	u3(0.30893995,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1769783,3.1205972,-1.7042199) p0;
	u3(2.0998247,1.7024609,2.9385353) p1;
}
gate su4_624 p0,p1 {
	u3(1.9660052,2.4241757,1.410552) p0;
	u3(2.2451991,3.1322744,-1.27069) p1;
	cx p0,p1;
	u3(0.88286587,-pi/2,-pi/2) p0;
	u3(2.3301857,-1.2484547,-2.9155763) p1;
	cx p0,p1;
	u3(0.3307262,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1979759,-1.8852632,-2.9625499) p0;
	u3(1.288142,0.75083211,1.9860597) p1;
}
gate su4_854 p0,p1 {
	u3(2.3409848,2.3804219,2.9739812) p0;
	u3(1.8719861,-2.6865077,2.6754142) p1;
	cx p0,p1;
	u3(0.60027313,-pi/2,-pi/2) p0;
	u3(2.6058512,-1.1039487,-2.7326369) p1;
	cx p0,p1;
	u3(0.004500956,4.1300297e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1709662,1.4552469,-0.96379352) p0;
	u3(1.6760807,-0.17994077,0.59771491) p1;
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
gate su4_809 p0,p1 {
	u3(1.9167704,-0.83963187,3.1389562) p0;
	u3(2.2736959,1.6954583,0.68979092) p1;
	cx p0,p1;
	u3(0.84982266,-pi/2,-pi/2) p0;
	u3(2.777808,-0.86884193,-2.4727982) p1;
	cx p0,p1;
	u3(0.12967342,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7826223,1.8151287,0.52743542) p0;
	u3(0.54608723,-3.0632228,2.4824284) p1;
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
qreg q[7];
creg meas[7];
su4_635 q[2],q[4];
su4_415 q[4],q[2];
su4_722 q[3],q[5];
su4_684 q[5],q[3];
su4_617 q[5],q[4];
su4_270 q[1],q[6];
su4_847 q[2],q[1];
su4_566 q[2],q[3];
su4_594 q[6],q[0];
su4_11 q[6],q[0];
su4_16 q[4],q[6];
su4_244 q[5],q[0];
su4_7 q[1],q[5];
su4_412 q[3],q[0];
su4_461 q[1],q[0];
su4_584 q[5],q[2];
su4_624 q[2],q[1];
su4_854 q[6],q[4];
su4_849 q[4],q[0];
su4_809 q[6],q[3];
su4_409 q[3],q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
