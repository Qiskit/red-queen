OPENQASM 2.0;
include "qelib1.inc";
gate su4_789 p0,p1 {
	u3(1.2871277,2.0864801,-2.5472622) p0;
	u3(0.90928503,-0.48949139,0.17035273) p1;
	cx p0,p1;
	u3(0.61409388,-pi/2,-pi/2) p0;
	u3(2.3606251,-1.2383367,-2.9011123) p1;
	cx p0,p1;
	u3(0.065845357,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6726529,-0.066534839,0.74692471) p0;
	u3(2.0458221,2.5829478,1.5587145) p1;
}
gate su4_826 p0,p1 {
	u3(1.3850471,-0.50697627,2.1636782) p0;
	u3(1.7022863,0.73657061,1.7616077) p1;
	cx p0,p1;
	u3(0.7630569,-pi/2,-pi/2) p0;
	u3(2.6343812,-1.0781104,-2.7028414) p1;
	cx p0,p1;
	u3(0.03238597,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8909013,1.0258122,-2.203361) p0;
	u3(0.85942704,-0.9588375,-3.0517844) p1;
}
gate su4_632 p0,p1 {
	u3(1.7442476,0.21526529,-2.1668018) p0;
	u3(1.0401069,1.7137787,2.6187137) p1;
	cx p0,p1;
	u3(0.71744097,-pi/2,-pi/2) p0;
	u3(2.4245945,-1.2136164,-2.8673777) p1;
	cx p0,p1;
	u3(0.57851368,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3424495,1.9643964,-1.1577789) p0;
	u3(2.3928165,-2.5310719,1.6038655) p1;
}
gate su4_588 p0,p1 {
	u3(1.6294632,0.16213817,1.8201035) p0;
	u3(2.9172381,-0.1566296,1.402701) p1;
	cx p0,p1;
	u3(0.77470987,-pi/2,-pi/2) p0;
	u3(2.7319684,-0.95588645,-2.5667483) p1;
	cx p0,p1;
	u3(0.091479728,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5599992,1.4432249,0.75511257) p0;
	u3(1.5382523,3.0760608,-2.5456232) p1;
}
gate su4_804 p0,p1 {
	u3(1.7791825,1.8649169,2.9396546) p0;
	u3(2.1605393,-0.68878677,1.6722928) p1;
	cx p0,p1;
	u3(0.55921636,-pi/2,-pi/2) p0;
	u3(2.5859334,-1.1201497,-2.7515895) p1;
	cx p0,p1;
	u3(0.24057597,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4786731,-0.40773118,2.3608624) p0;
	u3(2.5086775,-3.1226101,2.8054549) p1;
}
gate su4_66 p0,p1 {
	u3(1.1224612,-0.54235876,-1.9824847) p0;
	u3(0.6633938,-1.4903491,-2.698193) p1;
	cx p0,p1;
	u3(1.0877526,-pi/2,-pi/2) p0;
	u3(2.646191,-1.0663776,-2.6894627) p1;
	cx p0,p1;
	u3(0.40339289,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9109043,2.3706386,1.5174375) p0;
	u3(1.1219845,0.63113826,-1.500334) p1;
}
gate su4_972 p0,p1 {
	u3(0.7221938,0.41517799,2.53472) p0;
	u3(1.6054217,-0.68550768,2.1057493) p1;
	cx p0,p1;
	u3(0.30422481,-pi/2,-pi/2) p0;
	u3(2.5146443,-1.168407,-2.8096739) p1;
	cx p0,p1;
	u3(0.055317439,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.16515367,2.04792,-1.4285473) p0;
	u3(1.5340006,-0.87293337,-2.0498131) p1;
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
gate su4_187 p0,p1 {
	u3(1.7879942,1.0190225,1.0379385) p0;
	u3(1.0282583,2.6718147,-2.1458414) p1;
	cx p0,p1;
	u3(0.74108063,-pi/2,-pi/2) p0;
	u3(2.3404677,-1.2451428,-2.9107918) p1;
	cx p0,p1;
	u3(0.40121553,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1522897,2.2121811,-1.4309702) p0;
	u3(1.2118173,0.94790055,2.6465437) p1;
}
gate su4_746 p0,p1 {
	u3(1.2779314,0.52879366,0.18824444) p0;
	u3(1.8845369,2.2579867,1.5506708) p1;
	cx p0,p1;
	u3(0.38094345,-pi/2,-pi/2) p0;
	u3(2.4129881,-1.2184906,-2.8738769) p1;
	cx p0,p1;
	u3(0.14063057,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6246087,3.0069054,2.5381557) p0;
	u3(2.4861699,-2.9103418,2.6811952) p1;
}
gate su4_378 p0,p1 {
	u3(0.6483101,-1.0261869,0.32380917) p0;
	u3(0.36516176,0.43266376,0.12432434) p1;
	cx p0,p1;
	u3(0.67834443,-pi/2,-pi/2) p0;
	u3(2.1935626,-1.2840284,-2.9712512) p1;
	cx p0,p1;
	u3(0.16274531,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(3.0186865,-1.2568651,-2.4565592) p0;
	u3(1.5316575,0.17006682,-0.71272071) p1;
}
gate su4_342 p0,p1 {
	u3(1.2909391,2.0910312,-2.3559261) p0;
	u3(2.3706543,1.2691587,-0.93255004) p1;
	cx p0,p1;
	u3(0.54316668,-pi/2,-pi/2) p0;
	u3(2.4900696,-1.1822092,-2.8268703) p1;
	cx p0,p1;
	u3(0.34318314,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0785944,-1.092768,-1.6141816) p0;
	u3(2.6702082,-0.073332404,-0.3462729) p1;
}
gate su4_904 p0,p1 {
	u3(0.93812927,-0.23336958,0.0096719919) p0;
	u3(0.75551323,-1.1831928,2.7146399) p1;
	cx p0,p1;
	u3(1.0498123,-pi/2,-pi/2) p0;
	u3(2.7153683,-0.9815725,-2.594852) p1;
	cx p0,p1;
	u3(0.10964201,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4253518,-0.40001089,2.4910491) p0;
	u3(2.0220577,-1.4740737,0.51789257) p1;
}
gate su4_934 p0,p1 {
	u3(2.3189103,1.0340994,-0.30720732) p0;
	u3(2.4604221,-0.12697634,1.3181721) p1;
	cx p0,p1;
	u3(0.75400252,-pi/2,-pi/2) p0;
	u3(2.7870147,-0.84765772,-2.4501703) p1;
	cx p0,p1;
	u3(0.23969291,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8531348,3.0904986,-3.003189) p0;
	u3(2.7862517,0.77944998,-1.3174206) p1;
}
gate su4_161 p0,p1 {
	u3(1.1905157,-1.387992,1.010486) p0;
	u3(0.70627377,-0.96584322,-2.7821239) p1;
	cx p0,p1;
	u3(0.76564864,-pi/2,-pi/2) p0;
	u3(2.4665529,-1.1943189,-2.8422373) p1;
	cx p0,p1;
	u3(0.62098085,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2820352,2.7551639,2.7986966) p0;
	u3(1.0771738,-0.38801216,-1.7021514) p1;
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
gate su4_426 p0,p1 {
	u3(1.1404245,-2.7021947,-1.5891579) p0;
	u3(0.26123149,0.576501,-1.3708995) p1;
	cx p0,p1;
	u3(1.0816131,-pi/2,-pi/2) p0;
	u3(2.7823265,-0.85863253,-2.4618832) p1;
	cx p0,p1;
	u3(0.30764343,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5493376,-1.4542346,-0.98673756) p0;
	u3(2.8863749,2.9404128,2.8062198) p1;
}
gate su4_921 p0,p1 {
	u3(2.0534257,1.2631855,0.14215947) p0;
	u3(1.3752111,0.34588149,2.0939016) p1;
	cx p0,p1;
	u3(0.32511538,-pi/2,-pi/2) p0;
	u3(2.0507488,-1.3087914,-3.018396) p1;
	cx p0,p1;
	u3(0.012366245,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4900781,1.4434055,-0.61243559) p0;
	u3(0.18834768,-2.0095045,0.51119412) p1;
}
gate su4_6 p0,p1 {
	u3(0.84578113,0.30024685,2.4312749) p0;
	u3(1.9921703,-1.5450338,1.7632577) p1;
	cx p0,p1;
	u3(0.8761894,-pi/2,-pi/2) p0;
	u3(2.3588264,-1.2389616,-2.9019928) p1;
	cx p0,p1;
	u3(0.33733319,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.73933691,2.8502949,0.047491448) p0;
	u3(2.4497219,-2.1665856,2.4368387) p1;
}
gate su4_831 p0,p1 {
	u3(1.922522,-2.9545823,0.78817223) p0;
	u3(2.1488117,3.0449334,-0.37050754) p1;
	cx p0,p1;
	u3(0.66603769,-pi/2,-pi/2) p0;
	u3(2.3633642,-1.2373785,-2.8997649) p1;
	cx p0,p1;
	u3(0.35899137,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.471523,1.0131971,1.4862826) p0;
	u3(1.7106183,0.4032669,-0.13686743) p1;
}
gate su4_633 p0,p1 {
	u3(1.2649215,-1.6363857,0.52299801) p0;
	u3(2.3619614,2.4674275,-2.2361678) p1;
	cx p0,p1;
	u3(0.84312208,-pi/2,-pi/2) p0;
	u3(2.7553877,-0.91480011,-2.5221841) p1;
	cx p0,p1;
	u3(0.53960363,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0867112,-2.1843453,-0.072979068) p0;
	u3(2.0688736,0.029660527,-1.5025195) p1;
}
gate su4_104 p0,p1 {
	u3(1.7180538,0.36355843,0.35617228) p0;
	u3(1.3089148,-0.64696661,2.5874957) p1;
	cx p0,p1;
	u3(0.97866044,-pi/2,-pi/2) p0;
	u3(2.6796483,-1.0292054,-2.6475906) p1;
	cx p0,p1;
	u3(0.20671378,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8100986,-2.2196696,-2.2741399) p0;
	u3(1.4318741,2.1805967,-2.5574805) p1;
}
gate su4_447 p0,p1 {
	u3(2.1065723,2.5752796,-3.1159635) p0;
	u3(0.73241195,-0.55324038,1.2918628) p1;
	cx p0,p1;
	u3(0.91403121,-pi/2,-pi/2) p0;
	u3(2.4799645,-1.1875369,-2.8335963) p1;
	cx p0,p1;
	u3(0.014474588,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7937095,0.67109852,-1.7585282) p0;
	u3(2.0413609,-1.2681115,-0.80849801) p1;
}
gate su4_980 p0,p1 {
	u3(1.9810589,-2.2186603,1.3897183) p0;
	u3(0.3063058,1.7161447,-3.0756881) p1;
	cx p0,p1;
	u3(0.77776937,-pi/2,-pi/2) p0;
	u3(2.1137009,-1.2991305,-2.9986667) p1;
	cx p0,p1;
	u3(0.29727166,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4274261,1.8304255,1.4603515) p0;
	u3(1.4317837,-2.6048864,-1.20488) p1;
}
gate su4_9 p0,p1 {
	u3(2.0876267,0.037251955,-1.804795) p0;
	u3(0.63323096,-3.0382787,0.66469989) p1;
	cx p0,p1;
	u3(1.2513163,-pi/2,-pi/2) p0;
	u3(2.7410986,-0.94060237,-2.5501188) p1;
	cx p0,p1;
	u3(0.27589354,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.370867,0.80918721,2.3969559) p0;
	u3(2.4035117,-1.3256503,-1.6533332) p1;
}
gate su4_706 p0,p1 {
	u3(2.505737,0.4382923,-1.3668621) p0;
	u3(2.1448402,-1.9156688,-1.6198595) p1;
	cx p0,p1;
	u3(1.1621769,-pi/2,-pi/2) p0;
	u3(2.6751284,-1.034603,-2.653627) p1;
	cx p0,p1;
	u3(0.38793634,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3628242,-2.3222928,0.15423632) p0;
	u3(2.2485615,1.032261,-2.6552751) p1;
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
gate su4_271 p0,p1 {
	u3(1.8943325,-1.5647277,2.6057825) p0;
	u3(2.2100773,2.7865287,3.0162677) p1;
	cx p0,p1;
	u3(0.93257259,-pi/2,-pi/2) p0;
	u3(2.7562989,-0.91306992,-2.5203166) p1;
	cx p0,p1;
	u3(0.63156231,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.26604664,-1.0745806,-2.4102464) p0;
	u3(1.0912258,-2.1278959,2.2323578) p1;
}
gate su4_803 p0,p1 {
	u3(0.75960196,-2.0293656,-1.2466808) p0;
	u3(2.1567882,-2.8187907,0.40484952) p1;
	cx p0,p1;
	u3(0.91996997,-pi/2,-pi/2) p0;
	u3(2.5427422,-1.1509885,-2.7883818) p1;
	cx p0,p1;
	u3(0.44488319,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.7680592,0.29935684,-3.1036112) p0;
	u3(2.0309234,1.9612917,-2.8610599) p1;
}
gate su4_205 p0,p1 {
	u3(2.1920836,1.2448559,1.1367058) p0;
	u3(1.2745396,-2.0138044,0.10495812) p1;
	cx p0,p1;
	u3(0.45692157,-pi/2,-pi/2) p0;
	u3(2.70656,-0.99421449,-2.6087639) p1;
	cx p0,p1;
	u3(0.10201152,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0054304,2.4651518,3.0960244) p0;
	u3(1.7519537,-1.9240816,-1.2639375) p1;
}
gate su4_110 p0,p1 {
	u3(1.5219167,-2.8344331,1.5864005) p0;
	u3(2.051672,2.8165387,1.541699) p1;
	cx p0,p1;
	u3(0.82050384,-pi/2,-pi/2) p0;
	u3(2.4610593,-1.1970063,-2.8456871) p1;
	cx p0,p1;
	u3(0.19955945,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.55454968,2.0622272,2.303978) p0;
	u3(1.4578087,-1.2668604,0.72227092) p1;
}
gate su4_103 p0,p1 {
	u3(1.7848554,0.3982581,-0.34996052) p0;
	u3(1.3467421,-1.6428199,0.56354639) p1;
	cx p0,p1;
	u3(0.85050464,-pi/2,-pi/2) p0;
	u3(2.7495672,-0.9256049,-2.5338617) p1;
	cx p0,p1;
	u3(0.1358954,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4312834,1.6603384,2.0438344) p0;
	u3(2.2932281,-3.0501186,2.1566726) p1;
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
gate su4_22 p0,p1 {
	u3(2.027949,1.0867582,-0.14445444) p0;
	u3(2.331204,1.1803431,2.0115293) p1;
	cx p0,p1;
	u3(0.57163249,-pi/2,-pi/2) p0;
	u3(2.7139149,-0.98370298,-2.5971926) p1;
	cx p0,p1;
	u3(0.46759018,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1434261,-1.6841905,-0.80431247) p0;
	u3(2.3647449,2.8045465,0.13472389) p1;
}
qreg q[9];
creg meas[9];
su4_789 q[3],q[2];
su4_826 q[4],q[5];
su4_632 q[1],q[4];
su4_588 q[0],q[7];
su4_804 q[0],q[2];
su4_66 q[1],q[0];
su4_972 q[0],q[1];
su4_117 q[7],q[3];
su4_187 q[3],q[7];
su4_746 q[8],q[6];
su4_378 q[6],q[5];
su4_342 q[4],q[5];
su4_904 q[5],q[4];
su4_934 q[1],q[4];
su4_161 q[6],q[2];
su4_859 q[7],q[6];
su4_426 q[1],q[6];
su4_921 q[7],q[5];
su4_6 q[8],q[3];
su4_831 q[0],q[8];
su4_633 q[0],q[8];
su4_104 q[3],q[2];
su4_447 q[4],q[2];
su4_980 q[1],q[4];
su4_9 q[1],q[2];
su4_706 q[5],q[3];
su4_506 q[3],q[6];
su4_271 q[5],q[8];
su4_803 q[3],q[5];
su4_205 q[1],q[3];
su4_110 q[7],q[0];
su4_103 q[6],q[7];
su4_110 q[2],q[7];
su4_243 q[6],q[5];
su4_104 q[8],q[0];
su4_22 q[8],q[4];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
measure q[7] -> meas[7];
measure q[8] -> meas[8];
