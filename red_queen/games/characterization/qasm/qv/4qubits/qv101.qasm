OPENQASM 2.0;
include "qelib1.inc";
gate su4_995 p0,p1 {
	u3(2.8737681,1.467437,-1.5798981) p0;
	u3(2.2337847,0.7455928,-1.8543564) p1;
	cx p0,p1;
	u3(0.78136424,-pi/2,-pi/2) p0;
	u3(2.1711851,-1.2886172,-2.9792428) p1;
	cx p0,p1;
	u3(0.0049637858,3.8191672e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9256756,1.2222395,1.9958765) p0;
	u3(0.65218336,-2.4373703,-2.213153) p1;
}
gate su4_546 p0,p1 {
	u3(2.4615323,0.69187185,0.57195461) p0;
	u3(2.5913337,2.2658495,0.40407478) p1;
	cx p0,p1;
	u3(0.42595172,-pi/2,-pi/2) p0;
	u3(2.2455528,-1.2721456,-2.9515911) p1;
	cx p0,p1;
	u3(0.04682486,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3808016,-1.1271942,2.9602315) p0;
	u3(1.5532037,2.7863476,0.47509869) p1;
}
gate su4_963 p0,p1 {
	u3(2.7883737,-0.81849018,2.3903262) p0;
	u3(1.0390649,2.8990109,-1.379126) p1;
	cx p0,p1;
	u3(0.76481339,-pi/2,-pi/2) p0;
	u3(2.7612729,-0.9034326,-2.5099274) p1;
	cx p0,p1;
	u3(0.086185684,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.42122778,0.55406918,-0.68770737) p0;
	u3(1.9125722,-1.4215933,3.0879782) p1;
}
gate su4_393 p0,p1 {
	u3(2.4307572,0.73493426,-1.8729487) p0;
	u3(2.6068403,-2.3764793,-2.9383887) p1;
	cx p0,p1;
	u3(0.81986303,-pi/2,-pi/2) p0;
	u3(2.6147178,-1.0962717,-2.7237325) p1;
	cx p0,p1;
	u3(0.20009737,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.90673196,-2.1516094,-0.87565148) p0;
	u3(2.2958275,0.6033635,-0.80903285) p1;
}
gate su4_786 p0,p1 {
	u3(2.5316583,-1.0141276,0.0030372505) p0;
	u3(0.19817479,2.1908749,-1.8032031) p1;
	cx p0,p1;
	u3(0.41293603,-pi/2,-pi/2) p0;
	u3(2.8107698,-0.78509539,-2.3837528) p1;
	cx p0,p1;
	u3(0.17197707,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.59324651,1.9163636,-2.1845074) p0;
	u3(1.483988,1.5727947,1.860823) p1;
}
gate su4_133 p0,p1 {
	u3(0.8981299,-2.0988276,2.9070401) p0;
	u3(1.1363487,-1.8374921,-0.95023463) p1;
	cx p0,p1;
	u3(0.56465127,-pi/2,-pi/2) p0;
	u3(2.4991844,-1.1772343,-2.8206355) p1;
	cx p0,p1;
	u3(0.17245918,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8701926,-1.1100837,-0.62927211) p0;
	u3(2.1325974,-1.3253184,-0.48694907) p1;
}
gate su4_663 p0,p1 {
	u3(1.4523014,1.7412625,-2.2008954) p0;
	u3(1.9649269,2.818393,-1.5974658) p1;
	cx p0,p1;
	u3(0.55459965,-pi/2,-pi/2) p0;
	u3(2.6002443,-1.1086511,-2.7381146) p1;
	cx p0,p1;
	u3(0.16718096,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7909311,2.170709,1.7618015) p0;
	u3(0.95552134,-0.9666987,-1.5275375) p1;
}
gate su4_55 p0,p1 {
	u3(2.944788,-3.1147266,-2.9579396) p0;
	u3(0.66855969,0.67353103,-1.8206603) p1;
	cx p0,p1;
	u3(1.0501887,-pi/2,-pi/2) p0;
	u3(2.7189762,-0.97620455,-2.5889614) p1;
	cx p0,p1;
	u3(0.35557165,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.6608177,-1.1101719,-1.430641) p0;
	u3(2.6775384,-2.9649169,0.32472497) p1;
}
qreg q[4];
creg meas[4];
su4_995 q[0],q[2];
su4_546 q[1],q[3];
su4_963 q[0],q[1];
su4_393 q[2],q[3];
su4_786 q[0],q[2];
su4_133 q[3],q[1];
su4_663 q[1],q[0];
su4_55 q[2],q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
