OPENQASM 2.0;
include "qelib1.inc";
gate su4_824 p0,p1 {
	u3(0.82925785,-2.6746963,-1.0598151) p0;
	u3(1.8745569,-2.1753249,2.5226291) p1;
	cx p0,p1;
	u3(0.80078913,-pi/2,-pi/2) p0;
	u3(2.7932777,-0.83234765,-2.4338636) p1;
	cx p0,p1;
	u3(0.15697655,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.065147,-1.6364222,-1.1474466) p0;
	u3(1.7681007,1.5350385,-2.9377783) p1;
}
gate su4_279 p0,p1 {
	u3(1.6178222,0.17436924,-1.1495161) p0;
	u3(1.6869642,1.7598509,-0.3786781) p1;
	cx p0,p1;
	u3(0.81354178,-pi/2,-pi/2) p0;
	u3(2.5059806,-1.1734158,-2.8158783) p1;
	cx p0,p1;
	u3(0.4066677,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2805825,0.2065787,2.3664857) p0;
	u3(0.91417641,0.2111804,-0.83242076) p1;
}
gate su4_835 p0,p1 {
	u3(1.8551584,3.0153235,0.18799482) p0;
	u3(0.80680186,-0.72139818,1.1405828) p1;
	cx p0,p1;
	u3(0.53246809,-pi/2,-pi/2) p0;
	u3(2.645035,-1.0675554,-2.6908019) p1;
	cx p0,p1;
	u3(0.13390964,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.67101079,1.8064838,-0.93803762) p0;
	u3(0.55200261,2.1084782,-0.74937952) p1;
}
gate su4_691 p0,p1 {
	u3(1.2364568,1.5596685,0.30028355) p0;
	u3(1.799207,-1.1148014,0.73540168) p1;
	cx p0,p1;
	u3(0.56612707,-pi/2,-pi/2) p0;
	u3(2.6218179,-1.0899011,-2.7163776) p1;
	cx p0,p1;
	u3(0.17354325,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6630766,-0.36819496,-2.9624775) p0;
	u3(1.8758426,-2.5441,-2.2599968) p1;
}
gate su4_973 p0,p1 {
	u3(1.0677752,-1.5506581,-2.4918659) p0;
	u3(2.1929884,-1.2011068,1.1765664) p1;
	cx p0,p1;
	u3(0.56611618,-pi/2,-pi/2) p0;
	u3(2.6949725,-1.009913,-2.6261215) p1;
	cx p0,p1;
	u3(0.40902917,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3586117,2.9729825,2.979807) p0;
	u3(2.212636,1.0495997,-1.5347096) p1;
}
gate su4_743 p0,p1 {
	u3(1.7728609,3.0154112,2.9903881) p0;
	u3(1.2349948,2.9105368,-3.0341105) p1;
	cx p0,p1;
	u3(0.85433449,-pi/2,-pi/2) p0;
	u3(2.6537307,-1.0585324,-2.6805636) p1;
	cx p0,p1;
	u3(0.34454974,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3059123,-3.0131426,2.6811039) p0;
	u3(1.311378,-1.0616421,0.054765898) p1;
}
gate su4_166 p0,p1 {
	u3(1.3178918,-2.1018963,-0.73596436) p0;
	u3(2.7754429,0.015774253,3.0794875) p1;
	cx p0,p1;
	u3(0.74898201,-pi/2,-pi/2) p0;
	u3(2.7233835,-0.96948991,-2.5816063) p1;
	cx p0,p1;
	u3(0.17667829,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8732115,-2.8286967,-2.7610485) p0;
	u3(1.4498332,-1.666713,3.0037549) p1;
}
gate su4_989 p0,p1 {
	u3(0.3199804,-2.1070068,-2.7281049) p0;
	u3(2.0770938,0.6282376,1.1671273) p1;
	cx p0,p1;
	u3(0.63695637,-pi/2,-pi/2) p0;
	u3(2.2837006,-1.2622028,-2.9360461) p1;
	cx p0,p1;
	u3(0.27336272,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3765829,-2.9986246,2.5822416) p0;
	u3(1.5616466,2.4363726,1.0296705) p1;
}
qreg q[4];
creg meas[4];
su4_824 q[0],q[1];
su4_279 q[3],q[2];
su4_835 q[0],q[3];
su4_691 q[2],q[1];
su4_973 q[2],q[1];
su4_743 q[1],q[2];
su4_166 q[3],q[0];
su4_989 q[3],q[0];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
