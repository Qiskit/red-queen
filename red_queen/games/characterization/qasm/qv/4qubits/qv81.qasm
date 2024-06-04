OPENQASM 2.0;
include "qelib1.inc";
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
gate su4_253 p0,p1 {
	u3(1.8740518,-0.96969493,1.8688076) p0;
	u3(1.960358,-2.6721778,-3.033668) p1;
	cx p0,p1;
	u3(1.2354151,-pi/2,-pi/2) p0;
	u3(2.7540366,-0.917346,-2.5249331) p1;
	cx p0,p1;
	u3(0.31976704,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1452808,-1.9396068,0.22991057) p0;
	u3(1.5975165,-1.3222943,2.2972749) p1;
}
gate su4_949 p0,p1 {
	u3(1.4773802,-1.7963537,-2.1516446) p0;
	u3(1.1055552,-1.6401762,1.4063261) p1;
	cx p0,p1;
	u3(1.013094,-pi/2,-pi/2) p0;
	u3(2.7964964,-0.82417173,-2.4251704) p1;
	cx p0,p1;
	u3(0.25847296,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8633111,-1.1108618,0.24495919) p0;
	u3(1.9984971,0.74690532,-0.115035) p1;
}
gate su4_128 p0,p1 {
	u3(2.0584552,0.73192848,3.0372934) p0;
	u3(1.765912,1.6300159,-1.4663789) p1;
	cx p0,p1;
	u3(0.50865866,-pi/2,-pi/2) p0;
	u3(2.5200887,-1.1651756,-2.8056914) p1;
	cx p0,p1;
	u3(0.22263171,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7641061,2.8829726,-0.82554338) p0;
	u3(2.5375928,-0.40495707,-2.9250831) p1;
}
gate su4_650 p0,p1 {
	u3(0.80846456,0.57795227,-0.00026850969) p0;
	u3(2.3014773,-2.5954341,0.55748216) p1;
	cx p0,p1;
	u3(0.76680092,-pi/2,-pi/2) p0;
	u3(2.7430104,-0.93728842,-2.5465215) p1;
	cx p0,p1;
	u3(0.26337926,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2066996,-2.1043457,0.66392378) p0;
	u3(1.3273345,0.8333505,-1.6381058) p1;
}
gate su4_533 p0,p1 {
	u3(1.0820493,-1.1832015,1.9219566) p0;
	u3(0.86007521,1.3254288,-2.3262569) p1;
	cx p0,p1;
	u3(0.70513163,-pi/2,-pi/2) p0;
	u3(2.7001499,-1.0030238,-2.6184926) p1;
	cx p0,p1;
	u3(0.27570413,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9840935,0.71371763,1.0899201) p0;
	u3(1.5334941,-2.9929083,2.1614895) p1;
}
gate su4_626 p0,p1 {
	u3(1.7961364,-1.3471073,1.7129613) p0;
	u3(1.3197923,-0.50345329,2.449122) p1;
	cx p0,p1;
	u3(0.87047988,-pi/2,-pi/2) p0;
	u3(2.66874,-1.04202,-2.6619446) p1;
	cx p0,p1;
	u3(0.12269782,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7181583,-0.53386897,2.414577) p0;
	u3(0.87716558,-3.0446134,0.19576242) p1;
}
gate su4_912 p0,p1 {
	u3(1.4973872,-1.8855493,1.8725822) p0;
	u3(0.54897799,0.30514158,0.54750434) p1;
	cx p0,p1;
	u3(1.0789903,-pi/2,-pi/2) p0;
	u3(2.7486608,-0.92724997,-2.5356422) p1;
	cx p0,p1;
	u3(0.85612216,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.76752386,-0.42938232,-0.057569159) p0;
	u3(1.4571707,0.65432793,-0.29693423) p1;
}
qreg q[4];
creg meas[4];
su4_32 q[1],q[2];
su4_253 q[1],q[2];
su4_949 q[3],q[0];
su4_128 q[3],q[0];
su4_650 q[0],q[2];
su4_533 q[1],q[3];
su4_626 q[1],q[0];
su4_912 q[2],q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
