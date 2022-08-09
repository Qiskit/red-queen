OPENQASM 2.0;
include "qelib1.inc";
gate su4_93 p0,p1 {
	u3(1.2009537,-0.23099098,1.2652708) p0;
	u3(1.7468164,-0.14819108,-1.0534365) p1;
	cx p0,p1;
	u3(0.92288543,-pi/2,-pi/2) p0;
	u3(2.6332606,-1.0791902,-2.7040771) p1;
	cx p0,p1;
	u3(0.13496471,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6333442,-0.38290882,0.2468984) p0;
	u3(1.4536375,0.061500667,-1.2664718) p1;
}
gate su4_982 p0,p1 {
	u3(0.8297132,1.923616,2.4702292) p0;
	u3(1.2245697,0.59807348,0.069712924) p1;
	cx p0,p1;
	u3(1.0071032,-pi/2,-pi/2) p0;
	u3(2.7227642,-0.97044405,-2.5826506) p1;
	cx p0,p1;
	u3(0.055301706,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3011008,1.0509308,-0.98872473) p0;
	u3(1.0689983,-0.4587745,-0.94361595) p1;
}
gate su4_446 p0,p1 {
	u3(1.5459704,2.2369021,-1.3723869) p0;
	u3(1.0251458,1.4962068,-1.2855854) p1;
	cx p0,p1;
	u3(1.0685642,-pi/2,-pi/2) p0;
	u3(2.7868935,-0.84794651,-2.4504782) p1;
	cx p0,p1;
	u3(0.65562848,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3245281,2.0880835,-0.049633335) p0;
	u3(1.5630734,2.5557198,1.8586284) p1;
}
gate su4_793 p0,p1 {
	u3(1.3473014,-2.0619331,-1.4749097) p0;
	u3(0.94572299,0.074733772,-0.70896235) p1;
	cx p0,p1;
	u3(0.67507765,-pi/2,-pi/2) p0;
	u3(2.678761,-1.0302749,-2.6487857) p1;
	cx p0,p1;
	u3(0.61407971,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.633469,-2.4442926,0.27642465) p0;
	u3(2.3281847,1.882359,-1.7462214) p1;
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
gate su4_566 p0,p1 {
	u3(0.73644921,0.57451025,-0.79382203) p0;
	u3(2.6780668,-0.31120291,2.3890858) p1;
	cx p0,p1;
	u3(1.1587667,-pi/2,-pi/2) p0;
	u3(2.7958326,-0.82587572,-2.4269814) p1;
	cx p0,p1;
	u3(0.066350562,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1340503,-2.477343,0.25495256) p0;
	u3(0.39269027,-0.028253989,0.29072412) p1;
}
gate su4_339 p0,p1 {
	u3(1.0736271,1.67062,3.1136683) p0;
	u3(0.8300933,0.038897313,0.1179725) p1;
	cx p0,p1;
	u3(0.65464736,-pi/2,-pi/2) p0;
	u3(2.7450872,-0.93364172,-2.5425664) p1;
	cx p0,p1;
	u3(0.23787225,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4576709,-0.86134738,2.2454803) p0;
	u3(2.5673872,0.99919726,-2.4375979) p1;
}
gate su4_655 p0,p1 {
	u3(0.72910658,2.7064152,-1.4011177) p0;
	u3(2.366684,-0.52467508,1.3755085) p1;
	cx p0,p1;
	u3(0.61370581,-pi/2,-pi/2) p0;
	u3(2.5847491,-1.1210703,-2.7526736) p1;
	cx p0,p1;
	u3(0.43911451,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8563017,-1.5480238,-0.30165877) p0;
	u3(2.4583113,2.746613,0.84128265) p1;
}
qreg q[4];
creg meas[4];
su4_93 q[1],q[0];
su4_982 q[2],q[3];
su4_446 q[1],q[2];
su4_793 q[1],q[2];
su4_484 q[2],q[1];
su4_566 q[3],q[0];
su4_339 q[3],q[0];
su4_655 q[3],q[0];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
