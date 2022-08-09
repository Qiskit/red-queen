OPENQASM 2.0;
include "qelib1.inc";
gate su4_830 p0,p1 {
	u3(2.2598322,-0.1548386,-0.32196535) p0;
	u3(0.42490271,-1.0017192,-1.5334301) p1;
	cx p0,p1;
	u3(0.81217434,-pi/2,-pi/2) p0;
	u3(2.6890073,-1.0176121,-2.6346701) p1;
	cx p0,p1;
	u3(0.13022941,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3798293,-0.29196815,0.12217856) p0;
	u3(1.2947141,1.2347105,0.80921267) p1;
}
gate su4_247 p0,p1 {
	u3(1.6410136,1.6508557,-2.8562582) p0;
	u3(1.176565,-2.8982175,-2.0245169) p1;
	cx p0,p1;
	u3(0.68453635,-pi/2,-pi/2) p0;
	u3(2.5665988,-1.1346251,-2.7687312) p1;
	cx p0,p1;
	u3(0.14285875,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(3.0318349,-1.685852,-2.5042328) p0;
	u3(1.1523236,-1.3142857,0.28852438) p1;
}
gate su4_908 p0,p1 {
	u3(2.2037935,2.0711971,-0.025729386) p0;
	u3(1.2895415,1.7752596,1.3718719) p1;
	cx p0,p1;
	u3(0.66165483,-pi/2,-pi/2) p0;
	u3(2.2061724,-1.2813089,-2.9666292) p1;
	cx p0,p1;
	u3(0.19497015,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4538606,-1.4958242,2.6457172) p0;
	u3(1.538175,-0.63334542,0.11506023) p1;
}
qreg q[3];
creg meas[3];
su4_830 q[0],q[1];
su4_247 q[0],q[1];
su4_908 q[0],q[2];
barrier q[0],q[1],q[2];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
