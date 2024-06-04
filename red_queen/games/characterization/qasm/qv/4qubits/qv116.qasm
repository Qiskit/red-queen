OPENQASM 2.0;
include "qelib1.inc";
gate su4_374 p0,p1 {
	u3(2.4488777,-2.3256582,2.8277223) p0;
	u3(2.276765,2.7813617,3.0210589) p1;
	cx p0,p1;
	u3(0.98539769,-pi/2,-pi/2) p0;
	u3(2.6704059,-1.0401092,-2.6597992) p1;
	cx p0,p1;
	u3(0.17455528,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.139831,1.6417211,0.24017181) p0;
	u3(1.1135485,1.9269756,-1.5748624) p1;
}
gate su4_423 p0,p1 {
	u3(1.1075065,-0.036620112,0.95403416) p0;
	u3(0.55320773,1.9771096,-2.8872288) p1;
	cx p0,p1;
	u3(0.73108124,-pi/2,-pi/2) p0;
	u3(2.4333565,-1.2098102,-2.8623474) p1;
	cx p0,p1;
	u3(0.36102434,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.65121449,-2.0410576,-1.288441) p0;
	u3(2.0499695,3.1120488,2.7403988) p1;
}
gate su4_772 p0,p1 {
	u3(0.22046791,-2.6060516,-1.5895529) p0;
	u3(1.1969145,2.8170194,0.12134486) p1;
	cx p0,p1;
	u3(0.91252044,-pi/2,-pi/2) p0;
	u3(2.5485714,-1.1471322,-2.7837223) p1;
	cx p0,p1;
	u3(0.26268087,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7428864,2.6707416,-2.3307444) p0;
	u3(1.8110936,0.82506749,-3.112517) p1;
}
gate su4_753 p0,p1 {
	u3(2.7660477,-1.9456102,-2.3839559) p0;
	u3(1.6762058,2.5060075,2.546747) p1;
	cx p0,p1;
	u3(1.0065897,-pi/2,-pi/2) p0;
	u3(2.5519507,-1.1448558,-2.7809803) p1;
	cx p0,p1;
	u3(0.24324001,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.78621076,-1.9365435,0.19691905) p0;
	u3(1.2880343,3.0420647,2.0902449) p1;
}
gate su4_471 p0,p1 {
	u3(2.8325866,-2.7801037,2.587289) p0;
	u3(1.3014688,-2.3834356,2.8581124) p1;
	cx p0,p1;
	u3(1.118042,-pi/2,-pi/2) p0;
	u3(2.6947024,-1.0102671,-2.6265141) p1;
	cx p0,p1;
	u3(0.4480033,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1417835,-2.8165206,-2.3971944) p0;
	u3(0.81771392,2.0231347,-0.039782824) p1;
}
gate su4_709 p0,p1 {
	u3(1.0328372,-0.066956045,-0.29111308) p0;
	u3(1.4301376,1.3087256,3.1028817) p1;
	cx p0,p1;
	u3(0.81617759,-pi/2,-pi/2) p0;
	u3(2.6159049,-1.0952207,-2.722517) p1;
	cx p0,p1;
	u3(0.1163218,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.018214,-1.4497529,-1.8616893) p0;
	u3(1.1006148,-3.0170084,2.3081001) p1;
}
gate su4_671 p0,p1 {
	u3(2.1810824,-2.0579194,-1.2654751) p0;
	u3(1.6330921,1.6672379,-0.6767811) p1;
	cx p0,p1;
	u3(0.61662517,-pi/2,-pi/2) p0;
	u3(2.4269251,-1.2126148,-2.8660503) p1;
	cx p0,p1;
	u3(0.14321263,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9195692,-1.5705096,-2.9701738) p0;
	u3(1.6523918,-0.33273301,-1.710353) p1;
}
gate su4_742 p0,p1 {
	u3(0.8755397,-2.6000771,-2.5316637) p0;
	u3(2.6614296,1.5481382,-1.8307266) p1;
	cx p0,p1;
	u3(1.2332296,-pi/2,-pi/2) p0;
	u3(2.6581296,-1.0538201,-2.6752351) p1;
	cx p0,p1;
	u3(0.12129296,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.20663993,0.36848557,1.3611933) p0;
	u3(1.3583382,-2.7952163,0.70884459) p1;
}
qreg q[4];
creg meas[4];
su4_374 q[1],q[2];
su4_423 q[3],q[0];
su4_772 q[2],q[0];
su4_753 q[3],q[1];
su4_471 q[1],q[2];
su4_709 q[2],q[1];
su4_671 q[3],q[0];
su4_742 q[0],q[3];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
