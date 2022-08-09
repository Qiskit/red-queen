OPENQASM 2.0;
include "qelib1.inc";
gate su4_459 p0,p1 {
	u3(0.97188295,0.3501104,-1.014765) p0;
	u3(1.105224,2.6586786,-0.012249875) p1;
	cx p0,p1;
	u3(1.1393302,-pi/2,-pi/2) p0;
	u3(2.748293,-0.92791482,-2.5363619) p1;
	cx p0,p1;
	u3(0.21184164,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2217961,-2.7557456,-1.2779262) p0;
	u3(2.9230151,0.44331649,2.0732139) p1;
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
gate su4_888 p0,p1 {
	u3(2.7771556,-2.1819257,-2.4186116) p0;
	u3(1.4805657,-3.0145948,-2.5570053) p1;
	cx p0,p1;
	u3(0.58763632,-pi/2,-pi/2) p0;
	u3(2.4556973,-1.1995802,-2.849006) p1;
	cx p0,p1;
	u3(0.15657628,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6647877,-0.76449751,-0.46252562) p0;
	u3(1.7560612,-0.4647484,-0.22754837) p1;
}
gate su4_396 p0,p1 {
	u3(1.1873933,-1.8000285,-0.96995111) p0;
	u3(1.4598833,2.7028947,-0.38742725) p1;
	cx p0,p1;
	u3(0.94012604,-pi/2,-pi/2) p0;
	u3(2.6178419,-1.0934937,-2.7205215) p1;
	cx p0,p1;
	u3(0.61572086,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.92732942,0.79789758,1.6176388) p0;
	u3(0.91720991,-2.1140836,2.1675364) p1;
}
gate su4_607 p0,p1 {
	u3(0.95471746,-0.80436748,-0.34785876) p0;
	u3(1.8955621,-2.183706,-2.5667069) p1;
	cx p0,p1;
	u3(0.28284221,-pi/2,-pi/2) p0;
	u3(2.5519492,-1.1448567,-2.7809814) p1;
	cx p0,p1;
	u3(0.023667471,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5541179,0.95180002,-3.0267591) p0;
	u3(0.48482412,-1.4158565,-1.729245) p1;
}
gate su4_763 p0,p1 {
	u3(0.5211817,2.6860711,2.5882025) p0;
	u3(0.32364858,2.4975217,1.7123215) p1;
	cx p0,p1;
	u3(0.87580537,-pi/2,-pi/2) p0;
	u3(2.7683296,-0.88917321,-2.4945924) p1;
	cx p0,p1;
	u3(0.3925893,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6144729,3.1009863,0.50701165) p0;
	u3(1.4306776,-1.5686013,1.6156641) p1;
}
gate su4_779 p0,p1 {
	u3(1.7826347,-0.67781314,2.9546989) p0;
	u3(2.60036,2.6625617,0.029138147) p1;
	cx p0,p1;
	u3(0.37258162,-pi/2,-pi/2) p0;
	u3(2.8101507,-0.78689403,-2.3856548) p1;
	cx p0,p1;
	u3(0.25432773,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.374066,1.0737993,-0.7535391) p0;
	u3(1.3513013,-1.6638579,1.5454689) p1;
}
gate su4_40 p0,p1 {
	u3(2.5269883,-1.6687118,0.38162681) p0;
	u3(2.6891824,0.038664585,-1.7280828) p1;
	cx p0,p1;
	u3(0.6536929,-pi/2,-pi/2) p0;
	u3(2.6731733,-1.0368988,-2.6561987) p1;
	cx p0,p1;
	u3(0.48570519,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0978659,2.1606649,-1.8092276) p0;
	u3(1.2222883,2.3334889,-1.3150407) p1;
}
qreg q[4];
creg meas[4];
su4_459 q[0],q[2];
su4_642 q[0],q[2];
su4_888 q[2],q[0];
su4_396 q[0],q[2];
su4_607 q[1],q[3];
su4_763 q[1],q[3];
su4_779 q[3],q[1];
su4_40 q[1],q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
