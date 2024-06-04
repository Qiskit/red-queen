OPENQASM 2.0;
include "qelib1.inc";
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
gate su4_296 p0,p1 {
	u3(0.70653751,1.6873358,-1.1062529) p0;
	u3(1.5798685,-1.97717,-0.31375032) p1;
	cx p0,p1;
	u3(0.58866381,-pi/2,-pi/2) p0;
	u3(2.698891,-1.0047172,-2.620366) p1;
	cx p0,p1;
	u3(0.35296085,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1149542,3.012159,1.7503793) p0;
	u3(0.70832162,2.6008337,-0.86630676) p1;
}
gate su4_840 p0,p1 {
	u3(0.45313266,-1.5511346,-0.96139699) p0;
	u3(2.6672725,0.77777426,-0.0034540261) p1;
	cx p0,p1;
	u3(0.64511626,-pi/2,-pi/2) p0;
	u3(2.4908556,-1.1817866,-2.826339) p1;
	cx p0,p1;
	u3(0.041371162,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.72293582,-1.6152514,-1.2674625) p0;
	u3(2.3312245,-1.2743188,-2.4143605) p1;
}
gate su4_75 p0,p1 {
	u3(1.7319288,-1.9776761,-1.5431876) p0;
	u3(1.3601757,-0.024945813,2.5211363) p1;
	cx p0,p1;
	u3(1.043093,-pi/2,-pi/2) p0;
	u3(2.6303311,-1.0819864,-2.7072806) p1;
	cx p0,p1;
	u3(0.064246853,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.52507066,2.1620169,-0.64855798) p0;
	u3(0.85554992,1.784979,-1.7390387) p1;
}
gate su4_962 p0,p1 {
	u3(2.1619931,-0.6336321,-1.2377772) p0;
	u3(0.97894771,-2.059807,-1.1864781) p1;
	cx p0,p1;
	u3(0.77671972,-pi/2,-pi/2) p0;
	u3(2.1826693,-1.2862993,-2.9751742) p1;
	cx p0,p1;
	u3(0.2144559,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7163685,-1.1678873,-1.0067473) p0;
	u3(1.6680423,-3.1186496,-2.1989128) p1;
}
gate su4_618 p0,p1 {
	u3(0.78687848,2.9858592,1.4423689) p0;
	u3(0.6371754,0.90112396,0.039285662) p1;
	cx p0,p1;
	u3(0.4711569,-pi/2,-pi/2) p0;
	u3(2.4775338,-1.18879,-2.8351861) p1;
	cx p0,p1;
	u3(0.064251769,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1444248,-1.9416986,0.70351887) p0;
	u3(2.3685892,2.7010765,1.2264982) p1;
}
gate su4_453 p0,p1 {
	u3(2.4698872,2.9695265,0.44196753) p0;
	u3(0.47775835,-0.66746798,2.8215554) p1;
	cx p0,p1;
	u3(1.0171892,-pi/2,-pi/2) p0;
	u3(2.8093346,-0.7892496,-2.3881463) p1;
	cx p0,p1;
	u3(0.84828121,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.69283,-0.22570728,0.2414992) p0;
	u3(1.2409635,-1.6646983,-2.7990518) p1;
}
qreg q[4];
creg meas[4];
su4_279 q[1],q[2];
su4_380 q[0],q[3];
su4_296 q[1],q[0];
su4_840 q[2],q[3];
su4_75 q[0],q[2];
su4_962 q[3],q[1];
su4_618 q[1],q[0];
su4_453 q[2],q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
