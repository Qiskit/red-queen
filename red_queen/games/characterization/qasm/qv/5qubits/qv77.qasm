OPENQASM 2.0;
include "qelib1.inc";
gate su4_784 p0,p1 {
	u3(1.9895637,2.6167535,-1.8748408) p0;
	u3(1.7433811,1.4176747,2.4921533) p1;
	cx p0,p1;
	u3(0.73479498,-pi/2,-pi/2) p0;
	u3(2.6414168,-1.0712,-2.6949511) p1;
	cx p0,p1;
	u3(0.27091208,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6978878,-1.6858427,2.8857546) p0;
	u3(0.91616998,0.4296957,-2.6376948) p1;
}
gate su4_744 p0,p1 {
	u3(0.58667809,-2.5519906,-3.1236354) p0;
	u3(2.4808542,-1.3527867,-1.6081723) p1;
	cx p0,p1;
	u3(0.75763688,-pi/2,-pi/2) p0;
	u3(2.5091299,-1.1716137,-2.8136415) p1;
	cx p0,p1;
	u3(0.38778752,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9653884,0.99095899,-2.0436437) p0;
	u3(1.9598622,1.4543063,2.2446306) p1;
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
gate su4_472 p0,p1 {
	u3(0.79952722,1.1256724,-2.3448341) p0;
	u3(2.6938795,2.3151646,-2.9732065) p1;
	cx p0,p1;
	u3(0.58073773,-pi/2,-pi/2) p0;
	u3(2.3346526,-1.2470287,-2.91351) p1;
	cx p0,p1;
	u3(0.28306217,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.58001356,-0.96964286,1.7543215) p0;
	u3(0.60540621,0.96066262,-2.4751641) p1;
}
gate su4_138 p0,p1 {
	u3(1.2131228,-1.1103714,2.4804885) p0;
	u3(2.8741528,-1.9763917,2.1647296) p1;
	cx p0,p1;
	u3(0.43556216,-pi/2,-pi/2) p0;
	u3(2.4655761,-1.1948006,-2.8428544) p1;
	cx p0,p1;
	u3(0.14495772,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.24173547,-2.5688722,1.9515954) p0;
	u3(0.32125847,2.3052064,2.1587632) p1;
}
gate su4_155 p0,p1 {
	u3(2.4007338,-2.0026425,0.56064476) p0;
	u3(1.2090149,-0.14556467,-2.7265944) p1;
	cx p0,p1;
	u3(0.78439647,-pi/2,-pi/2) p0;
	u3(2.681871,-1.0265038,-2.6445744) p1;
	cx p0,p1;
	u3(0.13679404,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7191402,-0.28679703,1.9964727) p0;
	u3(0.62751192,2.7691655,-0.37614636) p1;
}
gate su4_117 p0,p1 {
	u3(0.88606491,0.88904275,-1.3674591) p0;
	u3(2.5323753,-0.18067273,-3.067937) p1;
	cx p0,p1;
	u3(1.2947739,-pi/2,-pi/2) p0;
	u3(2.7460921,-0.93185942,-2.5406346) p1;
	cx p0,p1;
	u3(0.37778958,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.59012457,0.70487269,1.3143234) p0;
	u3(1.8774121,-1.2750105,-0.81962319) p1;
}
gate su4_484 p0,p1 {
	u3(1.1515069,-1.7319613,0.080099657) p0;
	u3(1.4825242,-2.7944831,2.3789518) p1;
	cx p0,p1;
	u3(0.99589528,-pi/2,-pi/2) p0;
	u3(2.5885165,-1.1181258,-2.7492091) p1;
	cx p0,p1;
	u3(0.66987704,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.582914,1.269668,-0.087572549) p0;
	u3(1.4288885,-1.3875881,0.45994353) p1;
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
qreg q[5];
creg meas[5];
su4_784 q[3],q[0];
su4_744 q[0],q[2];
su4_599 q[1],q[4];
su4_472 q[4],q[1];
su4_138 q[3],q[1];
su4_155 q[4],q[0];
su4_117 q[1],q[4];
su4_484 q[2],q[1];
su4_47 q[3],q[0];
su4_188 q[4],q[0];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
