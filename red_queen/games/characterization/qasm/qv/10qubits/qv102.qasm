OPENQASM 2.0;
include "qelib1.inc";
gate su4_871 p0,p1 {
	u3(0.91863991,1.1783068,-0.63876495) p0;
	u3(2.5188891,2.6737068,-2.7732027) p1;
	cx p0,p1;
	u3(0.40502771,-pi/2,-pi/2) p0;
	u3(2.8087934,-0.79080231,-2.389789) p1;
	cx p0,p1;
	u3(0.15175135,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.163998,-0.81775462,-2.6759875) p0;
	u3(1.1092987,-2.6936981,-0.035556836) p1;
}
gate su4_526 p0,p1 {
	u3(1.7235844,-2.6771839,0.83089376) p0;
	u3(1.3605319,-1.1267232,2.4261223) p1;
	cx p0,p1;
	u3(0.37295741,-pi/2,-pi/2) p0;
	u3(2.1369831,-1.295082,-2.9909786) p1;
	cx p0,p1;
	u3(0.18732477,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.93888836,-1.4073075,-2.2555571) p0;
	u3(0.71366658,2.4717374,2.4377206) p1;
}
gate su4_279 p0,p1 {
	u3(1.6178222,0.17436924,-1.1495161) p0;
	u3(1.6869642,1.7598509,-0.3786781) p1;
	cx p0,p1;
	u3(0.81354178,-pi/2,-pi/2) p0;
	u3(2.5059806,-1.1734158,-2.8158783) p1;
	cx p0,p1;
	u3(0.4066677,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2805825,0.2065787,2.3664857) p0;
	u3(0.91417641,0.2111804,-0.83242076) p1;
}
gate su4_462 p0,p1 {
	u3(0.54897402,0.91313056,-1.2563385) p0;
	u3(1.7440478,-2.6288573,-0.55197589) p1;
	cx p0,p1;
	u3(0.79768289,-pi/2,-pi/2) p0;
	u3(2.7788465,-0.86652643,-2.470321) p1;
	cx p0,p1;
	u3(0.37950781,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6931558,1.6278534,-0.092162686) p0;
	u3(2.5144551,2.1242848,-0.15825963) p1;
}
gate su4_486 p0,p1 {
	u3(1.712343,1.8171932,-1.2974407) p0;
	u3(2.1128895,2.0330182,2.4896659) p1;
	cx p0,p1;
	u3(0.43997296,-pi/2,-pi/2) p0;
	u3(2.1373269,-1.2950201,-2.9908634) p1;
	cx p0,p1;
	u3(0.097471684,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2978802,-0.15849003,-0.34678092) p0;
	u3(0.95242535,-2.6085177,-1.6904109) p1;
}
gate su4_33 p0,p1 {
	u3(1.2591187,-2.4651015,1.9406429) p0;
	u3(1.9995827,-1.5353931,1.0536493) p1;
	cx p0,p1;
	u3(0.46813706,-pi/2,-pi/2) p0;
	u3(2.1546295,-1.2918263,-2.9849925) p1;
	cx p0,p1;
	u3(0.22609077,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.90601434,-0.97298811,2.9917093) p0;
	u3(2.8475946,2.5213451,2.0838989) p1;
}
gate su4_79 p0,p1 {
	u3(0.94578866,0.80971364,-1.3360561) p0;
	u3(2.747514,-0.90768397,-2.0398879) p1;
	cx p0,p1;
	u3(1.2898477,-pi/2,-pi/2) p0;
	u3(2.7498365,-0.92511421,-2.5333308) p1;
	cx p0,p1;
	u3(0.21703915,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.45707137,-1.546562,1.5615856) p0;
	u3(1.0330909,0.64843736,-2.5443589) p1;
}
gate su4_792 p0,p1 {
	u3(2.7852825,-0.73319442,-2.3355744) p0;
	u3(1.3214878,2.5580046,0.8258953) p1;
	cx p0,p1;
	u3(0.3999407,-pi/2,-pi/2) p0;
	u3(2.5340569,-1.1565741,-2.7951643) p1;
	cx p0,p1;
	u3(0.25700809,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.79987024,-2.7383217,-1.6356697) p0;
	u3(1.2027372,-2.2831594,2.1134361) p1;
}
gate su4_393 p0,p1 {
	u3(2.4307572,0.73493426,-1.8729487) p0;
	u3(2.6068403,-2.3764793,-2.9383887) p1;
	cx p0,p1;
	u3(0.81986303,-pi/2,-pi/2) p0;
	u3(2.6147178,-1.0962717,-2.7237325) p1;
	cx p0,p1;
	u3(0.20009737,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.90673196,-2.1516094,-0.87565148) p0;
	u3(2.2958275,0.6033635,-0.80903285) p1;
}
gate su4_277 p0,p1 {
	u3(0.89824415,0.48733337,-0.24439729) p0;
	u3(0.87404859,-2.9950042,-2.1526047) p1;
	cx p0,p1;
	u3(0.86441172,-pi/2,-pi/2) p0;
	u3(2.7097453,-0.98971659,-2.6038077) p1;
	cx p0,p1;
	u3(0.48067903,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2851058,2.798943,-2.1460739) p0;
	u3(1.3465919,0.14953914,-0.0090846416) p1;
}
gate su4_47 p0,p1 {
	u3(1.6400386,-2.4295527,0.95932086) p0;
	u3(1.5711477,0.46033901,8/(11*pi)) p1;
	cx p0,p1;
	u3(0.95512361,-pi/2,-pi/2) p0;
	u3(2.7328662,-0.95442192,-2.565152) p1;
	cx p0,p1;
	u3(0.44670081,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2747501,1.4053676,2.5611879) p0;
	u3(2.1988827,0.24168285,-1.1608164) p1;
}
gate su4_998 p0,p1 {
	u3(2.6915345,3.0689526,-2.6432353) p0;
	u3(2.3647993,1.1715907,-0.50613262) p1;
	cx p0,p1;
	u3(1.1273715,-pi/2,-pi/2) p0;
	u3(2.5275989,-1.1606078,-2.8000881) p1;
	cx p0,p1;
	u3(0.17013395,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8236247,-1.1364427,-3.10569) p0;
	u3(0.45111715,-3.087182,-1.9591354) p1;
}
gate su4_141 p0,p1 {
	u3(1.4747021,-2.598414,1.3123489) p0;
	u3(2.4975509,-2.0633894,0.47754952) p1;
	cx p0,p1;
	u3(0.30521123,-pi/2,-pi/2) p0;
	u3(2.7896756,-0.84124673,-2.4433374) p1;
	cx p0,p1;
	u3(0.020337137,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0008222,0.80281207,-0.19082253) p0;
	u3(0.51083182,2.8406503,-1.3969602) p1;
}
gate su4_206 p0,p1 {
	u3(1.0826957,0.7686891,1.4181501) p0;
	u3(1.0266142,-2.9340825,-1.3973506) p1;
	cx p0,p1;
	u3(0.76000709,-pi/2,-pi/2) p0;
	u3(2.2469023,-1.2718125,-2.9510585) p1;
	cx p0,p1;
	u3(0.40153565,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5532499,1.6149449,-2.9549454) p0;
	u3(2.4300321,-3.1105697,-2.031119) p1;
}
gate su4_290 p0,p1 {
	u3(1.3077939,-2.7173247,-2.212099) p0;
	u3(1.6045391,-2.2541023,-1.9109151) p1;
	cx p0,p1;
	u3(0.50820178,-pi/2,-pi/2) p0;
	u3(2.4166087,-1.2169901,-2.871869) p1;
	cx p0,p1;
	u3(0.13285086,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1690704,0.98287592,-2.8038476) p0;
	u3(2.340843,-1.0073373,3.0255015) p1;
}
gate su4_226 p0,p1 {
	u3(1.6409556,-1.8019933,1.7191579) p0;
	u3(1.5409262,2.9211352,0.79475655) p1;
	cx p0,p1;
	u3(0.71941565,-pi/2,-pi/2) p0;
	u3(2.7754457,-0.87404273,-2.4783657) p1;
	cx p0,p1;
	u3(0.26250552,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0019654,1.0210589,-0.8246055) p0;
	u3(2.3516495,-1.7008136,2.7947306) p1;
}
gate su4_341 p0,p1 {
	u3(1.9322171,-2.6431716,1.5464114) p0;
	u3(1.2736405,1.1762641,-1.7396273) p1;
	cx p0,p1;
	u3(0.92861608,-pi/2,-pi/2) p0;
	u3(2.6622086,-1.0493578,-2.6702006) p1;
	cx p0,p1;
	u3(0.32609662,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6468561,1.6292195,2.8536392) p0;
	u3(2.1778631,-1.7227032,2.1570547) p1;
}
gate su4_837 p0,p1 {
	u3(0.22194365,1.0949839,-2.3561225) p0;
	u3(1.3690572,-1.7771264,2.3449354) p1;
	cx p0,p1;
	u3(0.90036577,-pi/2,-pi/2) p0;
	u3(2.7920642,-0.83537458,-2.4370846) p1;
	cx p0,p1;
	u3(0.085470814,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3676072,-0.30944189,-0.6498241) p0;
	u3(2.370677,-1.5431195,0.94384298) p1;
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
gate su4_909 p0,p1 {
	u3(2.8593258,-2.6732792,2.4933136) p0;
	u3(0.7505182,-3.1315724,-1.7027247) p1;
	cx p0,p1;
	u3(1.1408192,-pi/2,-pi/2) p0;
	u3(2.6661785,-1.0449266,-2.6652116) p1;
	cx p0,p1;
	u3(0.19611349,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1395112,1.6993156,-0.1779124) p0;
	u3(1.6502486,-1.1287599,-2.1863361) p1;
}
gate su4_890 p0,p1 {
	u3(2.7960474,-3.0838733,1.4553504) p0;
	u3(0.17801846,2.045682,-1.5114435) p1;
	cx p0,p1;
	u3(0.55472736,-pi/2,-pi/2) p0;
	u3(2.7189076,-0.97630768,-2.5890745) p1;
	cx p0,p1;
	u3(0.12076214,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7102686,2.3665683,-0.054481906) p0;
	u3(2.1722051,0.86215931,-2.8264715) p1;
}
gate su4_196 p0,p1 {
	u3(1.5980048,1.3910195,2.4054876) p0;
	u3(0.6076972,2.8881477,0.084963307) p1;
	cx p0,p1;
	u3(0.43373818,-pi/2,-pi/2) p0;
	u3(2.5509231,-1.1455512,-2.7818173) p1;
	cx p0,p1;
	u3(0.16282762,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5838654,1.8674336,0.77166278) p0;
	u3(2.4039077,1.8575702,-2.6427105) p1;
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
gate su4_662 p0,p1 {
	u3(1.4421567,3.1126214,1.252212) p0;
	u3(1.9571966,0.42102927,-2.705763) p1;
	cx p0,p1;
	u3(0.99146104,-pi/2,-pi/2) p0;
	u3(2.5925069,-1.1149553,-2.7454877) p1;
	cx p0,p1;
	u3(0.52511228,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1068762,-1.1683343,-2.2813734) p0;
	u3(2.0065997,-2.3547477,1.4662151) p1;
}
gate su4_419 p0,p1 {
	u3(1.0248488,-2.064107,-2.3428085) p0;
	u3(1.8403556,3.1060523,-2.5651152) p1;
	cx p0,p1;
	u3(0.61059562,-pi/2,-pi/2) p0;
	u3(2.4056114,-1.2214931,-2.8779144) p1;
	cx p0,p1;
	u3(0.29958699,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8668715,2.6543179,1.3072018) p0;
	u3(1.4937391,2.888206,1.2842295) p1;
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
gate su4_654 p0,p1 {
	u3(1.0809474,-0.68844358,2.1407009) p0;
	u3(0.94485453,-0.095038998,1.8110664) p1;
	cx p0,p1;
	u3(1.2440168,-pi/2,-pi/2) p0;
	u3(2.7392522,-0.94376477,-2.5535543) p1;
	cx p0,p1;
	u3(0.044522498,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0835665,3.0374255,-2.9069829) p0;
	u3(2.1804387,-0.60025507,0.51829354) p1;
}
gate su4_522 p0,p1 {
	u3(1.6555072,-2.0835103,-0.77597733) p0;
	u3(1.5357904,0.22896067,2.2859069) p1;
	cx p0,p1;
	u3(1.0782444,-pi/2,-pi/2) p0;
	u3(2.7157052,-0.98107605,-2.5943068) p1;
	cx p0,p1;
	u3(0.35568948,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8133565,2.8841875,1.1988108) p0;
	u3(1.7511886,-3.0600563,0.3654741) p1;
}
gate su4_995 p0,p1 {
	u3(2.8737681,1.467437,-1.5798981) p0;
	u3(2.2337847,0.7455928,-1.8543564) p1;
	cx p0,p1;
	u3(0.78136424,-pi/2,-pi/2) p0;
	u3(2.1711851,-1.2886172,-2.9792428) p1;
	cx p0,p1;
	u3(0.0049637858,3.8191672e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9256756,1.2222395,1.9958765) p0;
	u3(0.65218336,-2.4373703,-2.213153) p1;
}
gate su4_384 p0,p1 {
	u3(1.26578,1.0206415,-0.52600459) p0;
	u3(2.3765992,1.7393019,0.96487095) p1;
	cx p0,p1;
	u3(0.71056458,-pi/2,-pi/2) p0;
	u3(2.6721215,-1.0381243,-2.6575725) p1;
	cx p0,p1;
	u3(0.16119549,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2897885,0.32536105,1.4246539) p0;
	u3(1.1097206,2.8717073,1.121711) p1;
}
gate su4_350 p0,p1 {
	u3(2.7220692,-0.40757556,0.65604212) p0;
	u3(1.0348257,-0.78211744,-2.9801369) p1;
	cx p0,p1;
	u3(0.67731737,-pi/2,-pi/2) p0;
	u3(2.6844992,-1.0232683,-2.6409664) p1;
	cx p0,p1;
	u3(0.028844426,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3747622,1.6507981,2.0455695) p0;
	u3(2.033707,2.3530665,2.669247) p1;
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
gate su4_69 p0,p1 {
	u3(2.866187,1.8543085,1.1355225) p0;
	u3(1.8733313,-0.77899241,2.6313672) p1;
	cx p0,p1;
	u3(1.0222231,-pi/2,-pi/2) p0;
	u3(2.6788259,-1.0301969,-2.6486985) p1;
	cx p0,p1;
	u3(0.54179337,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5157818,-1.4078855,-1.519901) p0;
	u3(0.90256881,1.5320954,2.2354543) p1;
}
gate su4_365 p0,p1 {
	u3(2.5099734,-1.3724452,-2.9109879) p0;
	u3(0.9739367,0.25227335,0.38776839) p1;
	cx p0,p1;
	u3(0.82582685,-pi/2,-pi/2) p0;
	u3(2.6928334,-1.0127026,-2.6292161) p1;
	cx p0,p1;
	u3(0.046520167,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1305874,-0.10273008,-1.4131051) p0;
	u3(0.67936748,0.74700183,0.80808121) p1;
}
gate su4_273 p0,p1 {
	u3(1.6195957,-0.5122379,-2.6570474) p0;
	u3(0.41926018,-1.7373642,-1.5111988) p1;
	cx p0,p1;
	u3(0.72010473,-pi/2,-pi/2) p0;
	u3(2.4683361,-1.1934355,-2.8411065) p1;
	cx p0,p1;
	u3(0.089450441,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.62919929,1.2707382,3.045882) p0;
	u3(2.0088495,0.52505741,1.7214653) p1;
}
gate su4_704 p0,p1 {
	u3(1.4836417,-0.48371137,-2.2091917) p0;
	u3(0.40703735,2.7795365,-2.9852422) p1;
	cx p0,p1;
	u3(1.1713962,-pi/2,-pi/2) p0;
	u3(2.5865484,-1.1196699,-2.7510248) p1;
	cx p0,p1;
	u3(0.70481493,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3750775,2.6167744,3.0616864) p0;
	u3(2.2760229,2.1978335,1.6830126) p1;
}
gate su4_35 p0,p1 {
	u3(1.4941791,-0.6936323,-2.0368363) p0;
	u3(2.2370803,0.40450187,3.0852958) p1;
	cx p0,p1;
	u3(0.91765547,-pi/2,-pi/2) p0;
	u3(2.7067936,-0.99388741,-2.6084033) p1;
	cx p0,p1;
	u3(0.431228,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4684975,1.1005817,0.49820854) p0;
	u3(0.34024743,-0.8504876,-1.0911426) p1;
}
gate su4_123 p0,p1 {
	u3(0.62236871,0.4751646,0.64905782) p0;
	u3(2.701503,2.2163858,-3.1167764) p1;
	cx p0,p1;
	u3(1.1195144,-pi/2,-pi/2) p0;
	u3(2.5034865,-1.1748282,-2.8176352) p1;
	cx p0,p1;
	u3(0.3485359,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8939447,-2.3093951,-2.7019015) p0;
	u3(1.1505169,-1.8259785,2.0818281) p1;
}
gate su4_771 p0,p1 {
	u3(1.7887404,1.8658026,-2.4373695) p0;
	u3(2.5456898,-2.5965485,1.6285504) p1;
	cx p0,p1;
	u3(0.49690791,-pi/2,-pi/2) p0;
	u3(2.6387904,-1.0738065,-2.6979236) p1;
	cx p0,p1;
	u3(0.20622779,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.71711601,0.98201583,1.1182566) p0;
	u3(1.7541355,2.9122875,-1.9627489) p1;
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
gate su4_435 p0,p1 {
	u3(1.9037079,1.8139688,0.32668014) p0;
	u3(1.1459476,-1.2618535,0.092269731) p1;
	cx p0,p1;
	u3(0.61363159,-pi/2,-pi/2) p0;
	u3(2.2665483,-1.2668119,-2.9431639) p1;
	cx p0,p1;
	u3(0.19078091,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1196519,2.9711958,-1.9770508) p0;
	u3(2.4183099,2.362117,-0.87447701) p1;
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
gate su4_214 p0,p1 {
	u3(1.1138001,-1.3191146,-0.72727238) p0;
	u3(1.1699194,0.74502676,0.79502544) p1;
	cx p0,p1;
	u3(0.80589045,-pi/2,-pi/2) p0;
	u3(2.1952362,-1.2836732,-2.9706428) p1;
	cx p0,p1;
	u3(0.35861141,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2080121,1.6001397,-0.11894521) p0;
	u3(1.5061935,2.9968545,-0.031053365) p1;
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
gate su4_467 p0,p1 {
	u3(0.46079029,0.57229216,2.4791138) p0;
	u3(0.60060586,1.8431523,0.36062583) p1;
	cx p0,p1;
	u3(0.34664493,-pi/2,-pi/2) p0;
	u3(2.3072277,-1.2554852,-2.925913) p1;
	cx p0,p1;
	u3(0.085152967,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8185252,-0.0814723,0.45444131) p0;
	u3(2.5779781,-2.4721525,2.979868) p1;
}
gate su4_297 p0,p1 {
	u3(2.0035208,-0.27434987,-0.018606147) p0;
	u3(1.646653,3.050308,0.66164445) p1;
	cx p0,p1;
	u3(1.0341516,-pi/2,-pi/2) p0;
	u3(2.6708633,-1.0395817,-2.6592073) p1;
	cx p0,p1;
	u3(0.15839484,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4010348,2.908756,-0.38048443) p0;
	u3(1.7474984,2.984057,2.308392) p1;
}
gate su4_638 p0,p1 {
	u3(2.6677294,1.7058246,2.7846002) p0;
	u3(1.4898025,-2.3626701,1.0446801) p1;
	cx p0,p1;
	u3(1.0356705,-pi/2,-pi/2) p0;
	u3(2.8122633,-0.78071433,-2.3791218) p1;
	cx p0,p1;
	u3(0.41027824,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9964161,1.3541257,0.36839425) p0;
	u3(2.1337621,1.7514148,-3.0967193) p1;
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
qreg q[10];
creg meas[10];
su4_871 q[3],q[1];
su4_526 q[0],q[5];
su4_279 q[6],q[4];
su4_462 q[6],q[0];
su4_486 q[8],q[2];
su4_33 q[4],q[8];
su4_79 q[5],q[2];
su4_792 q[2],q[5];
su4_393 q[5],q[2];
su4_277 q[8],q[6];
su4_47 q[9],q[7];
su4_998 q[3],q[7];
su4_141 q[7],q[3];
su4_206 q[6],q[3];
su4_290 q[3],q[5];
su4_226 q[7],q[8];
su4_341 q[8],q[2];
su4_837 q[9],q[1];
su4_858 q[1],q[0];
su4_141 q[1],q[0];
su4_909 q[1],q[0];
su4_890 q[0],q[3];
su4_196 q[0],q[3];
su4_962 q[3],q[0];
su4_662 q[4],q[9];
su4_419 q[4],q[9];
su4_682 q[6],q[4];
su4_654 q[6],q[2];
su4_522 q[8],q[4];
su4_995 q[9],q[7];
su4_384 q[7],q[1];
su4_350 q[2],q[7];
su4_656 q[6],q[1];
su4_69 q[7],q[1];
su4_365 q[7],q[0];
su4_273 q[9],q[5];
su4_704 q[8],q[5];
su4_35 q[6],q[8];
su4_123 q[6],q[8];
su4_771 q[9],q[4];
su4_346 q[4],q[2];
su4_435 q[1],q[2];
su4_859 q[1],q[8];
su4_214 q[2],q[6];
su4_909 q[4],q[3];
su4_142 q[3],q[0];
su4_467 q[9],q[5];
su4_297 q[9],q[5];
su4_638 q[4],q[9];
su4_556 q[7],q[5];
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
