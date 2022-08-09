OPENQASM 2.0;
include "qelib1.inc";
gate su4_785 p0,p1 {
	u3(0.93136201,1.8606624,-0.81404511) p0;
	u3(0.97551978,1.8825647,-2.7420768) p1;
	cx p0,p1;
	u3(0.6196243,-pi/2,-pi/2) p0;
	u3(2.5481135,-1.1474383,-2.7840915) p1;
	cx p0,p1;
	u3(0.12417203,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.888999,-0.3788947,-2.541292) p0;
	u3(1.4882563,-2.6610502,0.72751644) p1;
}
gate su4_108 p0,p1 {
	u3(1.3769338,0.21964301,-1.876934) p0;
	u3(1.7533049,-1.627934,0.41689778) p1;
	cx p0,p1;
	u3(1.0210065,-pi/2,-pi/2) p0;
	u3(2.7567721,-0.91216724,-2.5193426) p1;
	cx p0,p1;
	u3(0.26364218,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8351248,0.24142185,2.0768998) p0;
	u3(0.35070632,1.005298,-3.1181707) p1;
}
gate su4_321 p0,p1 {
	u3(1.9239784,3.0824135,-0.75065674) p0;
	u3(0.13741451,-2.3105408,1.9035471) p1;
	cx p0,p1;
	u3(0.45701406,-pi/2,-pi/2) p0;
	u3(2.8099087,-0.78759449,-2.3863956) p1;
	cx p0,p1;
	u3(0.236799,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7546991,-0.8640585,-1.4870939) p0;
	u3(1.8171238,2.6871503,-1.6674771) p1;
}
gate su4_638 p0,p1 {
	u3(2.6677294,1.7058246,2.7846002) p0;
	u3(1.4898025,-2.3626701,1.0446801) p1;
	cx p0,p1;
	u3(1.0356705,-pi/2,-pi/2) p0;
	u3(2.8122633,-0.78071433,-2.3791218) p1;
	cx p0,p1;
	u3(0.41027824,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9964161,1.3541257,0.36839425) p0;
	u3(2.1337621,1.7514148,-3.0967193) p1;
}
gate su4_881 p0,p1 {
	u3(2.2352162,-2.0962553,-2.9950527) p0;
	u3(1.1248818,-1.1059286,1.9604591) p1;
	cx p0,p1;
	u3(1.0673316,-pi/2,-pi/2) p0;
	u3(2.7881377,-0.8449685,-2.4473033) p1;
	cx p0,p1;
	u3(0.70446639,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3733479,-1.7570013,-3.0641273) p0;
	u3(1.6937198,3.104841,-2.5480443) p1;
}
gate su4_528 p0,p1 {
	u3(1.7555568,0.54260538,-2.39507) p0;
	u3(0.48912729,2.4687294,-0.7753124) p1;
	cx p0,p1;
	u3(0.71977535,-pi/2,-pi/2) p0;
	u3(2.8118966,-0.78179556,-2.3802645) p1;
	cx p0,p1;
	u3(0.20198167,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8175039,1.619796,0.96540247) p0;
	u3(2.0880235,-1.1151294,-1.8135021) p1;
}
gate su4_739 p0,p1 {
	u3(2.0319721,-1.129887,-0.84397266) p0;
	u3(2.4757567,-2.152459,-0.43091808) p1;
	cx p0,p1;
	u3(0.6150152,-pi/2,-pi/2) p0;
	u3(2.605399,-1.1043323,-2.733083) p1;
	cx p0,p1;
	u3(0.51017951,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.86678365,1.5822345,-2.4638816) p0;
	u3(2.1405912,1.2801848,2.8375192) p1;
}
gate su4_342 p0,p1 {
	u3(1.2909391,2.0910312,-2.3559261) p0;
	u3(2.3706543,1.2691587,-0.93255004) p1;
	cx p0,p1;
	u3(0.54316668,-pi/2,-pi/2) p0;
	u3(2.4900696,-1.1822092,-2.8268703) p1;
	cx p0,p1;
	u3(0.34318314,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0785944,-1.092768,-1.6141816) p0;
	u3(2.6702082,-0.073332404,-0.3462729) p1;
}
gate su4_991 p0,p1 {
	u3(1.0671427,-0.023397099,0.50652279) p0;
	u3(0.85320416,0.72809188,0.69980647) p1;
	cx p0,p1;
	u3(0.95967601,-pi/2,-pi/2) p0;
	u3(2.6125352,-1.0981897,-2.7259527) p1;
	cx p0,p1;
	u3(0.24312966,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2790675,-1.8754727,-2.5264924) p0;
	u3(2.7039954,2.1234464,0.94884251) p1;
}
gate su4_28 p0,p1 {
	u3(1.6628436,-2.8483049,1.6311774) p0;
	u3(1.8043677,-2.7251026,-0.095024466) p1;
	cx p0,p1;
	u3(0.54428422,-pi/2,-pi/2) p0;
	u3(2.7773254,-0.86991197,-2.4739432) p1;
	cx p0,p1;
	u3(0.12837083,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4565907,-2.949671,-1.7609351) p0;
	u3(1.0603681,-2.4340279,2.4758313) p1;
}
qreg q[5];
creg meas[5];
su4_785 q[1],q[3];
su4_108 q[3],q[2];
su4_321 q[2],q[3];
su4_638 q[0],q[4];
su4_881 q[4],q[1];
su4_528 q[0],q[4];
su4_739 q[3],q[1];
su4_342 q[4],q[0];
su4_991 q[0],q[1];
su4_28 q[2],q[4];
barrier q[0],q[1],q[2],q[3],q[4];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
