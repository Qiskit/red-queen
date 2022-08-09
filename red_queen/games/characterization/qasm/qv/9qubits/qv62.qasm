OPENQASM 2.0;
include "qelib1.inc";
gate su4_111 p0,p1 {
	u3(1.3358154,-2.5377262,1.8446149) p0;
	u3(2.2859992,-2.8274307,3.022313) p1;
	cx p0,p1;
	u3(0.80228456,-pi/2,-pi/2) p0;
	u3(2.4328339,-1.2100404,-2.8626506) p1;
	cx p0,p1;
	u3(0.1776362,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.53483602,-2.609175,-1.3874272) p0;
	u3(0.43307736,0.9151081,-1.1104011) p1;
}
gate su4_806 p0,p1 {
	u3(2.816303,0.054281975,3.0783141) p0;
	u3(1.6697127,2.2608145,1.3066482) p1;
	cx p0,p1;
	u3(0.91274987,-pi/2,-pi/2) p0;
	u3(2.7501089,-0.9246169,-2.5327928) p1;
	cx p0,p1;
	u3(0.41087967,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.54183148,-1.3128235,0.50582776) p0;
	u3(0.7231838,2.4887824,2.2325796) p1;
}
gate su4_270 p0,p1 {
	u3(2.4905616,-1.0640198,-2.3995526) p0;
	u3(2.5428307,3.123627,-1.4352062) p1;
	cx p0,p1;
	u3(0.83903238,-pi/2,-pi/2) p0;
	u3(2.7762235,-0.87234047,-2.4765428) p1;
	cx p0,p1;
	u3(0.016049311,1.110223e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0363573,1.6099297,0.50462747) p0;
	u3(1.1851707,-2.8892169,1.9040724) p1;
}
gate su4_817 p0,p1 {
	u3(2.1657602,-2.2510172,-2.5392976) p0;
	u3(2.5985217,-0.22500857,-0.73072349) p1;
	cx p0,p1;
	u3(0.70390164,-pi/2,-pi/2) p0;
	u3(2.179074,-1.2870333,-2.9764552) p1;
	cx p0,p1;
	u3(0.19060063,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9587055,0.70298205,-2.1200584) p0;
	u3(2.2534573,0.378958,-1.1663452) p1;
}
gate su4_39 p0,p1 {
	u3(1.1245528,-2.6601122,0.83284992) p0;
	u3(0.64715284,2.8863764,2.0575451) p1;
	cx p0,p1;
	u3(0.46135584,-pi/2,-pi/2) p0;
	u3(2.794784,-0.82854834,-2.4298227) p1;
	cx p0,p1;
	u3(0.20036686,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4642564,1.6065583,-3.1033146) p0;
	u3(0.5673915,-2.9588957,-1.8209597) p1;
}
gate su4_348 p0,p1 {
	u3(0.61679734,1.2021147,2.5228688) p0;
	u3(2.7033328,-0.70789068,-0.61879307) p1;
	cx p0,p1;
	u3(0.93909978,-pi/2,-pi/2) p0;
	u3(2.6509208,-1.0614898,-2.6839141) p1;
	cx p0,p1;
	u3(0.16573442,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2546645,0.033564331,-1.8039663) p0;
	u3(0.6481694,-0.84735786,1.3486767) p1;
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
gate su4_344 p0,p1 {
	u3(1.8633826,1.9688155,0.82087744) p0;
	u3(1.4926378,0.62789778,-2.8461925) p1;
	cx p0,p1;
	u3(0.35050228,-pi/2,-pi/2) p0;
	u3(2.5380912,-1.154003,-2.7920372) p1;
	cx p0,p1;
	u3(0.0060688189,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8123925,-0.35974692,0.1246289) p0;
	u3(2.0185026,-2.588141,0.4531072) p1;
}
gate su4_3 p0,p1 {
	u3(1.7154245,1.4544676,1.7658996) p0;
	u3(2.5537672,-0.21568865,-1.9044731) p1;
	cx p0,p1;
	u3(0.80330418,-pi/2,-pi/2) p0;
	u3(2.5567211,-1.1415898,-2.777057) p1;
	cx p0,p1;
	u3(0.54734419,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4171603,2.4096884,1.2706478) p0;
	u3(2.0125436,2.3447458,2.637524) p1;
}
gate su4_93 p0,p1 {
	u3(1.2009537,-0.23099098,1.2652708) p0;
	u3(1.7468164,-0.14819108,-1.0534365) p1;
	cx p0,p1;
	u3(0.92288543,-pi/2,-pi/2) p0;
	u3(2.6332606,-1.0791902,-2.7040771) p1;
	cx p0,p1;
	u3(0.13496471,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6333442,-0.38290882,0.2468984) p0;
	u3(1.4536375,0.061500667,-1.2664718) p1;
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
gate su4_602 p0,p1 {
	u3(1.3187121,-1.3597754,2.9717301) p0;
	u3(2.5998693,1.3873457,-1.882633) p1;
	cx p0,p1;
	u3(0.9299261,-pi/2,-pi/2) p0;
	u3(2.8038967,-0.8045165,-2.4043116) p1;
	cx p0,p1;
	u3(0.27887005,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.82601765,0.45730714,2.1829322) p0;
	u3(2.3111565,-2.6927006,2.9070845) p1;
}
gate su4_311 p0,p1 {
	u3(0.43032897,-1.3833097,0.5304489) p0;
	u3(0.41698736,-0.28639463,-2.746571) p1;
	cx p0,p1;
	u3(0.33894305,-pi/2,-pi/2) p0;
	u3(2.6803942,-1.0283023,-2.646582) p1;
	cx p0,p1;
	u3(0.082042739,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6267389,-2.2601116,-2.3907725) p0;
	u3(2.6840454,-1.0970467,-1.6764209) p1;
}
gate su4_425 p0,p1 {
	u3(1.4423174,-1.3015178,0.40524195) p0;
	u3(1.8950769,1.8774929,-2.08589) p1;
	cx p0,p1;
	u3(1.016714,-pi/2,-pi/2) p0;
	u3(2.6120376,-1.0986243,-2.7264562) p1;
	cx p0,p1;
	u3(0.60297329,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8805328,1.581403,-1.6362466) p0;
	u3(1.583551,3.0843721,0.74055491) p1;
}
gate su4_500 p0,p1 {
	u3(1.7621026,2.8403674,2.6897645) p0;
	u3(0.1206039,2.5081409,0.69510174) p1;
	cx p0,p1;
	u3(0.75603932,-pi/2,-pi/2) p0;
	u3(2.6807948,-1.0278158,-2.6460388) p1;
	cx p0,p1;
	u3(0.32617281,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.80954028,-1.7084845,-2.6383474) p0;
	u3(1.754,-2.5998213,2.1767687) p1;
}
gate su4_513 p0,p1 {
	u3(1.4155258,-1.4814966,2.9937767) p0;
	u3(2.4058192,0.26779636,-1.8037072) p1;
	cx p0,p1;
	u3(0.8389386,-pi/2,-pi/2) p0;
	u3(2.5981814,-1.1103525,-2.7401011) p1;
	cx p0,p1;
	u3(0.045386021,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.38224288,0.48456827,-1.6565681) p0;
	u3(1.0273508,-2.2071168,2.2939208) p1;
}
gate su4_761 p0,p1 {
	u3(0.95456829,-0.49155486,1.2744705) p0;
	u3(0.7360261,2.9334414,-0.062079425) p1;
	cx p0,p1;
	u3(1.2106698,-pi/2,-pi/2) p0;
	u3(2.6954792,-1.0092475,-2.6253837) p1;
	cx p0,p1;
	u3(0.22838115,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7043147,1.4297494,-1.4439982) p0;
	u3(1.5688297,2.2890256,-1.257275) p1;
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
gate su4_487 p0,p1 {
	u3(1.1655886,-2.6982712,0.87490822) p0;
	u3(2.1431485,1.1760927,0.46373094) p1;
	cx p0,p1;
	u3(0.57344337,-pi/2,-pi/2) p0;
	u3(2.0447124,-1.3096265,-3.020215) p1;
	cx p0,p1;
	u3(0.28823622,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4431161,2.1056737,-1.3647225) p0;
	u3(2.0556601,-0.78083705,2.9042896) p1;
}
gate su4_786 p0,p1 {
	u3(2.5316583,-1.0141276,0.0030372505) p0;
	u3(0.19817479,2.1908749,-1.8032031) p1;
	cx p0,p1;
	u3(0.41293603,-pi/2,-pi/2) p0;
	u3(2.8107698,-0.78509539,-2.3837528) p1;
	cx p0,p1;
	u3(0.17197707,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.59324651,1.9163636,-2.1845074) p0;
	u3(1.483988,1.5727947,1.860823) p1;
}
gate su4_444 p0,p1 {
	u3(1.3853101,-2.3089489,-1.4306662) p0;
	u3(0.93738954,1.2367175,-0.10662431) p1;
	cx p0,p1;
	u3(0.41696989,-pi/2,-pi/2) p0;
	u3(2.6548716,-1.05732,-2.6791915) p1;
	cx p0,p1;
	u3(0.21248233,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6750409,-2.8841427,1.9682578) p0;
	u3(1.7468159,1.9423046,-0.33541134) p1;
}
gate su4_492 p0,p1 {
	u3(1.4115379,2.70359,0.46096043) p0;
	u3(1.8427608,-3.1386124,-2.1964188) p1;
	cx p0,p1;
	u3(0.88830208,-pi/2,-pi/2) p0;
	u3(2.5384319,-1.153784,-2.7917713) p1;
	cx p0,p1;
	u3(0.14214051,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2713485,2.1797389,0.87674552) p0;
	u3(0.74211015,2.1617458,2.6702743) p1;
}
gate su4_389 p0,p1 {
	u3(1.3524816,3.0779424,2.4573779) p0;
	u3(1.3701611,-2.7529382,-0.0382336) p1;
	cx p0,p1;
	u3(1.0219722,-pi/2,-pi/2) p0;
	u3(2.6806629,-1.0279761,-2.6462178) p1;
	cx p0,p1;
	u3(0.045050393,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.918905,0.42385099,-0.689423) p0;
	u3(0.75890847,-0.20087551,2.1487893) p1;
}
gate su4_843 p0,p1 {
	u3(0.84921398,-0.38974291,-0.41744652) p0;
	u3(0.69413917,-0.32485472,0.0680327) p1;
	cx p0,p1;
	u3(0.47282235,-pi/2,-pi/2) p0;
	u3(2.7974395,-0.82173453,-2.422581) p1;
	cx p0,p1;
	u3(0.10349607,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4078569,2.6179097,2.7818547) p0;
	u3(1.9363044,0.49235639,0.79684081) p1;
}
gate su4_318 p0,p1 {
	u3(0.94824942,1.6362783,0.19746235) p0;
	u3(0.67973641,-2.020786,-2.4115415) p1;
	cx p0,p1;
	u3(0.88054296,-pi/2,-pi/2) p0;
	u3(2.6359752,-1.0765648,-2.701074) p1;
	cx p0,p1;
	u3(0.52309239,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3814914,1.5620214,1.8696666) p0;
	u3(1.6778648,0.16644939,2.8453694) p1;
}
gate su4_217 p0,p1 {
	u3(2.4825193,1.9736727,3.0151195) p0;
	u3(0.75063685,1.0127207,0.33038545) p1;
	cx p0,p1;
	u3(1.1013679,-pi/2,-pi/2) p0;
	u3(2.7614738,-0.90303638,-2.5095007) p1;
	cx p0,p1;
	u3(0.42486525,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2624309,0.86074627,1.8155576) p0;
	u3(1.6746439,-1.0737092,-2.9604019) p1;
}
gate su4_298 p0,p1 {
	u3(1.7432174,2.3084854,0.87523361) p0;
	u3(0.68940191,-0.16630867,-0.77722991) p1;
	cx p0,p1;
	u3(0.71518349,-pi/2,-pi/2) p0;
	u3(2.7442896,-0.93504799,-2.5440912) p1;
	cx p0,p1;
	u3(0.36371161,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4628686,-0.71755581,-1.346063) p0;
	u3(1.6492276,-1.7053821,0.76090766) p1;
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
gate su4_701 p0,p1 {
	u3(2.9415795,2.694255,1.4096814) p0;
	u3(1.0853955,0.061178852,-0.45489341) p1;
	cx p0,p1;
	u3(0.48373554,-pi/2,-pi/2) p0;
	u3(2.6529921,-1.0593138,-2.6814483) p1;
	cx p0,p1;
	u3(0.3243605,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.85011454,-2.3318558,1.7794951) p0;
	u3(0.66737722,-2.2785072,2.7513475) p1;
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
gate su4_951 p0,p1 {
	u3(2.5117383,-2.1265838,-1.8048916) p0;
	u3(1.1193662,-0.7948368,-1.9637574) p1;
	cx p0,p1;
	u3(0.64968984,-pi/2,-pi/2) p0;
	u3(2.1723613,-1.2883834,-2.9788292) p1;
	cx p0,p1;
	u3(0.32271541,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6916132,-1.9105734,1.8937971) p0;
	u3(1.6964096,1.4378845,-0.079691601) p1;
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
qreg q[9];
creg meas[9];
su4_111 q[0],q[5];
su4_806 q[5],q[4];
su4_270 q[6],q[1];
su4_817 q[1],q[0];
su4_39 q[3],q[7];
su4_348 q[1],q[3];
su4_388 q[8],q[2];
su4_344 q[2],q[6];
su4_3 q[4],q[2];
su4_93 q[4],q[6];
su4_103 q[4],q[2];
su4_522 q[8],q[7];
su4_602 q[7],q[0];
su4_311 q[0],q[1];
su4_425 q[0],q[1];
su4_500 q[8],q[5];
su4_513 q[3],q[5];
su4_761 q[5],q[3];
su4_804 q[2],q[3];
su4_487 q[0],q[3];
su4_786 q[5],q[1];
su4_444 q[2],q[5];
su4_492 q[8],q[7];
su4_389 q[7],q[8];
su4_843 q[4],q[8];
su4_318 q[7],q[6];
su4_39 q[1],q[6];
su4_217 q[5],q[1];
su4_298 q[6],q[0];
su4_274 q[0],q[3];
su4_142 q[8],q[4];
su4_637 q[4],q[2];
su4_701 q[4],q[1];
su4_79 q[8],q[7];
su4_951 q[2],q[8];
su4_38 q[7],q[5];
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
