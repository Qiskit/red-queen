OPENQASM 2.0;
include "qelib1.inc";
gate su4_713 p0,p1 {
	u3(2.4540204,-2.0540548,2.4045938) p0;
	u3(0.69153485,-0.37399206,2.8792372) p1;
	cx p0,p1;
	u3(1.1195544,-pi/2,-pi/2) p0;
	u3(2.6478217,-1.0647051,-2.6875624) p1;
	cx p0,p1;
	u3(0.63938264,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0595281,3.0328375,-0.43441009) p0;
	u3(1.9079545,2.4958157,0.47466003) p1;
}
gate su4_38 p0,p1 {
	u3(0.26129831,2.7815401,-2.8279432) p0;
	u3(2.0394194,2.2386228,0.50271567) p1;
	cx p0,p1;
	u3(0.75687081,-pi/2,-pi/2) p0;
	u3(2.5532295,-1.1439863,-2.7799347) p1;
	cx p0,p1;
	u3(0.30910981,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.66235404,1.2604394,1.3012463) p0;
	u3(2.5180172,-1.2295024,-0.74081842) p1;
}
gate su4_598 p0,p1 {
	u3(0.9392248,2.5405042,-1.2214311) p0;
	u3(0.95282826,0.34937997,0.49674) p1;
	cx p0,p1;
	u3(0.51539173,-pi/2,-pi/2) p0;
	u3(2.3206459,-1.2514357,-2.9199281) p1;
	cx p0,p1;
	u3(0.28801861,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6792312,-1.4764483,-3.1171257) p0;
	u3(1.0939402,-1.767263,1.9100908) p1;
}
gate su4_932 p0,p1 {
	u3(2.8191031,-2.0512396,-3.0807111) p0;
	u3(0.47508258,-2.6193459,-0.21279009) p1;
	cx p0,p1;
	u3(1.136857,-pi/2,-pi/2) p0;
	u3(2.5523353,-1.1445947,-2.7806662) p1;
	cx p0,p1;
	u3(0.21800748,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.54764096,-0.091180823,0.980716) p0;
	u3(1.6913144,0.67735175,0.73673174) p1;
}
gate su4_231 p0,p1 {
	u3(0.95898058,1.1130554,0.76095475) p0;
	u3(2.069222,2.8652239,-1.1301354) p1;
	cx p0,p1;
	u3(0.90442185,-pi/2,-pi/2) p0;
	u3(2.4637363,-1.1957032,-2.8440124) p1;
	cx p0,p1;
	u3(0.018866537,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3661268,1.2114279,0.26133044) p0;
	u3(2.0314034,-1.9138093,0.24055468) p1;
}
gate su4_269 p0,p1 {
	u3(0.86092575,0.25417726,2.0407288) p0;
	u3(2.1608403,2.3855287,-1.0728836) p1;
	cx p0,p1;
	u3(1.0091761,-pi/2,-pi/2) p0;
	u3(2.7773698,-0.86981371,-2.4738381) p1;
	cx p0,p1;
	u3(0.15865597,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8154874,1.3286147,-0.84424445) p0;
	u3(2.9576549,-0.5875162,2.1368553) p1;
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
gate su4_498 p0,p1 {
	u3(2.7102643,-2.4083264,0.2728077) p0;
	u3(1.3932682,-0.28932723,-0.26244186) p1;
	cx p0,p1;
	u3(1.1038277,-pi/2,-pi/2) p0;
	u3(2.7164434,-0.97998483,-2.5931087) p1;
	cx p0,p1;
	u3(0.28253067,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4645654,-1.9621179,1.458652) p0;
	u3(0.99901279,-0.97282339,2.8619478) p1;
}
gate su4_12 p0,p1 {
	u3(2.7705433,-2.3849434,1.6027299) p0;
	u3(0.5388362,0.27714638,0.24131732) p1;
	cx p0,p1;
	u3(0.67667501,-pi/2,-pi/2) p0;
	u3(2.506295,-1.1732368,-2.815656) p1;
	cx p0,p1;
	u3(0.30962129,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.35696304,-2.9471967,2.8856888) p0;
	u3(0.65423542,0.57620972,0.13138433) p1;
}
gate su4_669 p0,p1 {
	u3(1.6380699,-1.4208325,-3.1227491) p0;
	u3(1.2945142,-0.82583464,2.0847473) p1;
	cx p0,p1;
	u3(0.69157467,-pi/2,-pi/2) p0;
	u3(2.6367093,-1.075849,-2.700256) p1;
	cx p0,p1;
	u3(0.27121376,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.44271645,2.5291083,-3.1357031) p0;
	u3(1.0366471,0.64710749,1.985114) p1;
}
gate su4_112 p0,p1 {
	u3(1.8034564,-0.56428327,2.4298139) p0;
	u3(2.0532534,-2.5566216,-2.5456455) p1;
	cx p0,p1;
	u3(0.51314455,-pi/2,-pi/2) p0;
	u3(2.8071655,-0.79542753,-2.3946841) p1;
	cx p0,p1;
	u3(0.2737656,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7348274,2.8292038,1.3127708) p0;
	u3(0.68290137,-2.7177976,-1.867014) p1;
}
gate su4_953 p0,p1 {
	u3(2.2928087,0.05360873,-2.4005053) p0;
	u3(2.5360182,-2.4045075,-1.3059462) p1;
	cx p0,p1;
	u3(0.87993597,-pi/2,-pi/2) p0;
	u3(2.6054637,-1.1042774,-2.7330192) p1;
	cx p0,p1;
	u3(0.18221748,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1234534,1.3517732,-1.5763525) p0;
	u3(2.082348,-1.3152958,-2.9710906) p1;
}
gate su4_827 p0,p1 {
	u3(1.2753262,2.1845982,-2.338218) p0;
	u3(1.5919822,-2.9966013,0.58728325) p1;
	cx p0,p1;
	u3(0.82749527,-pi/2,-pi/2) p0;
	u3(2.3401597,-1.2452435,-2.9109366) p1;
	cx p0,p1;
	u3(0.04173857,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7980243,-1.4905421,2.9469558) p0;
	u3(0.33464997,2.9822489,0.03668509) p1;
}
gate su4_722 p0,p1 {
	u3(1.1756929,3.0535922,-0.013334719) p0;
	u3(0.71996271,-2.9573488,-1.2520409) p1;
	cx p0,p1;
	u3(0.36020882,-pi/2,-pi/2) p0;
	u3(2.474747,-1.1902135,-2.8369956) p1;
	cx p0,p1;
	u3(0.004280149,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4562682,2.0536514,-0.0019278095) p0;
	u3(1.9802406,-0.89007365,-2.9213763) p1;
}
gate su4_176 p0,p1 {
	u3(1.629303,1.4808523,-2.5827453) p0;
	u3(1.5995377,2.9816033,-0.71633259) p1;
	cx p0,p1;
	u3(0.44973044,-pi/2,-pi/2) p0;
	u3(2.4246104,-1.2136096,-2.8673687) p1;
	cx p0,p1;
	u3(0.15992503,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.95630893,-1.0816033,0.22494628) p0;
	u3(1.9595478,-0.58506154,-2.1006706) p1;
}
gate su4_568 p0,p1 {
	u3(1.0898988,-2.8732962,0.68893974) p0;
	u3(1.0815734,-0.18899552,1.624652) p1;
	cx p0,p1;
	u3(1.2382623,-pi/2,-pi/2) p0;
	u3(2.7289575,-0.96073882,-2.5720418) p1;
	cx p0,p1;
	u3(0.069723297,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.83473821,2.2850489,-3.0540366) p0;
	u3(2.9957381,-1.6306256,2.0218536) p1;
}
gate su4_250 p0,p1 {
	u3(1.9420839,-0.38383379,-0.91904061) p0;
	u3(0.64166826,-2.8229221,0.065038742) p1;
	cx p0,p1;
	u3(0.8323111,-pi/2,-pi/2) p0;
	u3(2.8143593,-0.77446376,-2.3725186) p1;
	cx p0,p1;
	u3(0.2770292,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4412405,0.63030443,-2.6587688) p0;
	u3(0.95301206,-1.2354727,0.37751739) p1;
}
qreg q[6];
creg meas[6];
su4_713 q[2],q[0];
su4_38 q[4],q[1];
su4_598 q[0],q[1];
su4_932 q[1],q[0];
su4_231 q[4],q[2];
su4_269 q[3],q[5];
su4_236 q[3],q[5];
su4_498 q[2],q[3];
su4_12 q[3],q[1];
su4_669 q[4],q[5];
su4_112 q[0],q[5];
su4_953 q[0],q[3];
su4_827 q[2],q[4];
su4_722 q[2],q[1];
su4_176 q[2],q[1];
su4_568 q[4],q[5];
su4_827 q[4],q[0];
su4_250 q[5],q[3];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
