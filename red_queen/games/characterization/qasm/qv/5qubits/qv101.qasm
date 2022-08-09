OPENQASM 2.0;
include "qelib1.inc";
gate su4_123 p0,p1 {
	u3(0.62236871,0.4751646,0.64905782) p0;
	u3(2.701503,2.2163858,-3.1167764) p1;
	cx p0,p1;
	u3(1.1195144,-pi/2,-pi/2) p0;
	u3(2.5034865,-1.1748282,-2.8176352) p1;
	cx p0,p1;
	u3(0.3485359,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8939447,-2.3093951,-2.7019015) p0;
	u3(1.1505169,-1.8259785,2.0818281) p1;
}
gate su4_787 p0,p1 {
	u3(1.1389631,-0.4067305,-1.4333339) p0;
	u3(1.9266549,-3.084822,-1.206193) p1;
	cx p0,p1;
	u3(0.88540639,-pi/2,-pi/2) p0;
	u3(2.7384445,-0.94513646,-2.5550453) p1;
	cx p0,p1;
	u3(0.46906535,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9271121,-1.0678283,2.0333309) p0;
	u3(1.3777589,-1.6285396,-0.66950706) p1;
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
gate su4_608 p0,p1 {
	u3(2.1838867,-2.2710955,-2.2541401) p0;
	u3(2.2732316,-2.6299456,-0.89719945) p1;
	cx p0,p1;
	u3(0.85749925,-pi/2,-pi/2) p0;
	u3(2.3741087,-1.2335389,-2.8944018) p1;
	cx p0,p1;
	u3(0.10695862,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.960141,2.8045863,1.4239337) p0;
	u3(0.63644239,-0.089205795,1.2059434) p1;
}
gate su4_177 p0,p1 {
	u3(1.7024038,3.0343814,0.27325209) p0;
	u3(1.2130093,1.6058198,2.8684392) p1;
	cx p0,p1;
	u3(1.0429563,-pi/2,-pi/2) p0;
	u3(2.5691035,-1.1328144,-2.7665752) p1;
	cx p0,p1;
	u3(0.20811001,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7847103,-3.0237476,2.1697857) p0;
	u3(1.6792155,2.578282,2.1418444) p1;
}
gate su4_203 p0,p1 {
	u3(1.719017,2.5311303,-1.3238991) p0;
	u3(2.5213686,2.3892663,2.6280439) p1;
	cx p0,p1;
	u3(0.34575463,-pi/2,-pi/2) p0;
	u3(2.1335692,-1.2956928,-2.9921205) p1;
	cx p0,p1;
	u3(0.10293988,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.38676858,1.0200677,-2.8117185) p0;
	u3(1.6931587,-1.0765083,2.7443672) p1;
}
gate su4_22 p0,p1 {
	u3(2.027949,1.0867582,-0.14445444) p0;
	u3(2.331204,1.1803431,2.0115293) p1;
	cx p0,p1;
	u3(0.57163249,-pi/2,-pi/2) p0;
	u3(2.7139149,-0.98370298,-2.5971926) p1;
	cx p0,p1;
	u3(0.46759018,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1434261,-1.6841905,-0.80431247) p0;
	u3(2.3647449,2.8045465,0.13472389) p1;
}
gate su4_979 p0,p1 {
	u3(1.2453061,0.82324246,1.4423565) p0;
	u3(1.3823629,-0.63534107,-2.568558) p1;
	cx p0,p1;
	u3(0.69230318,-pi/2,-pi/2) p0;
	u3(2.7768107,-0.87104894,-2.4751602) p1;
	cx p0,p1;
	u3(0.45862237,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1295721,-1.295781,-1.4846177) p0;
	u3(2.0415543,1.9915993,-2.2915041) p1;
}
gate su4_642 p0,p1 {
	u3(2.1164497,2.9048074,-0.42771705) p0;
	u3(1.0088837,-0.55856604,0.60960652) p1;
	cx p0,p1;
	u3(0.50557147,-pi/2,-pi/2) p0;
	u3(2.7879697,-0.84537233,-2.4477337) p1;
	cx p0,p1;
	u3(0.21374371,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2800211,3.0293861,1.6114191) p0;
	u3(1.6202746,0.66477594,0.24233136) p1;
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
qreg q[5];
creg meas[5];
su4_123 q[0],q[2];
su4_787 q[1],q[4];
su4_426 q[1],q[2];
su4_608 q[4],q[3];
su4_177 q[3],q[0];
su4_203 q[4],q[1];
su4_22 q[1],q[2];
su4_979 q[3],q[4];
su4_642 q[2],q[3];
su4_556 q[4],q[1];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
