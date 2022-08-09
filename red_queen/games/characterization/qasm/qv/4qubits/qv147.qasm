OPENQASM 2.0;
include "qelib1.inc";
gate su4_486 p0,p1 {
	u3(1.712343,1.8171932,-1.2974407) p0;
	u3(2.1128895,2.0330182,2.4896659) p1;
	cx p0,p1;
	u3(0.43997296,-pi/2,-pi/2) p0;
	u3(2.1373269,-1.2950201,-2.9908634) p1;
	cx p0,p1;
	u3(0.097471684,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2978802,-0.15849003,-0.34678092) p0;
	u3(0.95242535,-2.6085177,-1.6904109) p1;
}
gate su4_690 p0,p1 {
	u3(0.95867216,-1.2574941,-1.7811878) p0;
	u3(0.75567955,3.0969591,0.15713038) p1;
	cx p0,p1;
	u3(1.2243406,-pi/2,-pi/2) p0;
	u3(2.6653383,-1.0458719,-2.666275) p1;
	cx p0,p1;
	u3(0.54950743,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5294437,1.6613063,-0.0053319557) p0;
	u3(0.51943071,-2.3729068,0.92832373) p1;
}
gate su4_314 p0,p1 {
	u3(1.2312525,2.190685,-1.2358971) p0;
	u3(1.5879113,2.9777439,1.2536881) p1;
	cx p0,p1;
	u3(0.87392932,-pi/2,-pi/2) p0;
	u3(2.788252,-0.84469343,-2.4470101) p1;
	cx p0,p1;
	u3(0.59570925,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8543556,2.9304603,0.34813846) p0;
	u3(0.65199817,-0.79782153,1.1872005) p1;
}
gate su4_369 p0,p1 {
	u3(1.7895693,-1.451256,0.42250211) p0;
	u3(1.4889813,-2.3082356,-0.48122474) p1;
	cx p0,p1;
	u3(0.89905622,-pi/2,-pi/2) p0;
	u3(2.7975973,-0.82132506,-2.422146) p1;
	cx p0,p1;
	u3(0.1255822,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5539886,2.2347193,-0.538234) p0;
	u3(2.5817192,1.1904318,3.053396) p1;
}
gate su4_308 p0,p1 {
	u3(1.5510772,2.3710411,-2.3329719) p0;
	u3(1.9771323,0.70541252,-0.89229049) p1;
	cx p0,p1;
	u3(0.45194684,-pi/2,-pi/2) p0;
	u3(2.4008542,-1.2233914,-2.8804812) p1;
	cx p0,p1;
	u3(0.30223355,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6026862,0.051249691,1.8653279) p0;
	u3(2.2148,1.2330681,-1.39355) p1;
}
gate su4_593 p0,p1 {
	u3(2.4188316,-2.128681,-0.093224311) p0;
	u3(1.6739758,-0.7455,-2.0917217) p1;
	cx p0,p1;
	u3(0.99161083,-pi/2,-pi/2) p0;
	u3(2.814461,-0.77415748,-2.3721952) p1;
	cx p0,p1;
	u3(0.086531547,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2359694,-2.7016941,-0.40599853) p0;
	u3(0.53870523,1.4004599,1.3204763) p1;
}
gate su4_539 p0,p1 {
	u3(1.0935881,2.9885315,-2.2748229) p0;
	u3(1.1777889,-0.031273574,-2.437811) p1;
	cx p0,p1;
	u3(0.66493932,-pi/2,-pi/2) p0;
	u3(2.2695492,-1.2660223,-2.9419342) p1;
	cx p0,p1;
	u3(0.35332661,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6866052,-0.79971989,-0.10051886) p0;
	u3(2.432745,-2.3913539,-1.5471432) p1;
}
gate su4_50 p0,p1 {
	u3(0.4759968,-3.1198439,1.5561688) p0;
	u3(1.5601364,-2.0315475,3.0706481) p1;
	cx p0,p1;
	u3(0.72769899,-pi/2,-pi/2) p0;
	u3(2.5789634,-1.1255024,-2.7579038) p1;
	cx p0,p1;
	u3(0.17258296,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8092522,1.4836246,1.4558474) p0;
	u3(1.3210774,2.9536008,2.9111643) p1;
}
qreg q[4];
creg meas[4];
su4_486 q[0],q[1];
su4_690 q[3],q[2];
su4_314 q[0],q[2];
su4_369 q[1],q[3];
su4_308 q[2],q[1];
su4_593 q[3],q[0];
su4_539 q[1],q[0];
su4_50 q[2],q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
