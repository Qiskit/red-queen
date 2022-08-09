OPENQASM 2.0;
include "qelib1.inc";
gate su4_764 p0,p1 {
	u3(1.3893209,-1.5690806,0.67896632) p0;
	u3(2.4823802,-1.3331781,-0.60380065) p1;
	cx p0,p1;
	u3(0.79334679,-pi/2,-pi/2) p0;
	u3(2.7116909,-0.98692853,-2.6007392) p1;
	cx p0,p1;
	u3(0.32977928,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6200153,-3.0990098,-2.8614599) p0;
	u3(1.675079,2.575728,0.10988795) p1;
}
gate su4_354 p0,p1 {
	u3(0.62707765,-0.87665597,-1.4236689) p0;
	u3(1.9472721,-2.2936867,2.8302099) p1;
	cx p0,p1;
	u3(0.88928919,-pi/2,-pi/2) p0;
	u3(2.6056986,-1.1040782,-2.7327875) p1;
	cx p0,p1;
	u3(0.45182442,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0137502,-0.77631785,2.2103753) p0;
	u3(1.4766767,1.3595864,2.084148) p1;
}
gate su4_958 p0,p1 {
	u3(2.0992972,0.120597,0.51355663) p0;
	u3(1.9043204,-2.0632123,-1.7846045) p1;
	cx p0,p1;
	u3(0.79011195,-pi/2,-pi/2) p0;
	u3(2.7588034,-0.90825867,-2.5151274) p1;
	cx p0,p1;
	u3(0.015208353,pi/252651348286730,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6800837,-2.5397207,2.2308781) p0;
	u3(0.98019692,-0.94675676,0.17480969) p1;
}
gate su4_637 p0,p1 {
	u3(2.5110424,2.4053555,-2.9961222) p0;
	u3(0.47501266,-2.0607062,1.7566624) p1;
	cx p0,p1;
	u3(0.89027507,-pi/2,-pi/2) p0;
	u3(2.4580838,-1.1984405,-2.8475347) p1;
	cx p0,p1;
	u3(0.60370905,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.99905173,0.40865028,2.6037863) p0;
	u3(2.1667853,-0.87060821,0.31207982) p1;
}
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
gate su4_310 p0,p1 {
	u3(1.2544174,2.3274553,-0.77503748) p0;
	u3(1.6334925,1.763363,1.9546908) p1;
	cx p0,p1;
	u3(0.76850023,-pi/2,-pi/2) p0;
	u3(2.7606655,-0.90462721,-2.5112141) p1;
	cx p0,p1;
	u3(0.12396614,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1213184,-1.074847,-0.57405938) p0;
	u3(0.9449986,0.056469366,3.0343) p1;
}
gate su4_91 p0,p1 {
	u3(2.474566,0.94198785,0.70323685) p0;
	u3(1.3883566,-1.991931,1.1012193) p1;
	cx p0,p1;
	u3(1.0098372,-pi/2,-pi/2) p0;
	u3(2.4455504,-1.204323,-2.8551604) p1;
	cx p0,p1;
	u3(0.14790002,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.158493,-2.1256783,-0.4445016) p0;
	u3(0.9850634,2.0725982,-2.1417219) p1;
}
gate su4_846 p0,p1 {
	u3(0.071823309,2.4211557,-1.4604674) p0;
	u3(1.7502673,-2.8043759,-0.066841876) p1;
	cx p0,p1;
	u3(0.67510735,-pi/2,-pi/2) p0;
	u3(2.6259846,-1.0860659,-2.711964) p1;
	cx p0,p1;
	u3(0.41452737,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.080004,1.5818734,-2.3324275) p0;
	u3(1.3257114,0.39208556,-0.80198943) p1;
}
qreg q[4];
creg meas[4];
su4_764 q[2],q[1];
su4_354 q[3],q[0];
su4_958 q[1],q[0];
su4_637 q[0],q[1];
su4_459 q[2],q[3];
su4_310 q[2],q[3];
su4_91 q[0],q[2];
su4_846 q[3],q[1];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
