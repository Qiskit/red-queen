OPENQASM 2.0;
include "qelib1.inc";
gate su4_531 p0,p1 {
	u3(0.59799255,-0.9161506,1.3511885) p0;
	u3(0.5804208,0.91640499,2.492314) p1;
	cx p0,p1;
	u3(0.83991814,-pi/2,-pi/2) p0;
	u3(2.6691667,-1.0415321,-2.6613967) p1;
	cx p0,p1;
	u3(0.41805777,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2119176,2.6525085,-0.040952071) p0;
	u3(1.9756437,-0.96134056,-0.30648903) p1;
}
gate su4_835 p0,p1 {
	u3(1.8551584,3.0153235,0.18799482) p0;
	u3(0.80680186,-0.72139818,1.1405828) p1;
	cx p0,p1;
	u3(0.53246809,-pi/2,-pi/2) p0;
	u3(2.645035,-1.0675554,-2.6908019) p1;
	cx p0,p1;
	u3(0.13390964,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.67101079,1.8064838,-0.93803762) p0;
	u3(0.55200261,2.1084782,-0.74937952) p1;
}
gate su4_791 p0,p1 {
	u3(2.2419607,-1.3660541,-1.9683098) p0;
	u3(2.8041318,-3.1318925,0.17984531) p1;
	cx p0,p1;
	u3(0.94750237,-pi/2,-pi/2) p0;
	u3(2.6556542,-1.0564845,-2.6782463) p1;
	cx p0,p1;
	u3(0.34577512,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5850687,1.2680249,2.3036132) p0;
	u3(2.9562429,2.8923229,0.27755388) p1;
}
gate su4_232 p0,p1 {
	u3(1.9585787,1.3685081,0.24287177) p0;
	u3(2.0868215,-0.65517094,-1.8559151) p1;
	cx p0,p1;
	u3(1.381297,-pi/2,-pi/2) p0;
	u3(2.7898152,-0.84090671,-2.4429752) p1;
	cx p0,p1;
	u3(0.042097452,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6711055,0.19179227,-2.2554663) p0;
	u3(1.2616848,-2.3922008,2.276083) p1;
}
gate su4_210 p0,p1 {
	u3(1.5188169,-0.40257855,1.1543384) p0;
	u3(1.510724,1.5759043,-2.076247) p1;
	cx p0,p1;
	u3(0.64348229,-pi/2,-pi/2) p0;
	u3(2.6093781,-1.1009311,-2.7291313) p1;
	cx p0,p1;
	u3(0.051670398,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.90889138,0.75947284,1.9267565) p0;
	u3(1.9713758,2.6919918,2.3741041) p1;
}
gate su4_346 p0,p1 {
	u3(1.0660136,0.8724892,0.38730159) p0;
	u3(0.40162492,-1.6165255,-2.5713819) p1;
	cx p0,p1;
	u3(0.92645605,-pi/2,-pi/2) p0;
	u3(2.5324576,-1.1575824,-2.796393) p1;
	cx p0,p1;
	u3(0.63870432,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.57498,1.6750886,-1.8228086) p0;
	u3(1.6880396,0.76640378,-0.42979715) p1;
}
gate su4_403 p0,p1 {
	u3(1.9763437,1.6999263,-2.472036) p0;
	u3(0.952436,-0.25730606,-2.1349735) p1;
	cx p0,p1;
	u3(0.63662853,-pi/2,-pi/2) p0;
	u3(2.5827644,-1.1226027,-2.7544798) p1;
	cx p0,p1;
	u3(0.085894802,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2336266,1.3387394,-1.1658987) p0;
	u3(2.3865549,-2.2737055,-0.62335634) p1;
}
gate su4_242 p0,p1 {
	u3(1.7213411,-1.5823195,2.1516415) p0;
	u3(0.92004134,1.3083432,-1.2381984) p1;
	cx p0,p1;
	u3(0.77504472,-pi/2,-pi/2) p0;
	u3(2.5244638,-1.1625304,-2.802443) p1;
	cx p0,p1;
	u3(0.431186,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7320279,-2.0090285,-3.0335427) p0;
	u3(3.0134045,-0.011761328,1.9313187) p1;
}
gate su4_497 p0,p1 {
	u3(2.3291644,0.74880032,-2.4989908) p0;
	u3(2.704969,0.33665924,0.017876045) p1;
	cx p0,p1;
	u3(1.0268263,-pi/2,-pi/2) p0;
	u3(2.475266,-1.1899494,-2.8366597) p1;
	cx p0,p1;
	u3(0.29684145,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9117916,0.73332578,2.8908512) p0;
	u3(1.7549786,0.62108021,-1.9830209) p1;
}
gate su4_172 p0,p1 {
	u3(1.6624819,0.37356778,-1.4447835) p0;
	u3(1.8763301,-2.6746831,1.6128531) p1;
	cx p0,p1;
	u3(0.51963618,-pi/2,-pi/2) p0;
	u3(2.6953713,-1.0093894,-2.625541) p1;
	cx p0,p1;
	u3(0.030719264,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5767575,-1.7924066,-1.8397935) p0;
	u3(1.1318039,-0.29072294,-1.1406431) p1;
}
gate su4_625 p0,p1 {
	u3(1.7652796,-0.60896825,-2.0731237) p0;
	u3(1.0388797,-1.1661772,-2.7048676) p1;
	cx p0,p1;
	u3(1.1229182,-pi/2,-pi/2) p0;
	u3(2.7213598,-0.97259495,-2.5850057) p1;
	cx p0,p1;
	u3(0.42702433,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1065748,1.1996516,0.57058991) p0;
	u3(1.4389235,3.0439716,-2.2509645) p1;
}
gate su4_506 p0,p1 {
	u3(1.7162383,-0.68313959,-2.5762175) p0;
	u3(2.0946128,-1.6363845,-1.5813963) p1;
	cx p0,p1;
	u3(0.40754251,-pi/2,-pi/2) p0;
	u3(2.3498523,-1.2420271,-2.9063361) p1;
	cx p0,p1;
	u3(0.13270509,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.156192,1.2414832,-1.5839697) p0;
	u3(2.2891747,0.64158632,-0.95779301) p1;
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
gate su4_901 p0,p1 {
	u3(1.9820674,-1.8426589,2.8364898) p0;
	u3(0.27513242,-2.1405939,-1.4235806) p1;
	cx p0,p1;
	u3(1.0004703,-pi/2,-pi/2) p0;
	u3(2.6494489,-1.0630229,-2.6856529) p1;
	cx p0,p1;
	u3(0.36258103,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.616759,0.35714552,2.0090929) p0;
	u3(2.8493702,-0.90199763,-0.3180775) p1;
}
gate su4_664 p0,p1 {
	u3(2.1927789,-1.4561563,1.0275391) p0;
	u3(2.4731943,0.58304069,-2.0113327) p1;
	cx p0,p1;
	u3(0.72829692,-pi/2,-pi/2) p0;
	u3(2.6701793,-1.0403701,-2.660092) p1;
	cx p0,p1;
	u3(0.49488102,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5651449,2.983573,-0.0042555756) p0;
	u3(1.84395,-0.27832233,2.0514325) p1;
}
gate su4_106 p0,p1 {
	u3(1.9809416,-0.29243022,1.3735637) p0;
	u3(0.96093179,1.9205946,0.31937279) p1;
	cx p0,p1;
	u3(1.1534243,-pi/2,-pi/2) p0;
	u3(2.6891354,-1.0174493,-2.6344891) p1;
	cx p0,p1;
	u3(0.25530211,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6724338,-2.7170755,3.0232378) p0;
	u3(2.0839875,-1.5940871,-0.71881707) p1;
}
gate su4_511 p0,p1 {
	u3(1.4944851,-0.27895016,0.20705084) p0;
	u3(1.3938993,0.25773099,-0.49587001) p1;
	cx p0,p1;
	u3(1.0089825,-pi/2,-pi/2) p0;
	u3(2.5813173,-1.1237122,-2.7557889) p1;
	cx p0,p1;
	u3(0.58160133,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.569579,1.8768674,0.9279136) p0;
	u3(1.2773195,1.5399603,-2.7477752) p1;
}
gate su4_752 p0,p1 {
	u3(1.2389731,-0.97940552,-0.59986157) p0;
	u3(1.5830309,2.9707023,0.018202232) p1;
	cx p0,p1;
	u3(0.99799358,-pi/2,-pi/2) p0;
	u3(2.5864294,-1.1197628,-2.7511342) p1;
	cx p0,p1;
	u3(0.18868424,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6104076,1.7187196,0.61938149) p0;
	u3(1.794659,2.7784053,0.8611675) p1;
}
gate su4_427 p0,p1 {
	u3(0.60408986,1.1968721,-0.34620867) p0;
	u3(2.3302513,3.1339038,-0.57092961) p1;
	cx p0,p1;
	u3(1.0446314,-pi/2,-pi/2) p0;
	u3(2.6316179,-1.0807628,-2.7058781) p1;
	cx p0,p1;
	u3(0.51382556,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3378908,-1.9497192,-1.1444182) p0;
	u3(0.52704244,-2.7303897,-2.3039531) p1;
}
gate su4_781 p0,p1 {
	u3(0.45740349,-1.1479617,3.0398384) p0;
	u3(1.6976759,-2.6457807,-0.19137675) p1;
	cx p0,p1;
	u3(0.93533762,-pi/2,-pi/2) p0;
	u3(2.6650937,-1.0461463,-2.6665838) p1;
	cx p0,p1;
	u3(0.44984316,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.46682309,-1.4307629,0.78172764) p0;
	u3(2.0045633,0.0084475596,-1.9064675) p1;
}
gate su4_852 p0,p1 {
	u3(0.95723102,2.818365,-1.6378971) p0;
	u3(0.9049579,1.7843561,-0.40946272) p1;
	cx p0,p1;
	u3(1.1203021,-pi/2,-pi/2) p0;
	u3(2.5417659,-1.1516259,-2.7891537) p1;
	cx p0,p1;
	u3(0.35496494,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6849896,2.5943121,-0.27410132) p0;
	u3(2.4292008,-2.4070073,-0.21206508) p1;
}
gate su4_304 p0,p1 {
	u3(1.0998855,1.5509617,-2.269704) p0;
	u3(0.87321323,1.8072437,0.85587896) p1;
	cx p0,p1;
	u3(0.74982312,-pi/2,-pi/2) p0;
	u3(2.5425123,-1.1511388,-2.7885638) p1;
	cx p0,p1;
	u3(0.27223143,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5064124,-1.1739592,2.4966114) p0;
	u3(2.7347061,0.54459694,0.8880031) p1;
}
gate su4_962 p0,p1 {
	u3(2.1619931,-0.6336321,-1.2377772) p0;
	u3(0.97894771,-2.059807,-1.1864781) p1;
	cx p0,p1;
	u3(0.77671972,-pi/2,-pi/2) p0;
	u3(2.1826693,-1.2862993,-2.9751742) p1;
	cx p0,p1;
	u3(0.2144559,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7163685,-1.1678873,-1.0067473) p0;
	u3(1.6680423,-3.1186496,-2.1989128) p1;
}
gate su4_119 p0,p1 {
	u3(0.34516798,2.0268293,0.62302652) p0;
	u3(1.5359163,2.1087952,-0.17321507) p1;
	cx p0,p1;
	u3(0.76971681,-pi/2,-pi/2) p0;
	u3(2.7750743,-0.87485224,-2.4792327) p1;
	cx p0,p1;
	u3(0.34030598,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.8290621,-2.3708505,0.18063571) p0;
	u3(1.1700714,-0.56943532,1.4458285) p1;
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
gate su4_641 p0,p1 {
	u3(0.94584493,-2.3139102,1.961424) p0;
	u3(0.80896917,1.4563111,-2.3275972) p1;
	cx p0,p1;
	u3(0.75347708,-pi/2,-pi/2) p0;
	u3(2.6407488,-1.071866,-2.6957102) p1;
	cx p0,p1;
	u3(0.50475664,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0024892,0.44243464,-0.097610269) p0;
	u3(0.73884443,1.8171216,-2.5616515) p1;
}
gate su4_223 p0,p1 {
	u3(2.7570829,1.9478247,-0.68881254) p0;
	u3(1.0793224,-1.6323049,1.0735702) p1;
	cx p0,p1;
	u3(0.35001426,-pi/2,-pi/2) p0;
	u3(2.7101603,-0.98912452,-2.6031559) p1;
	cx p0,p1;
	u3(0.19636542,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0725866,-1.8306119,-2.8395402) p0;
	u3(2.4097762,2.2344381,2.6507678) p1;
}
gate su4_428 p0,p1 {
	u3(1.1448206,-2.0330047,-1.885339) p0;
	u3(2.0222909,0.66248224,2.2909604) p1;
	cx p0,p1;
	u3(0.83437658,-pi/2,-pi/2) p0;
	u3(2.3995574,-1.2239038,-2.881176) p1;
	cx p0,p1;
	u3(0.21953242,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7341193,-0.95274037,-2.6193657) p0;
	u3(1.1372005,-2.4646976,0.75368507) p1;
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
gate su4_859 p0,p1 {
	u3(0.27303555,1.7969444,-0.84850527) p0;
	u3(1.2602368,-2.1873672,2.1774111) p1;
	cx p0,p1;
	u3(0.95496527,-pi/2,-pi/2) p0;
	u3(2.7355552,-0.94998642,-2.5603212) p1;
	cx p0,p1;
	u3(0.0061705782,3.0642155e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.102688,-1.8177047,0.10568663) p0;
	u3(0.73136812,-2.9466482,1.7477539) p1;
}
gate su4_204 p0,p1 {
	u3(1.7542563,0.39963457,-1.8030416) p0;
	u3(2.1760783,2.6637993,-2.2226678) p1;
	cx p0,p1;
	u3(0.73816736,-pi/2,-pi/2) p0;
	u3(2.385603,-1.2292841,-2.8885223) p1;
	cx p0,p1;
	u3(0.14040968,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.656497,1.3447408,-2.0065174) p0;
	u3(2.0853324,-0.10471407,2.5285599) p1;
}
gate su4_631 p0,p1 {
	u3(1.7055993,1.882699,-1.469609) p0;
	u3(2.5176966,0.40339214,2.9080463) p1;
	cx p0,p1;
	u3(0.54038152,-pi/2,-pi/2) p0;
	u3(2.755399,-0.91477864,-2.5221609) p1;
	cx p0,p1;
	u3(0.13589345,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.82993968,-2.8229787,-2.1010166) p0;
	u3(2.3389452,1.7526206,1.9131532) p1;
}
gate su4_533 p0,p1 {
	u3(1.0820493,-1.1832015,1.9219566) p0;
	u3(0.86007521,1.3254288,-2.3262569) p1;
	cx p0,p1;
	u3(0.70513163,-pi/2,-pi/2) p0;
	u3(2.7001499,-1.0030238,-2.6184926) p1;
	cx p0,p1;
	u3(0.27570413,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9840935,0.71371763,1.0899201) p0;
	u3(1.5334941,-2.9929083,2.1614895) p1;
}
gate su4_356 p0,p1 {
	u3(0.58200507,2.1542656,1.8699929) p0;
	u3(0.75054716,-1.4755038,-1.1691922) p1;
	cx p0,p1;
	u3(0.50420553,-pi/2,-pi/2) p0;
	u3(2.5741699,-1.1290943,-2.7621567) p1;
	cx p0,p1;
	u3(0.053208283,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.94875181,-2.9692797,0.80138992) p0;
	u3(0.78276063,-0.20471506,-2.4533274) p1;
}
gate su4_975 p0,p1 {
	u3(0.94732303,-0.57823623,-2.5770453) p0;
	u3(1.5092062,-2.29405,-0.13459012) p1;
	cx p0,p1;
	u3(0.65222209,-pi/2,-pi/2) p0;
	u3(2.4003043,-1.223609,-2.8807761) p1;
	cx p0,p1;
	u3(0.23941473,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.24565836,-2.2839136,-2.3629051) p0;
	u3(0.38414907,0.65560552,2.2173917) p1;
}
gate su4_398 p0,p1 {
	u3(1.5426012,-1.5733664,0.71180767) p0;
	u3(2.2369602,-2.4652596,-3.13903) p1;
	cx p0,p1;
	u3(0.97571226,-pi/2,-pi/2) p0;
	u3(2.3318562,-1.2479237,-2.9148058) p1;
	cx p0,p1;
	u3(0.29724248,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8429366,1.5407839,-2.5149946) p0;
	u3(1.232379,0.82318762,2.9770644) p1;
}
gate su4_144 p0,p1 {
	u3(2.5527972,1.8363314,-2.4407894) p0;
	u3(1.1499763,-2.2473666,-3.1146243) p1;
	cx p0,p1;
	u3(0.59694888,-pi/2,-pi/2) p0;
	u3(2.5111678,-1.1704363,-2.8121829) p1;
	cx p0,p1;
	u3(0.3849367,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0068956,-0.78034685,0.91174374) p0;
	u3(1.4071569,1.3571424,1.8293297) p1;
}
gate su4_132 p0,p1 {
	u3(1.3752729,2.9999077,0.98779371) p0;
	u3(2.293711,-0.46220124,-0.64550111) p1;
	cx p0,p1;
	u3(0.84999668,-pi/2,-pi/2) p0;
	u3(2.5053577,-1.1737697,-2.8163183) p1;
	cx p0,p1;
	u3(0.41235841,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3553646,3.0622989,2.9099201) p0;
	u3(1.0352815,1.1155074,-2.3577995) p1;
}
gate su4_457 p0,p1 {
	u3(0.83393764,1.5852705,-2.6136829) p0;
	u3(1.8546747,1.6921541,-2.0043393) p1;
	cx p0,p1;
	u3(0.81540947,-pi/2,-pi/2) p0;
	u3(2.760086,-0.90576244,-2.5124371) p1;
	cx p0,p1;
	u3(0.38345368,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0044064,-0.75326634,-0.94081182) p0;
	u3(2.3205759,0.68968373,0.6094226) p1;
}
gate su4_491 p0,p1 {
	u3(2.7630789,0.45307456,-1.0321614) p0;
	u3(1.1887728,-1.2744248,2.02758) p1;
	cx p0,p1;
	u3(0.74136483,-pi/2,-pi/2) p0;
	u3(2.758249,-0.90933074,-2.5162832) p1;
	cx p0,p1;
	u3(0.26250185,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0913395,-2.9254212,0.5420938) p0;
	u3(1.8471758,-1.7914844,0.79548198) p1;
}
gate su4_994 p0,p1 {
	u3(1.4659826,-0.85353417,-2.7679786) p0;
	u3(1.7247856,-0.81551217,-0.56727967) p1;
	cx p0,p1;
	u3(0.91659872,-pi/2,-pi/2) p0;
	u3(2.6664704,-1.0445973,-2.6648412) p1;
	cx p0,p1;
	u3(0.20928459,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4924254,2.7483721,-0.36221944) p0;
	u3(1.1662841,2.7300673,-1.270857) p1;
}
gate su4_372 p0,p1 {
	u3(1.2674312,-2.9944589,2.3041764) p0;
	u3(1.45633,3.0517377,-1.4361608) p1;
	cx p0,p1;
	u3(0.98140982,-pi/2,-pi/2) p0;
	u3(2.5064225,-1.1731642,-2.8155657) p1;
	cx p0,p1;
	u3(0.6628428,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.338358,-2.2222979,-0.060067847) p0;
	u3(1.100012,-2.6254354,-1.0171205) p1;
}
gate su4_392 p0,p1 {
	u3(1.8202231,0.82623093,1.8081118) p0;
	u3(0.7393238,2.8318911,-0.073782748) p1;
	cx p0,p1;
	u3(1.0204235,-pi/2,-pi/2) p0;
	u3(2.7487089,-0.92716295,-2.535548) p1;
	cx p0,p1;
	u3(0.044220711,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9457168,-2.4897564,0.79295548) p0;
	u3(2.5503765,-0.39093269,-1.5494422) p1;
}
gate su4_235 p0,p1 {
	u3(0.85577954,-2.1047698,-2.6771694) p0;
	u3(1.0832445,-2.128207,2.8382395) p1;
	cx p0,p1;
	u3(0.99969123,-pi/2,-pi/2) p0;
	u3(2.6443715,-1.0682285,-2.6915675) p1;
	cx p0,p1;
	u3(0.061290784,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4128609,2.1736991,-2.9070062) p0;
	u3(0.72457595,-2.4034468,-2.0950268) p1;
}
gate su4_211 p0,p1 {
	u3(2.492767,-2.3664546,-1.6539806) p0;
	u3(2.5549637,0.45054874,2.0036128) p1;
	cx p0,p1;
	u3(0.20710615,-pi/2,-pi/2) p0;
	u3(2.0449048,-1.3096001,-3.0201572) p1;
	cx p0,p1;
	u3(0.093035441,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6518864,1.6646305,-3.0067354) p0;
	u3(1.9078082,-2.0302089,1.0041995) p1;
}
gate su4_142 p0,p1 {
	u3(1.6577948,-2.3279032,2.0311293) p0;
	u3(2.4520095,2.0077344,-1.261666) p1;
	cx p0,p1;
	u3(1.1699324,-pi/2,-pi/2) p0;
	u3(2.5766319,-1.1272583,-2.7599813) p1;
	cx p0,p1;
	u3(0.38516523,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.4329522,-0.6640303,1.3934481) p0;
	u3(1.5439824,-1.0304078,2.0682217) p1;
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
gate su4_868 p0,p1 {
	u3(2.9026783,0.73098567,-2.3755776) p0;
	u3(2.3820124,-0.24957175,-2.6377405) p1;
	cx p0,p1;
	u3(0.88791123,-pi/2,-pi/2) p0;
	u3(2.3047964,-1.2562016,-2.926981) p1;
	cx p0,p1;
	u3(0.4359695,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.505427,-3.1099444,1.0217003) p0;
	u3(1.4057846,2.6874477,1.0778596) p1;
}
gate su4_862 p0,p1 {
	u3(0.40748287,-1.3876679,-0.71804272) p0;
	u3(1.1710506,2.7490117,1.2517561) p1;
	cx p0,p1;
	u3(0.69502956,-pi/2,-pi/2) p0;
	u3(2.773111,-0.87909399,-2.4837779) p1;
	cx p0,p1;
	u3(0.27050459,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.44938102,2.8213069,-0.83267484) p0;
	u3(1.3545628,0.40685411,-1.5163552) p1;
}
gate su4_992 p0,p1 {
	u3(2.8586218,0.13930175,1.9532078) p0;
	u3(1.9688443,-1.0284171,1.0939708) p1;
	cx p0,p1;
	u3(0.54730914,-pi/2,-pi/2) p0;
	u3(2.5275049,-1.1606658,-2.800159) p1;
	cx p0,p1;
	u3(0.11754104,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2867917,1.054865,-1.6906128) p0;
	u3(0.44904033,-1.2705596,0.38806273) p1;
}
qreg q[10];
creg meas[10];
su4_531 q[3],q[2];
su4_835 q[5],q[4];
su4_791 q[4],q[3];
su4_232 q[6],q[1];
su4_210 q[2],q[1];
su4_346 q[5],q[6];
su4_403 q[1],q[6];
su4_242 q[8],q[0];
su4_497 q[8],q[0];
su4_172 q[0],q[3];
su4_625 q[3],q[1];
su4_506 q[8],q[2];
su4_932 q[7],q[9];
su4_901 q[9],q[7];
su4_664 q[7],q[5];
su4_106 q[5],q[6];
su4_511 q[1],q[6];
su4_752 q[7],q[2];
su4_427 q[2],q[5];
su4_781 q[9],q[4];
su4_852 q[0],q[4];
su4_304 q[4],q[3];
su4_962 q[3],q[1];
su4_119 q[4],q[2];
su4_888 q[8],q[9];
su4_641 q[7],q[9];
su4_223 q[5],q[7];
su4_428 q[2],q[7];
su4_208 q[4],q[5];
su4_859 q[7],q[2];
su4_204 q[8],q[0];
su4_631 q[0],q[6];
su4_533 q[3],q[6];
su4_356 q[3],q[6];
su4_975 q[6],q[3];
su4_398 q[8],q[9];
su4_144 q[0],q[8];
su4_132 q[8],q[5];
su4_457 q[5],q[7];
su4_491 q[9],q[1];
su4_994 q[0],q[9];
su4_372 q[4],q[1];
su4_392 q[1],q[0];
su4_235 q[0],q[6];
su4_211 q[4],q[2];
su4_142 q[2],q[7];
su4_102 q[5],q[4];
su4_868 q[9],q[8];
su4_862 q[1],q[8];
su4_992 q[3],q[9];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];
measure q[8] -> meas[8];
measure q[9] -> meas[9];
