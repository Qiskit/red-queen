OPENQASM 2.0;
include "qelib1.inc";
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
gate su4_593 p0,p1 {
	u3(2.4188316,-2.128681,-0.093224311) p0;
	u3(1.6739758,-0.7455,-2.0917217) p1;
	cx p0,p1;
	u3(0.99161083,-pi/2,-pi/2) p0;
	u3(2.814461,-0.77415748,-2.3721952) p1;
	cx p0,p1;
	u3(0.086531547,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2359694,-2.7016941,-0.40599853) p0;
	u3(0.53870523,1.4004599,1.3204763) p1;
}
gate su4_985 p0,p1 {
	u3(2.5435891,1.3397942,1.1048003) p0;
	u3(1.3283915,0.027882723,-0.3804316) p1;
	cx p0,p1;
	u3(0.73242216,-pi/2,-pi/2) p0;
	u3(2.6082426,-1.1019078,-2.7302651) p1;
	cx p0,p1;
	u3(0.278894,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9681299,-1.2006904,0.18756424) p0;
	u3(2.2642985,2.6679345,1.0961425) p1;
}
gate su4_751 p0,p1 {
	u3(0.97829727,0.95623718,0.51479585) p0;
	u3(1.6380451,0.2489167,1.7410344) p1;
	cx p0,p1;
	u3(1.0180668,-pi/2,-pi/2) p0;
	u3(2.5335438,-1.1568983,-2.7955591) p1;
	cx p0,p1;
	u3(0.49977125,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0257676,0.87232534,0.40157025) p0;
	u3(1.6374117,0.21128032,-1.7299636) p1;
}
gate su4_778 p0,p1 {
	u3(0.75466082,2.6338375,-1.8762574) p0;
	u3(0.82636325,1.6286544,1.408099) p1;
	cx p0,p1;
	u3(0.74096353,-pi/2,-pi/2) p0;
	u3(2.5010849,-1.1761761,-2.8193147) p1;
	cx p0,p1;
	u3(0.29509667,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2112001,0.98793077,-1.459272) p0;
	u3(1.2140819,0.88867233,1.1045287) p1;
}
gate su4_730 p0,p1 {
	u3(2.2873906,-2.1023936,0.40224784) p0;
	u3(0.95838322,-2.2973566,1.9247855) p1;
	cx p0,p1;
	u3(0.51225224,-pi/2,-pi/2) p0;
	u3(2.4895222,-1.1825028,-2.8272396) p1;
	cx p0,p1;
	u3(0.25828492,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4058749,1.4102516,-1.9643755) p0;
	u3(1.6057719,-1.0366356,-0.54843762) p1;
}
gate su4_889 p0,p1 {
	u3(1.7254832,2.3136211,-0.12570068) p0;
	u3(1.9826349,1.7303316,0.69978418) p1;
	cx p0,p1;
	u3(0.49974179,-pi/2,-pi/2) p0;
	u3(2.5907137,-1.1163867,-2.7471667) p1;
	cx p0,p1;
	u3(0.021776444,1.1990409e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9310834,1.6644248,-2.832794) p0;
	u3(2.5516299,2.1688753,-1.9953248) p1;
}
gate su4_872 p0,p1 {
	u3(1.9811872,-1.1972556,-2.8438536) p0;
	u3(1.7831325,-2.586235,-0.20720416) p1;
	cx p0,p1;
	u3(0.39870335,-pi/2,-pi/2) p0;
	u3(2.1934582,-1.2840506,-2.9712891) p1;
	cx p0,p1;
	u3(0.21146594,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3457334,2.1585931,-1.2755192) p0;
	u3(1.5429495,0.86459589,0.057751037) p1;
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
gate su4_278 p0,p1 {
	u3(2.2044865,-0.93268081,-2.4643826) p0;
	u3(0.54784961,2.2264456,2.1074237) p1;
	cx p0,p1;
	u3(0.95145546,-pi/2,-pi/2) p0;
	u3(2.8022839,-0.80890652,-2.4089657) p1;
	cx p0,p1;
	u3(0.22121205,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1389739,-0.050233604,-1.627433) p0;
	u3(1.3438372,-2.554084,-0.59209024) p1;
}
gate su4_369 p0,p1 {
	u3(1.7895693,-1.451256,0.42250211) p0;
	u3(1.4889813,-2.3082356,-0.48122474) p1;
	cx p0,p1;
	u3(0.89905622,-pi/2,-pi/2) p0;
	u3(2.7975973,-0.82132506,-2.422146) p1;
	cx p0,p1;
	u3(0.1255822,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5539886,2.2347193,-0.538234) p0;
	u3(2.5817192,1.1904318,3.053396) p1;
}
gate su4_726 p0,p1 {
	u3(1.7250686,-1.8647995,-0.83240652) p0;
	u3(1.4275637,2.4498692,-3.0427113) p1;
	cx p0,p1;
	u3(0.64696215,-pi/2,-pi/2) p0;
	u3(2.7172144,-0.9788401,-2.5918524) p1;
	cx p0,p1;
	u3(0.28919228,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0743561,0.40383596,-1.3214603) p0;
	u3(1.5710018,2.4442565,0.96375097) p1;
}
gate su4_265 p0,p1 {
	u3(2.4427389,-2.5049232,-1.8005893) p0;
	u3(1.5871056,0.36835525,1.8135599) p1;
	cx p0,p1;
	u3(1.2621157,-pi/2,-pi/2) p0;
	u3(2.7391982,-0.9438567,-2.5536542) p1;
	cx p0,p1;
	u3(0.14788208,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1551093,1.2393975,1.6846755) p0;
	u3(0.88416999,-2.0896025,2.7553229) p1;
}
gate su4_743 p0,p1 {
	u3(1.7728609,3.0154112,2.9903881) p0;
	u3(1.2349948,2.9105368,-3.0341105) p1;
	cx p0,p1;
	u3(0.85433449,-pi/2,-pi/2) p0;
	u3(2.6537307,-1.0585324,-2.6805636) p1;
	cx p0,p1;
	u3(0.34454974,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3059123,-3.0131426,2.6811039) p0;
	u3(1.311378,-1.0616421,0.054765898) p1;
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
gate su4_15 p0,p1 {
	u3(2.4354191,2.9707215,1.0012224) p0;
	u3(1.177929,-2.7442866,-2.4078943) p1;
	cx p0,p1;
	u3(0.30721657,-pi/2,-pi/2) p0;
	u3(2.484023,-1.1854202,-2.8309178) p1;
	cx p0,p1;
	u3(0.12912597,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3136086,-0.76385212,-0.34974616) p0;
	u3(2.0485505,-0.56618345,-0.056914081) p1;
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
gate su4_181 p0,p1 {
	u3(1.5742385,2.7461241,-1.4388668) p0;
	u3(1.2436146,-0.60601438,2.4416381) p1;
	cx p0,p1;
	u3(1.0027923,-pi/2,-pi/2) p0;
	u3(2.740206,-0.94213583,-2.5517843) p1;
	cx p0,p1;
	u3(0.071594534,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5624661,1.5092372,2.5660221) p0;
	u3(2.4595203,-1.6344239,2.258973) p1;
}
gate su4_220 p0,p1 {
	u3(1.1225616,-2.564038,2.5545054) p0;
	u3(2.33752,-0.092632662,-2.9951854) p1;
	cx p0,p1;
	u3(1.0677497,-pi/2,-pi/2) p0;
	u3(2.7354796,-0.95011216,-2.560458) p1;
	cx p0,p1;
	u3(0.064765152,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0143793,1.998322,0.57768941) p0;
	u3(0.19952444,1.7434427,0.78874622) p1;
}
gate su4_167 p0,p1 {
	u3(1.4739017,1.0967479,1.4875497) p0;
	u3(2.7272098,0.8572111,-2.8175646) p1;
	cx p0,p1;
	u3(0.93207405,-pi/2,-pi/2) p0;
	u3(2.6666034,-1.0444471,-2.6646724) p1;
	cx p0,p1;
	u3(0.21166284,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9807222,-1.4122291,3.0894261) p0;
	u3(1.3348631,1.6854584,2.9109172) p1;
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
gate su4_586 p0,p1 {
	u3(0.54754538,-1.5067492,0.93502195) p0;
	u3(2.2592059,0.47419433,2.2858869) p1;
	cx p0,p1;
	u3(0.78386843,-pi/2,-pi/2) p0;
	u3(2.7926239,-0.83398209,-2.4356027) p1;
	cx p0,p1;
	u3(0.2662302,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4798186,-1.4237605,0.14948679) p0;
	u3(1.0003983,2.8465012,-0.83741624) p1;
}
gate su4_926 p0,p1 {
	u3(1.3254669,-2.9073587,-1.4431648) p0;
	u3(1.8452125,-2.2646106,-0.18887914) p1;
	cx p0,p1;
	u3(1.2043787,-pi/2,-pi/2) p0;
	u3(2.7191604,-0.9759275,-2.5886577) p1;
	cx p0,p1;
	u3(0.8299026,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6443696,-0.48087849,3.072199) p0;
	u3(1.3942465,-2.8049462,-2.9675523) p1;
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
gate su4_559 p0,p1 {
	u3(2.2943073,0.58665821,-1.9683895) p0;
	u3(1.2706011,1.8143157,-2.7104086) p1;
	cx p0,p1;
	u3(0.50413432,-pi/2,-pi/2) p0;
	u3(2.6493054,-1.0631719,-2.6858219) p1;
	cx p0,p1;
	u3(0.025042965,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0667081,-1.9297337,1.943168) p0;
	u3(1.8952327,0.64682515,-0.88402307) p1;
}
gate su4_925 p0,p1 {
	u3(1.7706602,1.4070043,-2.7929137) p0;
	u3(0.48287605,-0.45552053,-2.6197241) p1;
	cx p0,p1;
	u3(0.89533363,-pi/2,-pi/2) p0;
	u3(2.394233,-1.2259853,-2.8840067) p1;
	cx p0,p1;
	u3(0.36474616,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3227275,2.3843214,-2.1860274) p0;
	u3(1.1884982,3.1321441,1.2225244) p1;
}
gate su4_479 p0,p1 {
	u3(2.470786,0.75925867,-2.7459145) p0;
	u3(0.76895485,2.0352191,0.79322516) p1;
	cx p0,p1;
	u3(0.72899957,-pi/2,-pi/2) p0;
	u3(2.5770589,-1.126938,-2.7596021) p1;
	cx p0,p1;
	u3(0.3349488,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.5497739,1.8609784,2.0707525) p0;
	u3(1.6483663,0.29595433,1.7558936) p1;
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
gate su4_870 p0,p1 {
	u3(0.98654921,-1.0522391,-1.047521) p0;
	u3(1.1015957,-2.5938062,-2.9375703) p1;
	cx p0,p1;
	u3(0.76736908,-pi/2,-pi/2) p0;
	u3(2.4357552,-1.2087486,-2.8609511) p1;
	cx p0,p1;
	u3(0.022710279,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.38607098,1.3899083,1.0696534) p0;
	u3(0.2201921,-1.161332,-1.9410148) p1;
}
gate su4_863 p0,p1 {
	u3(1.9163735,2.7129284,1.3553138) p0;
	u3(1.2327171,0.70244042,3.0851232) p1;
	cx p0,p1;
	u3(0.88069754,-pi/2,-pi/2) p0;
	u3(2.6042292,-1.1053209,-2.7342334) p1;
	cx p0,p1;
	u3(0.12698301,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8416995,-0.80905005,0.32129129) p0;
	u3(1.1851132,-1.2369559,-2.1117319) p1;
}
gate su4_733 p0,p1 {
	u3(1.8921829,-2.3850243,-0.72543391) p0;
	u3(2.1063079,2.3660972,0.58612539) p1;
	cx p0,p1;
	u3(0.98161884,-pi/2,-pi/2) p0;
	u3(2.654491,-1.0577253,-2.67965) p1;
	cx p0,p1;
	u3(0.10923627,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1464333,-2.4231103,-3.115635) p0;
	u3(1.4879719,-2.2890101,1.6159242) p1;
}
gate su4_815 p0,p1 {
	u3(2.7308229,-1.9856437,1.6451273) p0;
	u3(2.0890687,-2.8147574,1.4783885) p1;
	cx p0,p1;
	u3(0.75283128,-pi/2,-pi/2) p0;
	u3(2.5599261,-1.1393603,-2.7743859) p1;
	cx p0,p1;
	u3(0.30142345,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.68447731,0.86449037,1.5905595) p0;
	u3(0.47721471,0.80724705,-1.5237088) p1;
}
gate su4_519 p0,p1 {
	u3(1.1173946,-1.3506544,1.6151137) p0;
	u3(1.162269,-2.6073017,1.7686051) p1;
	cx p0,p1;
	u3(0.67857506,-pi/2,-pi/2) p0;
	u3(2.4510294,-1.2017825,-2.8518574) p1;
	cx p0,p1;
	u3(0.20758591,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6436574,0.86078548,2.8904925) p0;
	u3(2.1547278,-2.0940738,1.7588048) p1;
}
gate su4_938 p0,p1 {
	u3(2.2628172,0.78002398,1.2955274) p0;
	u3(2.1754776,2.1262725,-0.54036584) p1;
	cx p0,p1;
	u3(0.48192694,-pi/2,-pi/2) p0;
	u3(2.625755,-1.0862792,-2.7122092) p1;
	cx p0,p1;
	u3(0.16775374,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.66453442,2.2660729,2.5036492) p0;
	u3(1.0742014,-0.34932163,-0.61716153) p1;
}
gate su4_368 p0,p1 {
	u3(2.1155967,2.6053825,-2.8167251) p0;
	u3(1.9979289,-0.1147633,1.7284666) p1;
	cx p0,p1;
	u3(0.93433893,-pi/2,-pi/2) p0;
	u3(2.8128691,-0.77892039,-2.3772262) p1;
	cx p0,p1;
	u3(0.19877238,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2933453,-1.6195002,-0.06438557) p0;
	u3(1.4372498,0.97935907,1.3082744) p1;
}
gate su4_996 p0,p1 {
	u3(2.6362735,2.5497705,0.015514516) p0;
	u3(0.95064332,-0.93810304,-2.182713) p1;
	cx p0,p1;
	u3(0.91335382,-pi/2,-pi/2) p0;
	u3(2.4375652,-1.2079418,-2.8598919) p1;
	cx p0,p1;
	u3(0.22471433,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2796125,-2.3810535,-1.5516019) p0;
	u3(1.9091566,-2.4141453,-0.29868718) p1;
}
gate su4_345 p0,p1 {
	u3(2.0589151,1.5182134,-0.8730205) p0;
	u3(1.0356243,-1.3572693,1.9058422) p1;
	cx p0,p1;
	u3(0.33429682,-pi/2,-pi/2) p0;
	u3(2.3424029,-1.2445077,-2.9098801) p1;
	cx p0,p1;
	u3(0.23614394,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9603244,-0.77487918,2.1225245) p0;
	u3(1.0923826,-1.1904015,0.76951802) p1;
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
gate su4_322 p0,p1 {
	u3(0.47179536,-1.7462525,2.2324886) p0;
	u3(1.3471143,2.0310842,-2.6328103) p1;
	cx p0,p1;
	u3(0.71120818,-pi/2,-pi/2) p0;
	u3(2.3150138,-1.2531555,-2.9224591) p1;
	cx p0,p1;
	u3(0.031585864,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1082024,-1.7899931,-0.0583161) p0;
	u3(1.9529762,2.683507,-1.1762293) p1;
}
gate su4_570 p0,p1 {
	u3(0.25000124,0.14832242,1.7075762) p0;
	u3(2.0237316,-2.6815339,2.5486235) p1;
	cx p0,p1;
	u3(0.7156177,-pi/2,-pi/2) p0;
	u3(2.6253655,-1.0866404,-2.7126245) p1;
	cx p0,p1;
	u3(0.30725562,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4183173,2.0009173,-1.1286388) p0;
	u3(1.9680058,1.2826377,-2.6501037) p1;
}
gate su4_227 p0,p1 {
	u3(1.421976,1.7519232,-1.8696517) p0;
	u3(2.4803229,2.026867,-1.1547339) p1;
	cx p0,p1;
	u3(0.92543196,-pi/2,-pi/2) p0;
	u3(2.795566,-0.82655724,-2.4277058) p1;
	cx p0,p1;
	u3(0.5111806,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6036031,-2.1775743,-2.7430981) p0;
	u3(2.3494401,2.8329653,-2.919083) p1;
}
gate su4_919 p0,p1 {
	u3(2.244477,2.665373,-2.2409888) p0;
	u3(2.2594801,-2.394005,-2.7506985) p1;
	cx p0,p1;
	u3(0.76300235,-pi/2,-pi/2) p0;
	u3(2.5360592,-1.1553031,-2.7936173) p1;
	cx p0,p1;
	u3(0.36347958,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2085119,-1.6378645,-0.11665281) p0;
	u3(2.1573548,-1.332198,-0.719537) p1;
}
gate su4_476 p0,p1 {
	u3(2.1122308,-0.042623244,0.61277682) p0;
	u3(1.0149664,-0.41416372,2.3486189) p1;
	cx p0,p1;
	u3(0.66043554,-pi/2,-pi/2) p0;
	u3(2.4558833,-1.1994917,-2.8488917) p1;
	cx p0,p1;
	u3(0.23993432,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.43567682,-2.4999527,0.42525178) p0;
	u3(0.53300012,-2.1070891,-0.61366677) p1;
}
gate su4_288 p0,p1 {
	u3(2.1180533,0.62172607,0.19715088) p0;
	u3(1.0487373,2.7399689,1.7508266) p1;
	cx p0,p1;
	u3(1.0537733,-pi/2,-pi/2) p0;
	u3(2.6848871,-1.022787,-2.6404301) p1;
	cx p0,p1;
	u3(0.039997167,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1436741,2.0252309,0.75829715) p0;
	u3(1.2734824,-2.6346849,0.79169422) p1;
}
gate su4_547 p0,p1 {
	u3(2.1279455,0.61047835,-1.8454827) p0;
	u3(1.2413374,-2.686911,-3.0893884) p1;
	cx p0,p1;
	u3(0.77376019,-pi/2,-pi/2) p0;
	u3(2.7904435,-0.83937116,-2.4413397) p1;
	cx p0,p1;
	u3(0.040606838,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0887766,2.3863623,-2.2415678) p0;
	u3(1.1212034,0.077179773,2.2864225) p1;
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
gate su4_885 p0,p1 {
	u3(1.678715,-0.43950644,-0.73251241) p0;
	u3(0.87952616,1.4719092,-1.1478227) p1;
	cx p0,p1;
	u3(0.50446027,-pi/2,-pi/2) p0;
	u3(2.7186596,-0.97668018,-2.589483) p1;
	cx p0,p1;
	u3(0.15215357,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7748195,2.7544429,-2.1557048) p0;
	u3(1.1774792,-0.84156236,2.9413086) p1;
}
gate su4_165 p0,p1 {
	u3(1.2709767,-1.8558549,0.76214517) p0;
	u3(1.5222598,-0.33410452,-2.9443284) p1;
	cx p0,p1;
	u3(0.99872407,-pi/2,-pi/2) p0;
	u3(2.7956978,-0.8262204,-2.4273478) p1;
	cx p0,p1;
	u3(0.32531429,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.97258515,-0.34154709,-1.521111) p0;
	u3(3.0307708,0.48979094,-2.2210232) p1;
}
gate su4_219 p0,p1 {
	u3(1.9663346,-1.2218974,-1.4170305) p0;
	u3(1.8650747,-0.97438032,0.67079877) p1;
	cx p0,p1;
	u3(0.71236193,-pi/2,-pi/2) p0;
	u3(2.7169487,-0.9792351,-2.5922858) p1;
	cx p0,p1;
	u3(0.13834744,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0928015,2.6510684,-1.7292128) p0;
	u3(1.18095,-1.9953712,2.6728747) p1;
}
gate su4_229 p0,p1 {
	u3(1.5214547,0.67159093,-1.6595319) p0;
	u3(1.982039,0.75212015,3.0029793) p1;
	cx p0,p1;
	u3(0.85834398,-pi/2,-pi/2) p0;
	u3(2.7544043,-0.91665533,-2.5241872) p1;
	cx p0,p1;
	u3(0.046777239,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.654262,-1.9765454,3.1325636) p0;
	u3(2.8142049,1.5715987,1.1004733) p1;
}
qreg q[10];
creg meas[10];
su4_901 q[2],q[4];
su4_593 q[2],q[4];
su4_985 q[0],q[5];
su4_751 q[6],q[3];
su4_778 q[5],q[3];
su4_730 q[8],q[1];
su4_889 q[1],q[0];
su4_872 q[5],q[0];
su4_944 q[7],q[9];
su4_278 q[7],q[6];
su4_369 q[6],q[3];
su4_726 q[0],q[6];
su4_265 q[7],q[1];
su4_743 q[5],q[7];
su4_904 q[8],q[9];
su4_15 q[4],q[8];
su4_393 q[4],q[3];
su4_181 q[0],q[4];
su4_220 q[8],q[1];
su4_167 q[7],q[1];
su4_447 q[8],q[5];
su4_586 q[8],q[0];
su4_926 q[9],q[2];
su4_232 q[9],q[2];
su4_559 q[2],q[6];
su4_925 q[2],q[1];
su4_479 q[1],q[0];
su4_274 q[3],q[9];
su4_870 q[6],q[4];
su4_863 q[6],q[4];
su4_733 q[7],q[3];
su4_815 q[2],q[7];
su4_519 q[2],q[1];
su4_938 q[9],q[5];
su4_368 q[3],q[9];
su4_996 q[4],q[9];
su4_345 q[7],q[3];
su4_423 q[7],q[3];
su4_322 q[7],q[3];
su4_570 q[8],q[5];
su4_227 q[6],q[5];
su4_919 q[4],q[6];
su4_476 q[5],q[2];
su4_288 q[5],q[2];
su4_547 q[8],q[0];
su4_961 q[1],q[0];
su4_885 q[1],q[6];
su4_165 q[9],q[8];
su4_219 q[8],q[4];
su4_229 q[9],q[0];
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
