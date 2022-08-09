OPENQASM 2.0;
include "qelib1.inc";
gate su4_475 p0,p1 {
	u3(0.68795725,0.6029074,1.1252476) p0;
	u3(2.3471892,1.6190513,-1.7078644) p1;
	cx p0,p1;
	u3(1.0253263,-pi/2,-pi/2) p0;
	u3(2.3828161,-1.23033,-2.8899617) p1;
	cx p0,p1;
	u3(0.17946672,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.738218,2.507212,-0.87438714) p0;
	u3(0.62346939,-0.74390459,-1.3534805) p1;
}
gate su4_213 p0,p1 {
	u3(2.0196622,-0.73834217,0.7624376) p0;
	u3(1.8111069,1.6371192,2.2075369) p1;
	cx p0,p1;
	u3(0.93298124,-pi/2,-pi/2) p0;
	u3(2.7345829,-0.95159882,-2.5620766) p1;
	cx p0,p1;
	u3(0.21634453,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.28281877,-0.37563604,-0.85460304) p0;
	u3(1.4839814,2.4148058,1.750871) p1;
}
gate su4_37 p0,p1 {
	u3(2.7570435,-2.8758034,1.6229159) p0;
	u3(1.1554412,2.5370369,-1.6616527) p1;
	cx p0,p1;
	u3(0.60122005,-pi/2,-pi/2) p0;
	u3(2.7819905,-0.85940381,-2.4627072) p1;
	cx p0,p1;
	u3(0.27536196,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2415199,2.8929684,-0.34590858) p0;
	u3(0.51352986,1.9792823,1.4658943) p1;
}
gate su4_236 p0,p1 {
	u3(1.6285767,2.7950253,2.4121052) p0;
	u3(1.1124328,1.4550293,2.921565) p1;
	cx p0,p1;
	u3(0.90078663,-pi/2,-pi/2) p0;
	u3(2.583136,-1.1223168,-2.7541426) p1;
	cx p0,p1;
	u3(0.52502514,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.89574407,2.293177,-2.9126258) p0;
	u3(0.98597027,0.66932465,-1.6876079) p1;
}
gate su4_312 p0,p1 {
	u3(1.5990134,-1.1337829,-2.3900062) p0;
	u3(1.705276,1.3815434,0.12791445) p1;
	cx p0,p1;
	u3(0.6839644,-pi/2,-pi/2) p0;
	u3(2.7746873,-0.87569323,-2.4801336) p1;
	cx p0,p1;
	u3(0.21803148,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7780681,-1.5233839,3.0445607) p0;
	u3(0.32090489,-2.4551768,-3.137587) p1;
}
gate su4_148 p0,p1 {
	u3(1.8110998,-0.24425529,1.7784232) p0;
	u3(2.4551936,-0.63424983,2.9948284) p1;
	cx p0,p1;
	u3(0.54713271,-pi/2,-pi/2) p0;
	u3(2.2627633,-1.267798,-2.9447058) p1;
	cx p0,p1;
	u3(0.066814737,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.08210839,-3.0256312,0.30698158) p0;
	u3(2.7149833,-2.4105192,1.5111983) p1;
}
gate su4_807 p0,p1 {
	u3(1.581797,-0.94954012,-0.62717102) p0;
	u3(2.0912262,-1.7947787,1.1271839) p1;
	cx p0,p1;
	u3(0.75148116,-pi/2,-pi/2) p0;
	u3(2.5338617,-1.1566976,-2.7953146) p1;
	cx p0,p1;
	u3(1.2007408e-06,1.578413e-10,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9125297,-1.7896328,2.429564) p0;
	u3(1.1303223,2.9472329,2.8193679) p1;
}
gate su4_527 p0,p1 {
	u3(2.5987694,1.2334861,2.7331718) p0;
	u3(1.5120384,-2.8336987,0.22360183) p1;
	cx p0,p1;
	u3(0.74313481,-pi/2,-pi/2) p0;
	u3(2.4159778,-1.2172528,-2.8722201) p1;
	cx p0,p1;
	u3(0.02419402,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.678771,2.6899,-1.2581202) p0;
	u3(2.5884643,0.56658832,-0.42040177) p1;
}
qreg q[4];
creg meas[4];
su4_475 q[0],q[1];
su4_213 q[2],q[3];
su4_37 q[0],q[2];
su4_236 q[3],q[1];
su4_312 q[0],q[3];
su4_148 q[2],q[1];
su4_807 q[0],q[2];
su4_527 q[3],q[1];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
