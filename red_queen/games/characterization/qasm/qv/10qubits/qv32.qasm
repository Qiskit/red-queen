OPENQASM 2.0;
include "qelib1.inc";
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
gate su4_710 p0,p1 {
	u3(1.1494778,-2.0344449,-2.6733945) p0;
	u3(1.2124123,1.7645373,-2.0360297) p1;
	cx p0,p1;
	u3(1.1619586,-pi/2,-pi/2) p0;
	u3(2.6900784,-1.0162479,-2.6331536) p1;
	cx p0,p1;
	u3(1.0478964,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1956589,2.4838423,-1.8491745) p0;
	u3(1.7941753,2.2050391,0.0068737206) p1;
}
gate su4_715 p0,p1 {
	u3(2.3485266,-2.5435407,0.86101816) p0;
	u3(1.4073273,-2.6248526,2.6934423) p1;
	cx p0,p1;
	u3(0.83770034,-pi/2,-pi/2) p0;
	u3(2.7455184,-0.93287835,-2.5417389) p1;
	cx p0,p1;
	u3(0.024237402,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.93119719,-0.55070813,1.0699094) p0;
	u3(1.5469572,1.6771219,1.3871057) p1;
}
gate su4_724 p0,p1 {
	u3(2.3907789,-3.0866362,-2.2626955) p0;
	u3(2.0928776,1.1713223,-2.1675574) p1;
	cx p0,p1;
	u3(0.56067168,-pi/2,-pi/2) p0;
	u3(2.5913379,-1.1158897,-2.7465835) p1;
	cx p0,p1;
	u3(0.2086138,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7580537,2.4089586,-2.6065862) p0;
	u3(2.7301166,-1.025328,-2.0223337) p1;
}
gate su4_699 p0,p1 {
	u3(1.0744693,-0.39989017,0.6848989) p0;
	u3(2.2699297,-1.9211924,1.3134778) p1;
	cx p0,p1;
	u3(0.30863277,-pi/2,-pi/2) p0;
	u3(2.66611,-1.0450039,-2.6652985) p1;
	cx p0,p1;
	u3(0.025487112,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.9171798,0.062618784,1.3913772) p0;
	u3(1.7367206,-0.6853917,2.468287) p1;
}
gate su4_21 p0,p1 {
	u3(1.4426467,0.51815763,-2.9626211) p0;
	u3(1.3611549,0.12059197,-3.0732588) p1;
	cx p0,p1;
	u3(0.77073002,-pi/2,-pi/2) p0;
	u3(2.6818957,-1.0264737,-2.6445408) p1;
	cx p0,p1;
	u3(0.17031748,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5286988,2.3665788,-1.601776) p0;
	u3(2.6414131,-1.8299421,-1.7722638) p1;
}
gate su4_725 p0,p1 {
	u3(0.96866403,-1.9820942,0.10235632) p0;
	u3(0.64937913,-1.6317369,2.1078352) p1;
	cx p0,p1;
	u3(0.58356936,-pi/2,-pi/2) p0;
	u3(2.5762384,-1.1275531,-2.7603303) p1;
	cx p0,p1;
	u3(0.47437827,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6695997,0.1100872,0.68775843) p0;
	u3(0.5122176,3.0928702,-0.078462292) p1;
}
gate su4_802 p0,p1 {
	u3(2.1661072,-3.0020995,-0.69267013) p0;
	u3(2.4920694,-1.3159252,3.1346944) p1;
	cx p0,p1;
	u3(1.2399351,-pi/2,-pi/2) p0;
	u3(2.6318988,-1.0804947,-2.705571) p1;
	cx p0,p1;
	u3(0.18898532,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.69790788,-2.9781689,0.62171529) p0;
	u3(1.0899986,1.3309635,-1.3209466) p1;
}
gate su4_911 p0,p1 {
	u3(1.4456477,2.7052731,1.8171398) p0;
	u3(2.471636,-1.0983229,-3.0091089) p1;
	cx p0,p1;
	u3(0.96447815,-pi/2,-pi/2) p0;
	u3(2.4484535,-1.2029828,-2.8534161) p1;
	cx p0,p1;
	u3(0.44621451,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5955617,1.329173,0.87549783) p0;
	u3(0.31224099,-2.5180821,0.87102367) p1;
}
gate su4_936 p0,p1 {
	u3(1.2732966,1.4578463,0.45176274) p0;
	u3(2.3085493,1.4276846,-2.001102) p1;
	cx p0,p1;
	u3(1.1489862,-pi/2,-pi/2) p0;
	u3(2.7494598,-0.92580033,-2.5340732) p1;
	cx p0,p1;
	u3(0.089162305,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.99765322,0.015940272,-0.32021568) p0;
	u3(2.4459576,-1.5340465,-0.65853949) p1;
}
gate su4_924 p0,p1 {
	u3(1.2221727,2.9430752,0.89514294) p0;
	u3(1.3659351,-1.1885739,0.29099076) p1;
	cx p0,p1;
	u3(0.76377806,-pi/2,-pi/2) p0;
	u3(2.3017647,-1.2570875,-2.9283058) p1;
	cx p0,p1;
	u3(0.68103674,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0496319,2.5267823,2.8266037) p0;
	u3(1.8075434,-0.83616605,-1.531982) p1;
}
gate su4_189 p0,p1 {
	u3(0.93961363,0.17115045,1.7821795) p0;
	u3(1.944154,2.2716618,2.1832028) p1;
	cx p0,p1;
	u3(0.72395301,-pi/2,-pi/2) p0;
	u3(2.7920918,-0.835306,-2.4370116) p1;
	cx p0,p1;
	u3(0.208148,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.105866,-2.9327511,2.4887886) p0;
	u3(0.5970743,-1.2118143,-1.8474911) p1;
}
gate su4_869 p0,p1 {
	u3(1.9202362,0.2101904,-0.78386966) p0;
	u3(0.6334081,0.064175453,-0.66808835) p1;
	cx p0,p1;
	u3(1.0682366,-pi/2,-pi/2) p0;
	u3(2.7192209,-0.97583633,-2.5885577) p1;
	cx p0,p1;
	u3(0.23160422,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6579659,-2.5232283,1.0639539) p0;
	u3(1.0168833,-2.5226185,2.8574635) p1;
}
gate su4_58 p0,p1 {
	u3(0.78094762,-1.2116097,-0.89866226) p0;
	u3(1.8510425,-1.1191713,-1.3781386) p1;
	cx p0,p1;
	u3(0.83325246,-pi/2,-pi/2) p0;
	u3(2.7339787,-0.95259589,-2.5631625) p1;
	cx p0,p1;
	u3(0.37690172,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0100434,-1.7203149,1.2698455) p0;
	u3(2.4122009,-0.8665467,0.4690261) p1;
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
gate su4_777 p0,p1 {
	u3(0.95821416,2.6331343,0.2783842) p0;
	u3(1.8011045,-2.5949287,-0.91764194) p1;
	cx p0,p1;
	u3(1.1971841,-pi/2,-pi/2) p0;
	u3(2.8121867,-0.78094051,-2.3793608) p1;
	cx p0,p1;
	u3(0.15323768,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.71195668,2.2980975,2.1334949) p0;
	u3(1.3263513,1.7483943,-1.4245296) p1;
}
gate su4_981 p0,p1 {
	u3(1.8194996,-2.0282472,1.6660969) p0;
	u3(0.50836751,1.8103945,0.44693961) p1;
	cx p0,p1;
	u3(1.032468,-pi/2,-pi/2) p0;
	u3(2.7390005,-0.94419305,-2.5540197) p1;
	cx p0,p1;
	u3(0.23077922,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4980621,-1.8850774,-1.6879862) p0;
	u3(1.7298742,-0.42821234,-1.6137346) p1;
}
gate su4_993 p0,p1 {
	u3(1.0911054,-0.83059882,1.1126757) p0;
	u3(1.566762,-0.48437968,-1.0717823) p1;
	cx p0,p1;
	u3(1.1441916,-pi/2,-pi/2) p0;
	u3(2.6265151,-1.0855723,-2.7113967) p1;
	cx p0,p1;
	u3(0.19093217,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1003697,2.6614424,2.6668893) p0;
	u3(1.5080358,-0.04900369,-1.1791689) p1;
}
gate su4_825 p0,p1 {
	u3(1.4623786,1.3349926,1.6890152) p0;
	u3(2.0201532,1.4106732,-1.1450209) p1;
	cx p0,p1;
	u3(0.71713653,-pi/2,-pi/2) p0;
	u3(2.6883213,-1.0184816,-2.6356372) p1;
	cx p0,p1;
	u3(0.23468193,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2319903,-1.4985739,-0.4355037) p0;
	u3(2.3572846,-2.9775948,1.6765282) p1;
}
gate su4_409 p0,p1 {
	u3(1.5405408,-0.41257502,3.0013984) p0;
	u3(1.7108053,-0.20525962,1.4418795) p1;
	cx p0,p1;
	u3(0.39369888,-pi/2,-pi/2) p0;
	u3(2.6658872,-1.0452548,-2.6655808) p1;
	cx p0,p1;
	u3(0.083830544,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.87451494,2.839371,-1.5115162) p0;
	u3(0.88780085,1.9286754,2.662502) p1;
}
gate su4_89 p0,p1 {
	u3(0.76664781,-1.6469275,-1.0160501) p0;
	u3(0.32332386,0.61568775,2.2188231) p1;
	cx p0,p1;
	u3(0.73254393,-pi/2,-pi/2) p0;
	u3(2.7934139,-0.83200605,-2.4335002) p1;
	cx p0,p1;
	u3(0.41641592,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.56145192,-2.3739623,-0.20714397) p0;
	u3(2.0507073,-2.179578,-0.10887794) p1;
}
gate su4_324 p0,p1 {
	u3(1.7621901,2.1713345,-0.53082162) p0;
	u3(2.4195429,-0.24199042,-1.0490964) p1;
	cx p0,p1;
	u3(0.89748367,-pi/2,-pi/2) p0;
	u3(2.6964757,-1.0079331,-2.623927) p1;
	cx p0,p1;
	u3(0.52848614,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6762918,-2.2118226,0.7564464) p0;
	u3(1.7633717,-0.92599145,-0.53337466) p1;
}
gate su4_841 p0,p1 {
	u3(1.104804,-2.8211586,-0.59529792) p0;
	u3(1.5801634,-0.2102938,-0.83195676) p1;
	cx p0,p1;
	u3(0.82729088,-pi/2,-pi/2) p0;
	u3(2.6890542,-1.0175524,-2.6346038) p1;
	cx p0,p1;
	u3(0.12357399,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3649675,-2.637882,2.6737781) p0;
	u3(1.5895855,-2.9563874,-1.315139) p1;
}
gate su4_580 p0,p1 {
	u3(2.6792303,-2.1283638,0.1552699) p0;
	u3(2.0718974,2.8211345,1.6836832) p1;
	cx p0,p1;
	u3(1.0136083,-pi/2,-pi/2) p0;
	u3(2.6741111,-1.0358004,-2.654968) p1;
	cx p0,p1;
	u3(0.22242341,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0444229,-1.1865864,0.65467629) p0;
	u3(1.9076388,2.2328311,3.0905885) p1;
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
gate su4_164 p0,p1 {
	u3(1.6238917,1.4887825,-2.2822428) p0;
	u3(1.376176,-0.28778008,-2.6317052) p1;
	cx p0,p1;
	u3(0.81061454,-pi/2,-pi/2) p0;
	u3(2.4783884,-1.1883506,-2.8346283) p1;
	cx p0,p1;
	u3(0.047059717,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7748324,1.6203571,-2.7973726) p0;
	u3(2.2878563,2.6520046,-0.15962828) p1;
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
gate su4_915 p0,p1 {
	u3(0.34258035,-1.8227502,2.7037035) p0;
	u3(1.9952022,0.29186789,0.44272637) p1;
	cx p0,p1;
	u3(1.2360293,-pi/2,-pi/2) p0;
	u3(2.8017016,-0.81047652,-2.4106308) p1;
	cx p0,p1;
	u3(0.1210985,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4392738,-3.1138924,2.4740919) p0;
	u3(1.8746243,0.41855617,0.046927364) p1;
}
gate su4_306 p0,p1 {
	u3(1.3020523,2.3171813,-1.5110325) p0;
	u3(2.1036401,2.1420558,2.102548) p1;
	cx p0,p1;
	u3(0.96351067,-pi/2,-pi/2) p0;
	u3(2.3111646,-1.254314,-2.9241731) p1;
	cx p0,p1;
	u3(0.66464432,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3398663,-1.9392222,-2.4991225) p0;
	u3(2.0359223,1.1843933,-2.6612753) p1;
}
gate su4_878 p0,p1 {
	u3(1.1086873,-2.8926952,-2.0632999) p0;
	u3(1.2137707,0.073418375,2.9609965) p1;
	cx p0,p1;
	u3(0.98441784,-pi/2,-pi/2) p0;
	u3(2.8129057,-0.77881146,-2.3771111) p1;
	cx p0,p1;
	u3(0.060627578,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2100187,-0.85464186,-0.9467739) p0;
	u3(1.046497,-2.4535933,2.2168621) p1;
}
gate su4_10 p0,p1 {
	u3(1.5456654,-1.7622722,-1.6222541) p0;
	u3(0.90348607,2.1896731,1.1581267) p1;
	cx p0,p1;
	u3(0.97750416,-pi/2,-pi/2) p0;
	u3(2.6581302,-1.0538195,-2.6752344) p1;
	cx p0,p1;
	u3(0.28053645,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1441014,-0.34079484,-2.5884062) p0;
	u3(0.91686809,1.625952,-1.2250406) p1;
}
gate su4_866 p0,p1 {
	u3(0.73754676,-1.857151,2.2999074) p0;
	u3(1.5511656,-2.9501671,2.2807772) p1;
	cx p0,p1;
	u3(1.0319916,-pi/2,-pi/2) p0;
	u3(2.6484125,-1.0640959,-2.6868707) p1;
	cx p0,p1;
	u3(0.29034219,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1589468,-0.71629895,2.7210557) p0;
	u3(1.6387993,1.2903978,-3.1414654) p1;
}
gate su4_494 p0,p1 {
	u3(1.331381,-0.3492933,0.17538468) p0;
	u3(1.698828,-2.1134984,0.86682699) p1;
	cx p0,p1;
	u3(0.95722955,-pi/2,-pi/2) p0;
	u3(2.7141284,-0.9833911,-2.5968498) p1;
	cx p0,p1;
	u3(0.46496768,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.35436351,-3.0758423,0.36201792) p0;
	u3(1.7635436,1.7339376,1.3909722) p1;
}
gate su4_309 p0,p1 {
	u3(2.4907348,-2.2915972,1.3801194) p0;
	u3(1.3803728,2.2601815,1.0134744) p1;
	cx p0,p1;
	u3(0.77667954,-pi/2,-pi/2) p0;
	u3(2.6022473,-1.1069844,-2.736171) p1;
	cx p0,p1;
	u3(0.45517194,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3588723,-2.5083881,1.9860123) p0;
	u3(1.4632168,0.64276981,1.2359377) p1;
}
gate su4_529 p0,p1 {
	u3(1.0019756,1.4446479,-2.5293241) p0;
	u3(1.3812664,-0.98105319,1.604259) p1;
	cx p0,p1;
	u3(0.70373608,-pi/2,-pi/2) p0;
	u3(2.4842833,-1.1852834,-2.830745) p1;
	cx p0,p1;
	u3(0.30736685,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.57990862,1.1220115,-2.6989631) p0;
	u3(0.84425623,-1.8268166,1.6407839) p1;
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
gate su4_518 p0,p1 {
	u3(0.12709745,-3.0459269,-1.3815318) p0;
	u3(1.22186,1.1091518,-1.1339469) p1;
	cx p0,p1;
	u3(0.85550204,-pi/2,-pi/2) p0;
	u3(2.5508596,-1.1455941,-2.781869) p1;
	cx p0,p1;
	u3(0.013323001,1.4210855e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.30137415,-3.098553,-0.78510954) p0;
	u3(0.67873934,0.86407829,-1.6395909) p1;
}
gate su4_87 p0,p1 {
	u3(1.2334269,1.5448245,0.89940145) p0;
	u3(2.5453833,-2.1659102,0.14784684) p1;
	cx p0,p1;
	u3(0.57044976,-pi/2,-pi/2) p0;
	u3(2.7891237,-0.8425877,-2.4447661) p1;
	cx p0,p1;
	u3(0.14008447,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.8087498,3.0286061,-0.20380457) p0;
	u3(2.638252,2.5188314,-0.26293993) p1;
}
gate su4_963 p0,p1 {
	u3(2.7883737,-0.81849018,2.3903262) p0;
	u3(1.0390649,2.8990109,-1.379126) p1;
	cx p0,p1;
	u3(0.76481339,-pi/2,-pi/2) p0;
	u3(2.7612729,-0.9034326,-2.5099274) p1;
	cx p0,p1;
	u3(0.086185684,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.42122778,0.55406918,-0.68770737) p0;
	u3(1.9125722,-1.4215933,3.0879782) p1;
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
gate su4_315 p0,p1 {
	u3(1.5465891,-2.5292499,1.1616695) p0;
	u3(2.1416082,0.6014417,-2.4782007) p1;
	cx p0,p1;
	u3(0.78521478,-pi/2,-pi/2) p0;
	u3(2.6195203,-1.091985,-2.7187801) p1;
	cx p0,p1;
	u3(0.47838567,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1635268,2.8749171,-1.5171744) p0;
	u3(1.7861596,-1.7398465,-0.76570433) p1;
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
gate su4_466 p0,p1 {
	u3(0.85638276,-1.3630864,0.62157326) p0;
	u3(1.6247496,0.73299982,-1.356144) p1;
	cx p0,p1;
	u3(0.85533386,-pi/2,-pi/2) p0;
	u3(2.460577,-1.1972397,-2.8459876) p1;
	cx p0,p1;
	u3(0.55270337,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0768184,1.9908879,1.5448478) p0;
	u3(1.8677123,-0.33573522,-1.2438651) p1;
}
qreg q[10];
creg meas[10];
su4_2 q[1],q[2];
su4_710 q[4],q[3];
su4_715 q[3],q[1];
su4_724 q[5],q[0];
su4_699 q[7],q[8];
su4_21 q[5],q[7];
su4_725 q[1],q[5];
su4_802 q[8],q[2];
su4_911 q[2],q[3];
su4_936 q[6],q[9];
su4_924 q[6],q[4];
su4_189 q[8],q[4];
su4_869 q[1],q[4];
su4_58 q[3],q[8];
su4_176 q[9],q[0];
su4_777 q[6],q[0];
su4_981 q[6],q[2];
su4_993 q[2],q[8];
su4_825 q[7],q[9];
su4_409 q[7],q[5];
su4_981 q[3],q[5];
su4_89 q[7],q[1];
su4_324 q[5],q[1];
su4_841 q[7],q[3];
su4_580 q[9],q[0];
su4_206 q[6],q[0];
su4_164 q[0],q[8];
su4_942 q[1],q[0];
su4_915 q[8],q[7];
su4_306 q[8],q[0];
su4_878 q[9],q[4];
su4_10 q[2],q[9];
su4_866 q[3],q[2];
su4_494 q[4],q[6];
su4_309 q[6],q[4];
su4_529 q[1],q[4];
su4_423 q[3],q[6];
su4_518 q[0],q[3];
su4_87 q[8],q[4];
su4_963 q[0],q[8];
su4_492 q[9],q[5];
su4_315 q[2],q[5];
su4_671 q[1],q[5];
su4_66 q[1],q[4];
su4_915 q[7],q[9];
su4_87 q[2],q[9];
su4_715 q[6],q[7];
su4_924 q[6],q[3];
su4_466 q[7],q[5];
su4_309 q[9],q[2];
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
