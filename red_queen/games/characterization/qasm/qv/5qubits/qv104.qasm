OPENQASM 2.0;
include "qelib1.inc";
gate su4_868 p0,p1 {
	u3(2.9026783,0.73098567,-2.3755776) p0;
	u3(2.3820124,-0.24957175,-2.6377405) p1;
	cx p0,p1;
	u3(0.88791123,-pi/2,-pi/2) p0;
	u3(2.3047964,-1.2562016,-2.926981) p1;
	cx p0,p1;
	u3(0.4359695,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.505427,-3.1099444,1.0217003) p0;
	u3(1.4057846,2.6874477,1.0778596) p1;
}
gate su4_723 p0,p1 {
	u3(1.2049234,-1.3195449,1.1633199) p0;
	u3(1.1592724,1.40703,2.3088921) p1;
	cx p0,p1;
	u3(0.75687805,-pi/2,-pi/2) p0;
	u3(2.7741337,-0.87689195,-2.4814179) p1;
	cx p0,p1;
	u3(0.51459833,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.91668109,0.50442016,-0.30276075) p0;
	u3(2.0660121,1.5587213,2.4609466) p1;
}
gate su4_167 p0,p1 {
	u3(1.4739017,1.0967479,1.4875497) p0;
	u3(2.7272098,0.8572111,-2.8175646) p1;
	cx p0,p1;
	u3(0.93207405,-pi/2,-pi/2) p0;
	u3(2.6666034,-1.0444471,-2.6646724) p1;
	cx p0,p1;
	u3(0.21166284,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9807222,-1.4122291,3.0894261) p0;
	u3(1.3348631,1.6854584,2.9109172) p1;
}
gate su4_674 p0,p1 {
	u3(0.9485689,-0.27705959,-0.18415283) p0;
	u3(2.2736088,-0.75482785,-1.0739733) p1;
	cx p0,p1;
	u3(1.3789027,-pi/2,-pi/2) p0;
	u3(2.8094591,-0.7888916,-2.3877676) p1;
	cx p0,p1;
	u3(0.79929952,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7996275,-0.48512211,-2.1052617) p0;
	u3(1.4121275,0.96594189,0.9254093) p1;
}
gate su4_641 p0,p1 {
	u3(0.94584493,-2.3139102,1.961424) p0;
	u3(0.80896917,1.4563111,-2.3275972) p1;
	cx p0,p1;
	u3(0.75347708,-pi/2,-pi/2) p0;
	u3(2.6407488,-1.071866,-2.6957102) p1;
	cx p0,p1;
	u3(0.50475664,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0024892,0.44243464,-0.097610269) p0;
	u3(0.73884443,1.8171216,-2.5616515) p1;
}
gate su4_44 p0,p1 {
	u3(0.35928075,-1.1869495,1.905632) p0;
	u3(1.6229137,0.76400963,-2.5626358) p1;
	cx p0,p1;
	u3(1.1877497,-pi/2,-pi/2) p0;
	u3(2.5513507,-1.1452622,-2.7814694) p1;
	cx p0,p1;
	u3(0.25749933,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1405894,1.9111786,-1.3754999) p0;
	u3(2.6151899,-3.0389164,-2.7561871) p1;
}
gate su4_516 p0,p1 {
	u3(1.4900592,-3.1282879,-1.9821639) p0;
	u3(2.1776158,-1.3525145,1.9406813) p1;
	cx p0,p1;
	u3(0.77564542,-pi/2,-pi/2) p0;
	u3(2.3865554,-1.2289245,-2.8880283) p1;
	cx p0,p1;
	u3(0.20961311,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.075946,-1.5328013,2.3688628) p0;
	u3(2.3767657,-2.9298672,-1.5590138) p1;
}
gate su4_458 p0,p1 {
	u3(1.6708255,-1.4752854,0.60599704) p0;
	u3(1.7579024,-1.4988191,1.8013265) p1;
	cx p0,p1;
	u3(0.66868616,-pi/2,-pi/2) p0;
	u3(2.6863623,-1.0209473,-2.6383811) p1;
	cx p0,p1;
	u3(0.22044763,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4068218,0.99147681,-1.2977294) p0;
	u3(1.0251583,-2.868699,2.2435446) p1;
}
gate su4_345 p0,p1 {
	u3(2.0589151,1.5182134,-0.8730205) p0;
	u3(1.0356243,-1.3572693,1.9058422) p1;
	cx p0,p1;
	u3(0.33429682,-pi/2,-pi/2) p0;
	u3(2.3424029,-1.2445077,-2.9098801) p1;
	cx p0,p1;
	u3(0.23614394,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9603244,-0.77487918,2.1225245) p0;
	u3(1.0923826,-1.1904015,0.76951802) p1;
}
gate su4_32 p0,p1 {
	u3(1.8504282,-1.8208341,2.1457545) p0;
	u3(1.8123273,-0.36754783,3.1068412) p1;
	cx p0,p1;
	u3(1.136837,-pi/2,-pi/2) p0;
	u3(2.7291131,-0.96049014,-2.5717703) p1;
	cx p0,p1;
	u3(0.7939914,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.74288209,2.986489,-2.7814934) p0;
	u3(1.5767817,1.954336,-1.9911232) p1;
}
qreg q[5];
creg meas[5];
su4_868 q[2],q[0];
su4_723 q[3],q[4];
su4_167 q[3],q[1];
su4_674 q[1],q[0];
su4_641 q[4],q[2];
su4_44 q[2],q[3];
su4_516 q[3],q[1];
su4_458 q[4],q[2];
su4_345 q[0],q[2];
su4_32 q[4],q[3];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
