OPENQASM 2.0;
include "qelib1.inc";
gate su4_450 p0,p1 {
	u3(1.5994326,1.2298498,1.8756958) p0;
	u3(2.0350365,2.4572746,0.64736985) p1;
	cx p0,p1;
	u3(0.77289421,-pi/2,-pi/2) p0;
	u3(2.4790343,-1.1880177,-2.834206) p1;
	cx p0,p1;
	u3(0.28009863,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4290169,-1.5288599,-2.5851224) p0;
	u3(1.8484386,0.38909425,-1.9885581) p1;
}
gate su4_653 p0,p1 {
	u3(2.2676577,2.8036611,-0.38682478) p0;
	u3(2.994576,-2.8729652,-2.3669981) p1;
	cx p0,p1;
	u3(0.99310243,-pi/2,-pi/2) p0;
	u3(2.7975139,-0.82154163,-2.4223761) p1;
	cx p0,p1;
	u3(0.33044379,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.73272271,2.8637694,0.75587604) p0;
	u3(1.5374246,1.3307013,1.4211634) p1;
}
gate su4_556 p0,p1 {
	u3(2.8369538,1.0180753,2.9622497) p0;
	u3(1.7048844,-0.36813795,2.2052789) p1;
	cx p0,p1;
	u3(0.491173,-pi/2,-pi/2) p0;
	u3(2.4420614,-1.2059162,-2.8572396) p1;
	cx p0,p1;
	u3(0.065994852,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0091656,-0.88620089,0.62850268) p0;
	u3(2.8768226,0.14046652,2.3909011) p1;
}
qreg q[3];
creg meas[3];
su4_450 q[0],q[2];
su4_653 q[1],q[0];
su4_556 q[2],q[0];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
