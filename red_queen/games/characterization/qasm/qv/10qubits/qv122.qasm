OPENQASM 2.0;
include "qelib1.inc";
gate su4_120 p0,p1 {
	u3(1.4574104,2.8429054,1.7690797) p0;
	u3(0.82244334,-2.7267658,-1.652138) p1;
	cx p0,p1;
	u3(1.0826409,-pi/2,-pi/2) p0;
	u3(2.5059247,-1.1734476,-2.8159179) p1;
	cx p0,p1;
	u3(0.014496318,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3566622,2.0397976,-3.0883993) p0;
	u3(1.732683,2.0011824,-1.6272825) p1;
}
gate su4_557 p0,p1 {
	u3(2.4287122,-3.0580278,-0.1520578) p0;
	u3(1.7488208,-0.40061962,2.2872093) p1;
	cx p0,p1;
	u3(0.94774083,-pi/2,-pi/2) p0;
	u3(2.7973197,-0.82204515,-2.422911) p1;
	cx p0,p1;
	u3(0.4181581,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.88290877,1.2134406,-1.4674264) p0;
	u3(0.90832776,-1.0883754,-2.7488257) p1;
}
gate su4_207 p0,p1 {
	u3(1.3278117,-0.74182447,0.66678128) p0;
	u3(1.9071318,1.5539128,-0.6899307) p1;
	cx p0,p1;
	u3(0.20879803,-pi/2,-pi/2) p0;
	u3(2.6161147,-1.0950344,-2.7223016) p1;
	cx p0,p1;
	u3(0.045936208,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.99676209,-2.9556186,2.6527312) p0;
	u3(1.5297532,-0.47312801,0.041066799) p1;
}
gate su4_474 p0,p1 {
	u3(2.0707777,-1.5970045,-2.0896421) p0;
	u3(1.5511061,0.65343532,-2.7080655) p1;
	cx p0,p1;
	u3(0.55989822,-pi/2,-pi/2) p0;
	u3(2.2528677,-1.2703245,-2.9486894) p1;
	cx p0,p1;
	u3(0.063666336,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5793077,-0.23075109,1.8911809) p0;
	u3(2.169632,-2.9032263,-2.5866507) p1;
}
gate su4_117 p0,p1 {
	u3(0.88606491,0.88904275,-1.3674591) p0;
	u3(2.5323753,-0.18067273,-3.067937) p1;
	cx p0,p1;
	u3(1.2947739,-pi/2,-pi/2) p0;
	u3(2.7460921,-0.93185942,-2.5406346) p1;
	cx p0,p1;
	u3(0.37778958,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.59012457,0.70487269,1.3143234) p0;
	u3(1.8774121,-1.2750105,-0.81962319) p1;
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
gate su4_452 p0,p1 {
	u3(2.403361,2.2417053,-1.0846061) p0;
	u3(1.255402,0.6839394,1.4405696) p1;
	cx p0,p1;
	u3(1.0601608,-pi/2,-pi/2) p0;
	u3(2.6876562,-1.0193216,-2.6365717) p1;
	cx p0,p1;
	u3(0.68826234,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.6053061,1.1703867,-0.33596223) p0;
	u3(2.2875262,0.50425119,-2.2863277) p1;
}
gate su4_394 p0,p1 {
	u3(2.055207,0.68560663,-1.9612141) p0;
	u3(1.0227036,2.0316194,1.6433244) p1;
	cx p0,p1;
	u3(1.0012715,-pi/2,-pi/2) p0;
	u3(2.6382687,-1.0743204,-2.6985102) p1;
	cx p0,p1;
	u3(0.1702943,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.31701567,0.58576175,2.6824284) p0;
	u3(1.6083555,-0.40062882,2.566806) p1;
}
gate su4_582 p0,p1 {
	u3(1.6573482,0.64636178,1.2864527) p0;
	u3(1.1392796,-1.60637,2.2126741) p1;
	cx p0,p1;
	u3(0.96629161,-pi/2,-pi/2) p0;
	u3(2.7824748,-0.85829124,-2.4615187) p1;
	cx p0,p1;
	u3(0.3266268,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1782941,-2.2837786,1.628804) p0;
	u3(2.4964755,1.7708227,-2.9939936) p1;
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
gate su4_969 p0,p1 {
	u3(1.2933645,2.651086,1.7489457) p0;
	u3(2.0117662,-0.36872075,-1.8438902) p1;
	cx p0,p1;
	u3(0.98633445,-pi/2,-pi/2) p0;
	u3(2.781413,-0.86072488,-2.4641187) p1;
	cx p0,p1;
	u3(0.60588482,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9951175,-0.77557207,0.24187136) p0;
	u3(1.7252773,2.4627011,-2.8542968) p1;
}
gate su4_274 p0,p1 {
	u3(2.0876676,-1.2648763,1.5701168) p0;
	u3(1.2095298,1.2355794,-1.1731659) p1;
	cx p0,p1;
	u3(0.41481352,-pi/2,-pi/2) p0;
	u3(2.7305606,-0.95816641,-2.5692347) p1;
	cx p0,p1;
	u3(0.27729739,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.82814117,0.82692842,-2.3562051) p0;
	u3(0.8906149,-0.11198144,0.94905834) p1;
}
gate su4_944 p0,p1 {
	u3(1.2625757,-1.6847545,0.25999636) p0;
	u3(1.6230564,-0.28803972,-0.26601755) p1;
	cx p0,p1;
	u3(0.65873202,-pi/2,-pi/2) p0;
	u3(2.7895297,-0.84160176,-2.4437156) p1;
	cx p0,p1;
	u3(0.1351339,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4407111,-0.59352879,0.74762961) p0;
	u3(1.4765129,-1.4626889,2.6477509) p1;
}
gate su4_266 p0,p1 {
	u3(2.0037,2.3110444,-0.35404752) p0;
	u3(3.0303245,2.9026044,-2.2009672) p1;
	cx p0,p1;
	u3(0.62531315,-pi/2,-pi/2) p0;
	u3(2.4897371,-1.1823876,-2.8270946) p1;
	cx p0,p1;
	u3(0.21284907,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.64228879,0.53655772,2.2566027) p0;
	u3(2.5332341,2.1738926,-0.0051199334) p1;
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
gate su4_976 p0,p1 {
	u3(1.9655999,-2.3136693,-2.2546057) p0;
	u3(1.851836,1.3238867,2.6191683) p1;
	cx p0,p1;
	u3(0.94403169,-pi/2,-pi/2) p0;
	u3(2.7917433,-0.83617,-2.4379313) p1;
	cx p0,p1;
	u3(0.21974522,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3900444,0.35033037,-1.6087545) p0;
	u3(2.1819329,-0.46125633,1.536492) p1;
}
gate su4_814 p0,p1 {
	u3(0.71033939,-1.615237,1.0869261) p0;
	u3(0.56122294,-2.6967725,-0.34005824) p1;
	cx p0,p1;
	u3(0.74917885,-pi/2,-pi/2) p0;
	u3(2.7599446,-0.90603871,-2.5127348) p1;
	cx p0,p1;
	u3(0.096530622,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0223686,-1.4019572,-1.0960615) p0;
	u3(2.2462708,1.3461391,-0.52667957) p1;
}
gate su4_961 p0,p1 {
	u3(1.4621056,2.8769759,2.4626387) p0;
	u3(1.4018217,2.1497737,1.9607635) p1;
	cx p0,p1;
	u3(0.65392749,-pi/2,-pi/2) p0;
	u3(2.4442391,-1.204924,-2.855944) p1;
	cx p0,p1;
	u3(0.1679394,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9956059,1.9806639,-0.21240766) p0;
	u3(2.139796,1.8977398,-0.75066128) p1;
}
gate su4_564 p0,p1 {
	u3(1.5957434,-0.60256449,3.0366492) p0;
	u3(1.0802134,3.133787,2.0724739) p1;
	cx p0,p1;
	u3(0.84626377,-pi/2,-pi/2) p0;
	u3(2.7029829,-0.99916959,-2.6142325) p1;
	cx p0,p1;
	u3(0.52994837,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0566152,-2.1323041,0.41505017) p0;
	u3(2.6323531,-1.6870814,-1.7604511) p1;
}
gate su4_822 p0,p1 {
	u3(1.6192496,-1.1580093,-2.4568924) p0;
	u3(1.6710675,-1.3894166,-2.5756071) p1;
	cx p0,p1;
	u3(0.77878763,-pi/2,-pi/2) p0;
	u3(2.6367754,-1.0757844,-2.7001822) p1;
	cx p0,p1;
	u3(0.14270433,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6891434,2.8016076,-1.2929524) p0;
	u3(1.8703123,-2.5437157,0.41054922) p1;
}
gate su4_682 p0,p1 {
	u3(2.51126,-1.7426647,2.8492211) p0;
	u3(0.43169023,-1.6588556,2.4874059) p1;
	cx p0,p1;
	u3(0.79196949,-pi/2,-pi/2) p0;
	u3(2.6399882,-1.0726218,-2.696572) p1;
	cx p0,p1;
	u3(0.080987056,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1788803,-1.3749265,2.183358) p0;
	u3(2.4796231,2.336273,3.0688343) p1;
}
gate su4_884 p0,p1 {
	u3(0.56192816,-2.0182571,-1.941974) p0;
	u3(1.6425469,-1.7891716,-1.2744117) p1;
	cx p0,p1;
	u3(0.86035757,-pi/2,-pi/2) p0;
	u3(2.7167162,-0.9795803,-2.5926647) p1;
	cx p0,p1;
	u3(0.023002144,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0391317,-0.76480965,0.41725841) p0;
	u3(2.070919,-2.7049252,0.63431805) p1;
}
gate su4_163 p0,p1 {
	u3(2.1173362,-2.1373938,2.2045162) p0;
	u3(1.5703882,0.15999468,2.591046) p1;
	cx p0,p1;
	u3(0.75553685,-pi/2,-pi/2) p0;
	u3(2.241175,-1.2732169,-2.9533108) p1;
	cx p0,p1;
	u3(0.033406629,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3123333,2.7658318,-0.45127264) p0;
	u3(1.9162932,-1.0704599,-2.9744076) p1;
}
gate su4_858 p0,p1 {
	u3(1.9430639,-2.3883673,-2.8592224) p0;
	u3(2.0360015,-3.0545917,1.1006483) p1;
	cx p0,p1;
	u3(1.093197,-pi/2,-pi/2) p0;
	u3(2.5488675,-1.1469339,-2.7834833) p1;
	cx p0,p1;
	u3(0.68176503,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0945475,0.062960481,-3.0266528) p0;
	u3(1.2360188,-2.2010802,0.382737) p1;
}
gate su4_180 p0,p1 {
	u3(1.6935242,-0.76876135,2.7182516) p0;
	u3(0.20595216,-2.9047116,2.4355238) p1;
	cx p0,p1;
	u3(0.51164654,-pi/2,-pi/2) p0;
	u3(2.2479016,-1.2715651,-2.9506633) p1;
	cx p0,p1;
	u3(0.17445926,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9367285,-0.32204168,-1.4161217) p0;
	u3(1.2732979,1.6983881,-1.9526186) p1;
}
gate su4_100 p0,p1 {
	u3(1.895609,-2.7850347,-1.7118909) p0;
	u3(2.8378032,-2.334399,1.7616539) p1;
	cx p0,p1;
	u3(0.73759985,-pi/2,-pi/2) p0;
	u3(2.7087006,-0.99120081,-2.6054424) p1;
	cx p0,p1;
	u3(0.33325444,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.9170551,-1.8579495,-0.69071104) p0;
	u3(2.686751,-0.22113846,0.89872687) p1;
}
gate su4_331 p0,p1 {
	u3(0.88986755,2.4280978,-0.6140225) p0;
	u3(2.584785,2.4015368,-1.7302688) p1;
	cx p0,p1;
	u3(0.51395361,-pi/2,-pi/2) p0;
	u3(2.1393124,-1.2946617,-2.9901966) p1;
	cx p0,p1;
	u3(0.03186051,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4133792,0.82498928,-0.99066503) p0;
	u3(1.4030338,-1.491448,-0.33860682) p1;
}
gate su4_246 p0,p1 {
	u3(0.41015511,-3.0101729,0.047563229) p0;
	u3(0.69317379,-1.6942704,2.3119556) p1;
	cx p0,p1;
	u3(0.76853011,-pi/2,-pi/2) p0;
	u3(2.702873,-0.99932024,-2.6143989) p1;
	cx p0,p1;
	u3(0.43124013,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8668569,-1.452853,2.9745871) p0;
	u3(1.0532701,-0.19190447,-1.9073142) p1;
}
gate su4_942 p0,p1 {
	u3(1.6094136,-1.0789558,-1.4903846) p0;
	u3(1.5446495,-2.6634188,0.49891618) p1;
	cx p0,p1;
	u3(0.6235262,-pi/2,-pi/2) p0;
	u3(2.7752423,-0.87448631,-2.4788407) p1;
	cx p0,p1;
	u3(0.24591255,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2931691,0.94745538,3.039342) p0;
	u3(1.6767681,0.010330967,0.83145695) p1;
}
gate su4_952 p0,p1 {
	u3(0.25632202,2.1003458,-0.67920401) p0;
	u3(0.26146799,-0.81714022,-2.2056356) p1;
	cx p0,p1;
	u3(0.92597431,-pi/2,-pi/2) p0;
	u3(2.743486,-0.93645765,-2.5456202) p1;
	cx p0,p1;
	u3(0.27296216,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.57126472,-2.4076039,-1.8381738) p0;
	u3(2.8055772,-1.3087837,-2.1126268) p1;
}
gate su4_521 p0,p1 {
	u3(1.4549987,1.7035957,0.71861189) p0;
	u3(2.1739953,1.8246057,-1.2530497) p1;
	cx p0,p1;
	u3(1.0939776,-pi/2,-pi/2) p0;
	u3(2.8056579,-0.79965198,-2.3991575) p1;
	cx p0,p1;
	u3(0.12761548,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3809202,-2.8721098,-0.060881465) p0;
	u3(0.95310174,-0.82822295,1.8532251) p1;
}
gate su4_572 p0,p1 {
	u3(0.38520377,0.93161521,-1.5403193) p0;
	u3(1.7971776,-2.4859203,-0.4162823) p1;
	cx p0,p1;
	u3(0.93055937,-pi/2,-pi/2) p0;
	u3(2.7351166,-0.95071511,-2.5611144) p1;
	cx p0,p1;
	u3(0.10648584,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3228458,0.6288671,1.871458) p0;
	u3(1.2100238,2.0385021,2.8213531) p1;
}
gate su4_546 p0,p1 {
	u3(2.4615323,0.69187185,0.57195461) p0;
	u3(2.5913337,2.2658495,0.40407478) p1;
	cx p0,p1;
	u3(0.42595172,-pi/2,-pi/2) p0;
	u3(2.2455528,-1.2721456,-2.9515911) p1;
	cx p0,p1;
	u3(0.04682486,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3808016,-1.1271942,2.9602315) p0;
	u3(1.5532037,2.7863476,0.47509869) p1;
}
gate su4_977 p0,p1 {
	u3(2.7807429,1.7022208,0.4355568) p0;
	u3(1.7837971,1.8753006,2.2360236) p1;
	cx p0,p1;
	u3(1.1989976,-pi/2,-pi/2) p0;
	u3(2.5940465,-1.1137175,-2.7440373) p1;
	cx p0,p1;
	u3(0.19287954,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9972829,0.86357842,-0.92574004) p0;
	u3(2.5896358,2.8682777,2.390099) p1;
}
gate su4_2 p0,p1 {
	u3(1.412951,0.69615942,-1.4236034) p0;
	u3(1.3183464,1.9804101,-0.56568712) p1;
	cx p0,p1;
	u3(0.1675151,-pi/2,-pi/2) p0;
	u3(1.9177685,-1.3239859,-3.0561262) p1;
	cx p0,p1;
	u3(0.11762297,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5307531,-1.8013927,0.62664025) p0;
	u3(1.8656402,1.4864793,3.0810726) p1;
}
gate su4_218 p0,p1 {
	u3(1.4411471,0.6529974,0.13388898) p0;
	u3(1.3876105,2.0167648,-1.3579084) p1;
	cx p0,p1;
	u3(0.71297668,-pi/2,-pi/2) p0;
	u3(2.7105363,-0.98858686,-2.602564) p1;
	cx p0,p1;
	u3(0.54925027,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1584166,-0.6793222,0.12244419) p0;
	u3(2.5450197,0.51795909,-0.46563866) p1;
}
gate su4_881 p0,p1 {
	u3(2.2352162,-2.0962553,-2.9950527) p0;
	u3(1.1248818,-1.1059286,1.9604591) p1;
	cx p0,p1;
	u3(1.0673316,-pi/2,-pi/2) p0;
	u3(2.7881377,-0.8449685,-2.4473033) p1;
	cx p0,p1;
	u3(0.70446639,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3733479,-1.7570013,-3.0641273) p0;
	u3(1.6937198,3.104841,-2.5480443) p1;
}
gate su4_20 p0,p1 {
	u3(1.5163127,-0.15273933,-2.9925225) p0;
	u3(1.8775972,1.378813,-0.98415604) p1;
	cx p0,p1;
	u3(0.94564117,-pi/2,-pi/2) p0;
	u3(2.7784329,-0.86745072,-2.4713097) p1;
	cx p0,p1;
	u3(0.082606141,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0449439,1.8798753,-1.2482257) p0;
	u3(0.68902839,2.2026866,0.90340812) p1;
}
gate su4_493 p0,p1 {
	u3(1.0072848,2.0021425,-2.8360725) p0;
	u3(2.0124726,1.8757759,0.66669846) p1;
	cx p0,p1;
	u3(0.4811261,-pi/2,-pi/2) p0;
	u3(2.7834826,-0.85596302,-2.4590323) p1;
	cx p0,p1;
	u3(0.34222751,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8668366,1.9299669,2.1294627) p0;
	u3(1.9493188,-1.8233134,2.7320508) p1;
}
gate su4_455 p0,p1 {
	u3(1.3519133,-1.073447,-1.9482584) p0;
	u3(1.3719048,2.9875956,1.7430186) p1;
	cx p0,p1;
	u3(0.72026382,-pi/2,-pi/2) p0;
	u3(2.2875597,-1.261133,-2.9344141) p1;
	cx p0,p1;
	u3(0.19022807,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.5470173,1.8037415,-0.55682617) p0;
	u3(1.7214635,-0.47475118,2.6085205) p1;
}
gate su4_899 p0,p1 {
	u3(2.6294633,1.7999996,0.28002703) p0;
	u3(2.6381064,-1.8812114,-0.3692209) p1;
	cx p0,p1;
	u3(0.34373645,-pi/2,-pi/2) p0;
	u3(2.7582704,-0.90928939,-2.5162387) p1;
	cx p0,p1;
	u3(0.14061285,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0570751,-0.89951688,1.2766078) p0;
	u3(2.330206,2.0587051,1.3203691) p1;
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
gate su4_670 p0,p1 {
	u3(1.4722472,-1.4175433,-0.83927688) p0;
	u3(0.98915011,-1.4467723,1.607715) p1;
	cx p0,p1;
	u3(0.51266352,-pi/2,-pi/2) p0;
	u3(2.6753401,-1.034353,-2.6533471) p1;
	cx p0,p1;
	u3(0.15735208,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.56362585,-0.36701206,-2.4613788) p0;
	u3(1.8272388,-2.7869281,3.0622275) p1;
}
gate su4_173 p0,p1 {
	u3(0.94090196,0.45030899,-2.7785505) p0;
	u3(1.0610565,2.4335663,-1.2973365) p1;
	cx p0,p1;
	u3(1.2059231,-pi/2,-pi/2) p0;
	u3(2.6692881,-1.0413931,-2.6612405) p1;
	cx p0,p1;
	u3(0.068498091,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2924755,1.4240671,-2.9187391) p0;
	u3(1.096922,1.7821257,-2.5245118) p1;
}
gate su4_836 p0,p1 {
	u3(1.68338,0.65990984,-2.904376) p0;
	u3(0.79845225,-1.5441983,2.8435467) p1;
	cx p0,p1;
	u3(0.69777443,-pi/2,-pi/2) p0;
	u3(2.2470278,-1.2717815,-2.9510089) p1;
	cx p0,p1;
	u3(0.1915828,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0178295,-0.57041245,2.0109646) p0;
	u3(0.55004469,2.5857363,0.43086882) p1;
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
qreg q[10];
creg meas[10];
su4_120 q[0],q[5];
su4_557 q[6],q[1];
su4_207 q[0],q[1];
su4_474 q[5],q[6];
su4_117 q[1],q[5];
su4_91 q[7],q[4];
su4_452 q[8],q[3];
su4_394 q[8],q[7];
su4_582 q[0],q[7];
su4_656 q[1],q[7];
su4_969 q[7],q[1];
su4_274 q[7],q[1];
su4_944 q[9],q[2];
su4_266 q[4],q[2];
su4_932 q[4],q[6];
su4_607 q[0],q[6];
su4_976 q[5],q[4];
su4_266 q[6],q[0];
su4_814 q[9],q[3];
su4_961 q[2],q[3];
su4_564 q[8],q[9];
su4_822 q[8],q[3];
su4_682 q[3],q[5];
su4_884 q[0],q[3];
su4_163 q[7],q[0];
su4_858 q[8],q[4];
su4_180 q[4],q[5];
su4_100 q[6],q[8];
su4_331 q[1],q[8];
su4_246 q[1],q[8];
su4_822 q[4],q[6];
su4_942 q[6],q[7];
su4_952 q[9],q[2];
su4_521 q[2],q[9];
su4_572 q[2],q[9];
su4_546 q[3],q[2];
su4_977 q[3],q[0];
su4_2 q[0],q[7];
su4_218 q[3],q[1];
su4_881 q[5],q[9];
su4_20 q[5],q[4];
su4_493 q[6],q[4];
su4_455 q[4],q[1];
su4_899 q[9],q[2];
su4_901 q[2],q[5];
su4_670 q[3],q[5];
su4_858 q[6],q[2];
su4_173 q[8],q[9];
su4_836 q[8],q[0];
su4_868 q[9],q[7];
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
