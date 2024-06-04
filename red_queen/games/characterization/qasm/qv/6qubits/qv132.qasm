OPENQASM 2.0;
include "qelib1.inc";
gate su4_567 p0,p1 {
	u3(1.1508428,-1.9340077,-1.4684987) p0;
	u3(1.0259741,1.4112808,-0.19982569) p1;
	cx p0,p1;
	u3(0.75717407,-pi/2,-pi/2) p0;
	u3(2.6338714,-1.0786023,-2.7034043) p1;
	cx p0,p1;
	u3(0.52807022,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5418178,0.76659145,1.4172654) p0;
	u3(2.2584277,-0.082707838,0.26903543) p1;
}
gate su4_303 p0,p1 {
	u3(1.3348871,-2.9949056,-2.0343899) p0;
	u3(1.4626691,-1.420882,-2.958709) p1;
	cx p0,p1;
	u3(0.38197618,-pi/2,-pi/2) p0;
	u3(2.6755433,-1.0341127,-2.6530782) p1;
	cx p0,p1;
	u3(0.078810177,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0966056,1.2338349,-0.95328034) p0;
	u3(1.2739934,-1.7659199,-3.0937475) p1;
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
gate su4_205 p0,p1 {
	u3(2.1920836,1.2448559,1.1367058) p0;
	u3(1.2745396,-2.0138044,0.10495812) p1;
	cx p0,p1;
	u3(0.45692157,-pi/2,-pi/2) p0;
	u3(2.70656,-0.99421449,-2.6087639) p1;
	cx p0,p1;
	u3(0.10201152,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0054304,2.4651518,3.0960244) p0;
	u3(1.7519537,-1.9240816,-1.2639375) p1;
}
gate su4_200 p0,p1 {
	u3(1.909919,-0.49771894,-2.2011427) p0;
	u3(1.2257657,-0.56240826,-0.61366034) p1;
	cx p0,p1;
	u3(0.41844369,-pi/2,-pi/2) p0;
	u3(2.7893161,-0.8421207,-2.4442685) p1;
	cx p0,p1;
	u3(0.070271833,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7832149,-1.1621312,-1.6331669) p0;
	u3(1.4661356,0.51036565,-1.9788717) p1;
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
gate su4_875 p0,p1 {
	u3(2.6963362,1.2328081,-1.6602347) p0;
	u3(2.1351912,-1.2128839,-0.96804821) p1;
	cx p0,p1;
	u3(1.2309667,-pi/2,-pi/2) p0;
	u3(2.6242064,-1.0877116,-2.7138565) p1;
	cx p0,p1;
	u3(0.72357354,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1342595,1.4784879,0.3838684) p0;
	u3(1.9442207,0.026118698,-2.7618767) p1;
}
gate su4_628 p0,p1 {
	u3(1.2948513,-0.53365072,2.6859884) p0;
	u3(1.2023072,0.94160124,1.1370892) p1;
	cx p0,p1;
	u3(0.78052154,-pi/2,-pi/2) p0;
	u3(2.6633162,-1.0481305,-2.6688177) p1;
	cx p0,p1;
	u3(0.37229674,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.73229725,1.8080469,-0.028233896) p0;
	u3(2.5623903,0.79973269,-1.9263018) p1;
}
gate su4_907 p0,p1 {
	u3(2.3669254,-1.929816,2.855292) p0;
	u3(0.96450925,-2.3888419,-2.0978027) p1;
	cx p0,p1;
	u3(0.70853503,-pi/2,-pi/2) p0;
	u3(2.3516403,-1.2414231,-2.9054773) p1;
	cx p0,p1;
	u3(0.029168342,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2726528,-2.9362179,-0.93359273) p0;
	u3(0.12146512,0.53086137,2.6689926) p1;
}
gate su4_153 p0,p1 {
	u3(2.1998458,1.0123454,-2.6021246) p0;
	u3(1.5425229,2.2755371,0.44297224) p1;
	cx p0,p1;
	u3(0.52500437,-pi/2,-pi/2) p0;
	u3(2.6306869,-1.0816488,-2.7068936) p1;
	cx p0,p1;
	u3(0.23696267,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3959626,0.88358019,-2.8731553) p0;
	u3(2.0302613,-0.024692835,-1.6105491) p1;
}
gate su4_111 p0,p1 {
	u3(1.3358154,-2.5377262,1.8446149) p0;
	u3(2.2859992,-2.8274307,3.022313) p1;
	cx p0,p1;
	u3(0.80228456,-pi/2,-pi/2) p0;
	u3(2.4328339,-1.2100404,-2.8626506) p1;
	cx p0,p1;
	u3(0.1776362,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.53483602,-2.609175,-1.3874272) p0;
	u3(0.43307736,0.9151081,-1.1104011) p1;
}
gate su4_761 p0,p1 {
	u3(0.95456829,-0.49155486,1.2744705) p0;
	u3(0.7360261,2.9334414,-0.062079425) p1;
	cx p0,p1;
	u3(1.2106698,-pi/2,-pi/2) p0;
	u3(2.6954792,-1.0092475,-2.6253837) p1;
	cx p0,p1;
	u3(0.22838115,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7043147,1.4297494,-1.4439982) p0;
	u3(1.5688297,2.2890256,-1.257275) p1;
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
gate su4_896 p0,p1 {
	u3(0.14917965,-0.42144332,-0.67787532) p0;
	u3(0.39088961,0.17924498,-0.11983635) p1;
	cx p0,p1;
	u3(0.39190138,-pi/2,-pi/2) p0;
	u3(2.7435613,-0.93632578,-2.5454771) p1;
	cx p0,p1;
	u3(0.18206079,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2774492,2.6494984,-0.62890609) p0;
	u3(2.24187,0.4868217,2.4770799) p1;
}
gate su4_10 p0,p1 {
	u3(1.5456654,-1.7622722,-1.6222541) p0;
	u3(0.90348607,2.1896731,1.1581267) p1;
	cx p0,p1;
	u3(0.97750416,-pi/2,-pi/2) p0;
	u3(2.6581302,-1.0538195,-2.6752344) p1;
	cx p0,p1;
	u3(0.28053645,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1441014,-0.34079484,-2.5884062) p0;
	u3(0.91686809,1.625952,-1.2250406) p1;
}
gate su4_149 p0,p1 {
	u3(2.6358765,-1.240261,-2.8743619) p0;
	u3(1.0095867,-2.7574416,-0.60189035) p1;
	cx p0,p1;
	u3(1.3702186,-pi/2,-pi/2) p0;
	u3(2.7356119,-0.94989211,-2.5602185) p1;
	cx p0,p1;
	u3(0.27322892,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3976012,0.78623207,1.4175491) p0;
	u3(0.21723831,2.2759067,1.6419863) p1;
}
qreg q[6];
creg meas[6];
su4_567 q[2],q[1];
su4_303 q[4],q[3];
su4_659 q[2],q[4];
su4_205 q[3],q[1];
su4_200 q[3],q[1];
su4_79 q[1],q[3];
su4_584 q[0],q[5];
su4_875 q[5],q[0];
su4_628 q[0],q[4];
su4_907 q[4],q[0];
su4_153 q[3],q[4];
su4_111 q[5],q[2];
su4_761 q[2],q[5];
su4_526 q[1],q[2];
su4_896 q[1],q[3];
su4_10 q[5],q[0];
su4_149 q[0],q[2];
su4_875 q[5],q[4];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
