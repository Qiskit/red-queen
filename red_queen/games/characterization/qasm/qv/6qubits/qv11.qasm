OPENQASM 2.0;
include "qelib1.inc";
gate su4_256 p0,p1 {
	u3(1.8759885,1.429431,-2.5269854) p0;
	u3(1.668675,1.1568589,-1.4121545) p1;
	cx p0,p1;
	u3(0.43951878,-pi/2,-pi/2) p0;
	u3(2.1469873,-1.2932567,-2.9876025) p1;
	cx p0,p1;
	u3(0.31826113,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4557967,-1.7423644,1.5193967) p0;
	u3(2.4209665,-1.6612338,-0.27996077) p1;
}
gate su4_416 p0,p1 {
	u3(1.7425349,-0.71672026,2.092846) p0;
	u3(0.99303327,-0.12698104,-2.2540614) p1;
	cx p0,p1;
	u3(0.63293432,-pi/2,-pi/2) p0;
	u3(2.6197145,-1.0918097,-2.7185779) p1;
	cx p0,p1;
	u3(0.25801588,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0054889,1.1155176,0.67328609) p0;
	u3(0.98396147,1.3501403,-2.7079435) p1;
}
gate su4_619 p0,p1 {
	u3(1.6955304,-0.27680419,-2.1418258) p0;
	u3(0.86118386,1.4955102,-0.70537246) p1;
	cx p0,p1;
	u3(0.87898681,-pi/2,-pi/2) p0;
	u3(2.5199695,-1.1652471,-2.8057794) p1;
	cx p0,p1;
	u3(0.12559168,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2033984,2.370104,-1.741388) p0;
	u3(0.48004018,-1.1560509,-3.1323575) p1;
}
gate su4_145 p0,p1 {
	u3(3.0609526,1.2622244,1.1422044) p0;
	u3(2.4709487,-2.881467,2.4712658) p1;
	cx p0,p1;
	u3(0.68702831,-pi/2,-pi/2) p0;
	u3(2.6968849,-1.0073913,-2.6233268) p1;
	cx p0,p1;
	u3(0.16407731,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8210645,1.522001,0.91209128) p0;
	u3(0.8624559,2.1892617,1.0774049) p1;
}
gate su4_687 p0,p1 {
	u3(0.33382209,-0.40522766,-1.9466334) p0;
	u3(2.3607189,-1.8716955,-1.7130953) p1;
	cx p0,p1;
	u3(0.55403756,-pi/2,-pi/2) p0;
	u3(2.782328,-0.85862899,-2.4618795) p1;
	cx p0,p1;
	u3(0.4129934,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5089425,-2.7935739,0.75010876) p0;
	u3(2.205893,-1.6257543,-2.5398207) p1;
}
gate su4_656 p0,p1 {
	u3(1.5867519,0.40983888,-1.3361423) p0;
	u3(0.80249583,0.15668462,0.77986292) p1;
	cx p0,p1;
	u3(0.63015264,-pi/2,-pi/2) p0;
	u3(2.5887202,-1.1179653,-2.7490205) p1;
	cx p0,p1;
	u3(0.035868723,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.9774442,2.1355285,1.0530638) p0;
	u3(1.2189947,0.64895005,1.6854682) p1;
}
gate su4_158 p0,p1 {
	u3(2.2559871,-1.6471768,-0.62767627) p0;
	u3(1.1065873,-1.2317565,1.957969) p1;
	cx p0,p1;
	u3(0.66759407,-pi/2,-pi/2) p0;
	u3(2.7011228,-1.0017071,-2.6170366) p1;
	cx p0,p1;
	u3(0.33463418,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.9088424,-3.0739541,-1.4198882) p0;
	u3(0.80336175,-1.416786,-0.48501538) p1;
}
gate su4_640 p0,p1 {
	u3(2.1784903,-2.5261548,-0.83250185) p0;
	u3(1.584911,-2.5433254,2.8876941) p1;
	cx p0,p1;
	u3(0.75082564,-pi/2,-pi/2) p0;
	u3(2.4141767,-1.2179999,-2.8732196) p1;
	cx p0,p1;
	u3(0.18039018,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9355616,1.6539214,1.1669359) p0;
	u3(2.5415418,-2.5531251,2.2959349) p1;
}
gate su4_243 p0,p1 {
	u3(1.1352227,-1.7385833,0.53995855) p0;
	u3(2.8405262,-1.346837,-2.0253371) p1;
	cx p0,p1;
	u3(0.73033665,-pi/2,-pi/2) p0;
	u3(2.6368043,-1.0757562,-2.7001499) p1;
	cx p0,p1;
	u3(0.21971214,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9757779,-0.33756975,-0.046588219) p0;
	u3(1.6355888,2.2582323,-1.1357623) p1;
}
gate su4_541 p0,p1 {
	u3(2.7514747,0.32334392,-2.0436208) p0;
	u3(2.0063298,-0.61557022,1.1664897) p1;
	cx p0,p1;
	u3(1.0339345,-pi/2,-pi/2) p0;
	u3(2.7859933,-0.85008307,-2.452757) p1;
	cx p0,p1;
	u3(0.25292092,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4284732,-0.35637425,-0.58609659) p0;
	u3(0.5956813,1.2134343,-1.3356849) p1;
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
gate su4_78 p0,p1 {
	u3(2.0178776,3.0615781,-1.0874928) p0;
	u3(0.93333866,-1.3986209,-0.96438591) p1;
	cx p0,p1;
	u3(1.1307359,-pi/2,-pi/2) p0;
	u3(2.7020586,-1.0004338,-2.6156292) p1;
	cx p0,p1;
	u3(0.66466341,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4055579,-2.9875424,-2.2272044) p0;
	u3(2.1639819,-2.5386643,1.3659444) p1;
}
gate su4_208 p0,p1 {
	u3(1.923071,3.1158716,-2.8478523) p0;
	u3(0.89368105,-2.2107769,0.97947262) p1;
	cx p0,p1;
	u3(0.70180866,-pi/2,-pi/2) p0;
	u3(2.6342463,-1.0782407,-2.7029905) p1;
	cx p0,p1;
	u3(0.31085261,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.376006,-1.7368459,-1.6839308) p0;
	u3(1.9206429,-2.1875086,-2.4456901) p1;
}
gate su4_102 p0,p1 {
	u3(2.1670948,2.5540834,-1.5465839) p0;
	u3(2.5827777,0.54136062,-0.74571541) p1;
	cx p0,p1;
	u3(0.65987421,-pi/2,-pi/2) p0;
	u3(2.6934587,-1.0118905,-2.6283149) p1;
	cx p0,p1;
	u3(0.38765645,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1087809,0.014883705,1.2745811) p0;
	u3(0.45726481,1.5141306,1.1331691) p1;
}
gate su4_775 p0,p1 {
	u3(0.96379706,1.278316,1.2391111) p0;
	u3(2.5892567,1.6943843,-1.7447478) p1;
	cx p0,p1;
	u3(1.009904,-pi/2,-pi/2) p0;
	u3(2.5801006,-1.1246397,-2.7568842) p1;
	cx p0,p1;
	u3(0.10424351,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6457506,0.43917991,-2.9220102) p0;
	u3(1.3072701,-2.7547447,0.0054862863) p1;
}
gate su4_136 p0,p1 {
	u3(1.7716322,2.2916649,2.6454835) p0;
	u3(1.8053982,1.7056937,2.8272898) p1;
	cx p0,p1;
	u3(1.0699332,-pi/2,-pi/2) p0;
	u3(2.7663471,-0.89325138,-2.4989738) p1;
	cx p0,p1;
	u3(0.37201472,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.52843261,-2.7525558,2.8974411) p0;
	u3(2.1440225,0.74288568,2.2060318) p1;
}
gate su4_388 p0,p1 {
	u3(2.019634,2.4474562,1.4309025) p0;
	u3(2.0043801,-1.8242268,1.7837662) p1;
	cx p0,p1;
	u3(0.86513687,-pi/2,-pi/2) p0;
	u3(2.8038575,-0.80462395,-2.4044255) p1;
	cx p0,p1;
	u3(0.047349388,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4136798,-2.3165511,0.2157014) p0;
	u3(1.23459,-1.415171,-2.0540862) p1;
}
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
qreg q[6];
creg meas[6];
su4_256 q[0],q[2];
su4_416 q[0],q[2];
su4_619 q[1],q[4];
su4_145 q[5],q[3];
su4_687 q[3],q[4];
su4_656 q[4],q[2];
su4_158 q[2],q[4];
su4_640 q[5],q[1];
su4_243 q[0],q[1];
su4_541 q[1],q[0];
su4_807 q[0],q[4];
su4_78 q[3],q[5];
su4_208 q[5],q[3];
su4_102 q[1],q[5];
su4_775 q[1],q[4];
su4_136 q[2],q[3];
su4_388 q[0],q[2];
su4_764 q[5],q[3];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
