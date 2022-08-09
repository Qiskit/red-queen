OPENQASM 2.0;
include "qelib1.inc";
gate su4_250 p0,p1 {
	u3(1.9420839,-0.38383379,-0.91904061) p0;
	u3(0.64166826,-2.8229221,0.065038742) p1;
	cx p0,p1;
	u3(0.8323111,-pi/2,-pi/2) p0;
	u3(2.8143593,-0.77446376,-2.3725186) p1;
	cx p0,p1;
	u3(0.2770292,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4412405,0.63030443,-2.6587688) p0;
	u3(0.95301206,-1.2354727,0.37751739) p1;
}
gate su4_312 p0,p1 {
	u3(1.5990134,-1.1337829,-2.3900062) p0;
	u3(1.705276,1.3815434,0.12791445) p1;
	cx p0,p1;
	u3(0.6839644,-pi/2,-pi/2) p0;
	u3(2.7746873,-0.87569323,-2.4801336) p1;
	cx p0,p1;
	u3(0.21803148,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7780681,-1.5233839,3.0445607) p0;
	u3(0.32090489,-2.4551768,-3.137587) p1;
}
gate su4_119 p0,p1 {
	u3(0.34516798,2.0268293,0.62302652) p0;
	u3(1.5359163,2.1087952,-0.17321507) p1;
	cx p0,p1;
	u3(0.76971681,-pi/2,-pi/2) p0;
	u3(2.7750743,-0.87485224,-2.4792327) p1;
	cx p0,p1;
	u3(0.34030598,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.8290621,-2.3708505,0.18063571) p0;
	u3(1.1700714,-0.56943532,1.4458285) p1;
}
gate su4_758 p0,p1 {
	u3(0.88721635,-2.7955864,-1.4752496) p0;
	u3(2.2804552,0.70225005,0.14200917) p1;
	cx p0,p1;
	u3(0.46837108,-pi/2,-pi/2) p0;
	u3(2.7010942,-1.001746,-2.6170795) p1;
	cx p0,p1;
	u3(0.19890995,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5778341,-2.9319066,0.94370364) p0;
	u3(2.9058289,-1.3173441,-1.6680004) p1;
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
gate su4_741 p0,p1 {
	u3(1.3199845,1.9846996,2.3202578) p0;
	u3(0.81942731,-1.1558609,1.7846981) p1;
	cx p0,p1;
	u3(0.97242201,-pi/2,-pi/2) p0;
	u3(2.5232271,-1.1632826,-2.8033657) p1;
	cx p0,p1;
	u3(0.047907635,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7444528,-0.22242883,2.8208689) p0;
	u3(2.1752603,-2.3335034,1.2064848) p1;
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
gate su4_228 p0,p1 {
	u3(1.2550663,-1.691555,1.5371257) p0;
	u3(2.7952881,-0.40982561,-0.98616425) p1;
	cx p0,p1;
	u3(1.0674671,-pi/2,-pi/2) p0;
	u3(2.5391395,-1.1533284,-2.7912181) p1;
	cx p0,p1;
	u3(0.6220441,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.89926077,0.49328717,2.9875354) p0;
	u3(0.32872967,-0.86884999,0.044440835) p1;
}
gate su4_428 p0,p1 {
	u3(1.1448206,-2.0330047,-1.885339) p0;
	u3(2.0222909,0.66248224,2.2909604) p1;
	cx p0,p1;
	u3(0.83437658,-pi/2,-pi/2) p0;
	u3(2.3995574,-1.2239038,-2.881176) p1;
	cx p0,p1;
	u3(0.21953242,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7341193,-0.95274037,-2.6193657) p0;
	u3(1.1372005,-2.4646976,0.75368507) p1;
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
gate su4_756 p0,p1 {
	u3(1.723131,1.5938998,-1.1927684) p0;
	u3(2.7599645,2.4309567,-0.93321281) p1;
	cx p0,p1;
	u3(0.14189799,-pi/2,-pi/2) p0;
	u3(2.52077,-1.1647666,-2.8051885) p1;
	cx p0,p1;
	u3(0.0029900359,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.86104893,-1.3301162,1.2805778) p0;
	u3(1.7329012,-2.8680623,-2.2729418) p1;
}
gate su4_330 p0,p1 {
	u3(1.9929995,-1.0321086,1.6791698) p0;
	u3(1.3869617,1.2869042,-1.605092) p1;
	cx p0,p1;
	u3(0.91140552,-pi/2,-pi/2) p0;
	u3(2.6653261,-1.0458855,-2.6662904) p1;
	cx p0,p1;
	u3(0.47240653,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.13957609,-1.4170765,-1.8665072) p0;
	u3(1.5062609,2.3296143,0.10890998) p1;
}
gate su4_513 p0,p1 {
	u3(1.4155258,-1.4814966,2.9937767) p0;
	u3(2.4058192,0.26779636,-1.8037072) p1;
	cx p0,p1;
	u3(0.8389386,-pi/2,-pi/2) p0;
	u3(2.5981814,-1.1103525,-2.7401011) p1;
	cx p0,p1;
	u3(0.045386021,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.38224288,0.48456827,-1.6565681) p0;
	u3(1.0273508,-2.2071168,2.2939208) p1;
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
gate su4_6 p0,p1 {
	u3(0.84578113,0.30024685,2.4312749) p0;
	u3(1.9921703,-1.5450338,1.7632577) p1;
	cx p0,p1;
	u3(0.8761894,-pi/2,-pi/2) p0;
	u3(2.3588264,-1.2389616,-2.9019928) p1;
	cx p0,p1;
	u3(0.33733319,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.73933691,2.8502949,0.047491448) p0;
	u3(2.4497219,-2.1665856,2.4368387) p1;
}
gate su4_919 p0,p1 {
	u3(2.244477,2.665373,-2.2409888) p0;
	u3(2.2594801,-2.394005,-2.7506985) p1;
	cx p0,p1;
	u3(0.76300235,-pi/2,-pi/2) p0;
	u3(2.5360592,-1.1553031,-2.7936173) p1;
	cx p0,p1;
	u3(0.36347958,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2085119,-1.6378645,-0.11665281) p0;
	u3(2.1573548,-1.332198,-0.719537) p1;
}
qreg q[6];
creg meas[6];
su4_250 q[2],q[0];
su4_312 q[1],q[4];
su4_119 q[2],q[1];
su4_758 q[3],q[5];
su4_599 q[3],q[0];
su4_575 q[3],q[0];
su4_741 q[4],q[5];
su4_460 q[2],q[4];
su4_7 q[2],q[3];
su4_228 q[5],q[1];
su4_428 q[4],q[1];
su4_670 q[4],q[3];
su4_756 q[4],q[3];
su4_330 q[5],q[0];
su4_513 q[0],q[2];
su4_722 q[5],q[1];
su4_6 q[2],q[1];
su4_919 q[5],q[0];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
