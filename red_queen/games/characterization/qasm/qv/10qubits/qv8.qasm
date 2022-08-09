OPENQASM 2.0;
include "qelib1.inc";
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
gate su4_321 p0,p1 {
	u3(1.9239784,3.0824135,-0.75065674) p0;
	u3(0.13741451,-2.3105408,1.9035471) p1;
	cx p0,p1;
	u3(0.45701406,-pi/2,-pi/2) p0;
	u3(2.8099087,-0.78759449,-2.3863956) p1;
	cx p0,p1;
	u3(0.236799,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7546991,-0.8640585,-1.4870939) p0;
	u3(1.8171238,2.6871503,-1.6674771) p1;
}
gate su4_147 p0,p1 {
	u3(2.590367,-1.5719373,0.57254729) p0;
	u3(0.57429077,-2.595636,1.5889267) p1;
	cx p0,p1;
	u3(0.80599198,-pi/2,-pi/2) p0;
	u3(2.5277263,-1.1605292,-2.799992) p1;
	cx p0,p1;
	u3(0.15257595,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.80992876,-0.75945484,-3.0518207) p0;
	u3(1.3407923,-2.6355771,0.74772978) p1;
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
gate su4_604 p0,p1 {
	u3(1.6995872,2.9881229,-0.78536723) p0;
	u3(1.5540044,-1.274291,0.41789828) p1;
	cx p0,p1;
	u3(0.63757884,-pi/2,-pi/2) p0;
	u3(2.7939408,-0.83068099,-2.4320907) p1;
	cx p0,p1;
	u3(0.0084298323,2.220446e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.40337328,2.5342723,-0.90583828) p0;
	u3(2.4472485,0.18606625,1.7482297) p1;
}
gate su4_375 p0,p1 {
	u3(2.4215669,-0.28070319,1.1931336) p0;
	u3(1.4699073,1.5477149,-0.17158543) p1;
	cx p0,p1;
	u3(0.64104141,-pi/2,-pi/2) p0;
	u3(2.0569446,-1.3079185,-3.0165165) p1;
	cx p0,p1;
	u3(0.064316288,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.86496442,-0.2965661,-2.6851563) p0;
	u3(1.8322268,3.1342727,2.7392806) p1;
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
gate su4_73 p0,p1 {
	u3(0.92102153,-2.5586909,-2.1753412) p0;
	u3(1.7726243,-0.077111899,2.5315638) p1;
	cx p0,p1;
	u3(0.51726215,-pi/2,-pi/2) p0;
	u3(2.6980617,-1.0058263,-2.6215937) p1;
	cx p0,p1;
	u3(0.139381,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0445707,-1.1430967,0.52598175) p0;
	u3(2.1184287,2.5964164,1.8259335) p1;
}
gate su4_286 p0,p1 {
	u3(1.1739313,-1.2138893,1.1282723) p0;
	u3(2.0082599,1.706919,-1.9619909) p1;
	cx p0,p1;
	u3(0.99577651,-pi/2,-pi/2) p0;
	u3(2.7892847,-0.84219712,-2.4443499) p1;
	cx p0,p1;
	u3(0.54599439,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0798415,-3.0924047,-1.5394062) p0;
	u3(3.0500161,-2.1863724,-2.3579609) p1;
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
gate su4_239 p0,p1 {
	u3(1.2867594,-0.26188702,0.59013431) p0;
	u3(1.5856562,0.20389373,0.045683649) p1;
	cx p0,p1;
	u3(0.99834139,-pi/2,-pi/2) p0;
	u3(2.6407711,-1.0718438,-2.695685) p1;
	cx p0,p1;
	u3(0.28866272,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4105134,-2.4159284,-0.15536424) p0;
	u3(2.6206313,-2.1801583,-1.3116745) p1;
}
gate su4_787 p0,p1 {
	u3(1.1389631,-0.4067305,-1.4333339) p0;
	u3(1.9266549,-3.084822,-1.206193) p1;
	cx p0,p1;
	u3(0.88540639,-pi/2,-pi/2) p0;
	u3(2.7384445,-0.94513646,-2.5550453) p1;
	cx p0,p1;
	u3(0.46906535,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9271121,-1.0678283,2.0333309) p0;
	u3(1.3777589,-1.6285396,-0.66950706) p1;
}
gate su4_595 p0,p1 {
	u3(0.088640502,-1.4991065,1.9977105) p0;
	u3(1.7290484,-2.7971781,3.0825076) p1;
	cx p0,p1;
	u3(0.72824553,-pi/2,-pi/2) p0;
	u3(2.5283702,-1.1601313,-2.7995052) p1;
	cx p0,p1;
	u3(0.16882676,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5147569,-2.196875,1.0754179) p0;
	u3(0.33076219,2.8339666,2.8318178) p1;
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
gate su4_853 p0,p1 {
	u3(0.94693075,1.1668377,-1.3013905) p0;
	u3(1.854716,-2.7008165,2.6120579) p1;
	cx p0,p1;
	u3(1.3511787,-pi/2,-pi/2) p0;
	u3(2.7925173,-0.83424796,-2.4358856) p1;
	cx p0,p1;
	u3(0.24624553,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.77394644,2.1244834,-0.177722) p0;
	u3(2.1140613,0.85917161,1.7611529) p1;
}
gate su4_785 p0,p1 {
	u3(0.93136201,1.8606624,-0.81404511) p0;
	u3(0.97551978,1.8825647,-2.7420768) p1;
	cx p0,p1;
	u3(0.6196243,-pi/2,-pi/2) p0;
	u3(2.5481135,-1.1474383,-2.7840915) p1;
	cx p0,p1;
	u3(0.12417203,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.888999,-0.3788947,-2.541292) p0;
	u3(1.4882563,-2.6610502,0.72751644) p1;
}
gate su4_984 p0,p1 {
	u3(1.9306044,2.550788,-0.90166533) p0;
	u3(1.4404274,-0.28396128,-0.25297223) p1;
	cx p0,p1;
	u3(1.202772,-pi/2,-pi/2) p0;
	u3(2.5336767,-1.1568144,-2.7954569) p1;
	cx p0,p1;
	u3(0.044269153,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.68386629,0.2739714,2.4221064) p0;
	u3(2.20045,1.7310703,-2.9751804) p1;
}
gate su4_124 p0,p1 {
	u3(0.9971075,2.9939963,0.072623911) p0;
	u3(2.0804692,1.5104214,2.2790336) p1;
	cx p0,p1;
	u3(0.71612817,-pi/2,-pi/2) p0;
	u3(2.7917947,-0.83604289,-2.437796) p1;
	cx p0,p1;
	u3(0.2322373,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5004361,1.6657935,-1.3261032) p0;
	u3(1.232096,-0.096373832,0.1561114) p1;
}
gate su4_508 p0,p1 {
	u3(2.4502703,-0.55349773,0.072642294) p0;
	u3(2.0246792,-3.1080334,-2.325481) p1;
	cx p0,p1;
	u3(1.0464188,-pi/2,-pi/2) p0;
	u3(2.7280953,-0.96211183,-2.5735409) p1;
	cx p0,p1;
	u3(0.12810704,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6337337,2.7014011,0.4841745) p0;
	u3(1.1539957,3.0046167,-0.24423219) p1;
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
gate su4_371 p0,p1 {
	u3(1.4760606,-1.5318339,-2.0650635) p0;
	u3(1.4177676,1.2265019,1.5114794) p1;
	cx p0,p1;
	u3(0.94760885,-pi/2,-pi/2) p0;
	u3(2.6417825,-1.0708345,-2.6945346) p1;
	cx p0,p1;
	u3(0.04826774,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4238865,-2.083492,-2.269742) p0;
	u3(0.6585333,0.75013458,0.60053622) p1;
}
gate su4_262 p0,p1 {
	u3(0.14487656,-1.7424175,2.3917891) p0;
	u3(2.0666611,-0.52699519,-0.87771435) p1;
	cx p0,p1;
	u3(0.84029545,-pi/2,-pi/2) p0;
	u3(2.473091,-1.1910527,-2.8380644) p1;
	cx p0,p1;
	u3(0.32143327,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4405363,-1.2017234,0.025971246) p0;
	u3(1.0547674,1.5924636,-1.6825053) p1;
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
gate su4_399 p0,p1 {
	u3(2.089641,-0.039905329,2.7542898) p0;
	u3(1.5347693,-2.9464007,1.0154284) p1;
	cx p0,p1;
	u3(0.86429355,-pi/2,-pi/2) p0;
	u3(2.5239352,-1.1628524,-2.8028378) p1;
	cx p0,p1;
	u3(0.20509732,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.68358131,3.1349103,-1.9330821) p0;
	u3(0.59067869,-1.6411651,-2.6401735) p1;
}
gate su4_460 p0,p1 {
	u3(0.66967391,-0.35783559,2.3912197) p0;
	u3(2.3273057,2.8170545,-0.56814573) p1;
	cx p0,p1;
	u3(0.75193504,-pi/2,-pi/2) p0;
	u3(2.5806155,-1.1242477,-2.7564212) p1;
	cx p0,p1;
	u3(0.2785951,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6835755,2.7481713,-2.9260993) p0;
	u3(0.70402288,-0.38007031,0.62492501) p1;
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
gate su4_400 p0,p1 {
	u3(1.3175175,2.4156159,-1.7890563) p0;
	u3(1.974171,-1.7329138,-0.69164719) p1;
	cx p0,p1;
	u3(0.7820009,-pi/2,-pi/2) p0;
	u3(2.616631,-1.0945751,-2.7217708) p1;
	cx p0,p1;
	u3(0.021866382,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9334578,0.94794283,1.3630164) p0;
	u3(0.96285509,-0.28974046,1.5464059) p1;
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
gate su4_308 p0,p1 {
	u3(1.5510772,2.3710411,-2.3329719) p0;
	u3(1.9771323,0.70541252,-0.89229049) p1;
	cx p0,p1;
	u3(0.45194684,-pi/2,-pi/2) p0;
	u3(2.4008542,-1.2233914,-2.8804812) p1;
	cx p0,p1;
	u3(0.30223355,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6026862,0.051249691,1.8653279) p0;
	u3(2.2148,1.2330681,-1.39355) p1;
}
gate su4_660 p0,p1 {
	u3(2.251757,-1.0292841,-0.09104038) p0;
	u3(1.300479,-0.50875706,1.4929636) p1;
	cx p0,p1;
	u3(0.5777173,-pi/2,-pi/2) p0;
	u3(2.6042206,-1.1053282,-2.7342419) p1;
	cx p0,p1;
	u3(0.56040641,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.752406,-2.1113668,0.26016262) p0;
	u3(1.590022,-1.567341,2.216858) p1;
}
gate su4_363 p0,p1 {
	u3(2.9200157,-1.0557856,2.642267) p0;
	u3(0.50992082,1.8865748,3.0129371) p1;
	cx p0,p1;
	u3(0.67128178,-pi/2,-pi/2) p0;
	u3(2.6359167,-1.0766216,-2.7011389) p1;
	cx p0,p1;
	u3(0.10864154,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1831357,-0.36074141,2.2626394) p0;
	u3(2.6786013,0.53590282,-2.7742394) p1;
}
gate su4_376 p0,p1 {
	u3(2.740572,-1.3364603,-2.4326332) p0;
	u3(0.41227686,2.9335305,-2.8385225) p1;
	cx p0,p1;
	u3(0.95351383,-pi/2,-pi/2) p0;
	u3(2.7402897,-0.94199245,-2.5516286) p1;
	cx p0,p1;
	u3(0.15571446,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6434681,-0.64413044,-2.5247456) p0;
	u3(0.84585868,-3.0051037,1.205508) p1;
}
gate su4_769 p0,p1 {
	u3(0.33157718,2.2532207,0.069806348) p0;
	u3(1.247217,-2.2925599,1.958509) p1;
	cx p0,p1;
	u3(1.2201443,-pi/2,-pi/2) p0;
	u3(2.8099888,-0.78736292,-2.3861507) p1;
	cx p0,p1;
	u3(0.63818588,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4867668,2.8105569,0.062145628) p0;
	u3(1.2244488,-1.6584365,0.44216934) p1;
}
gate su4_463 p0,p1 {
	u3(2.2520877,0.63330829,-0.0023388619) p0;
	u3(2.5292064,-2.1914088,-0.047436039) p1;
	cx p0,p1;
	u3(1.0310087,-pi/2,-pi/2) p0;
	u3(2.4791768,-1.1879441,-2.8341127) p1;
	cx p0,p1;
	u3(0.56384174,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3414619,1.8531576,2.0585412) p0;
	u3(1.9254273,-2.7103753,-1.3603932) p1;
}
gate su4_793 p0,p1 {
	u3(1.3473014,-2.0619331,-1.4749097) p0;
	u3(0.94572299,0.074733772,-0.70896235) p1;
	cx p0,p1;
	u3(0.67507765,-pi/2,-pi/2) p0;
	u3(2.678761,-1.0302749,-2.6487857) p1;
	cx p0,p1;
	u3(0.61407971,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.633469,-2.4442926,0.27642465) p0;
	u3(2.3281847,1.882359,-1.7462214) p1;
}
gate su4_390 p0,p1 {
	u3(2.2484239,2.498342,0.75608891) p0;
	u3(0.50575712,-0.40038701,1.9636995) p1;
	cx p0,p1;
	u3(0.61895795,-pi/2,-pi/2) p0;
	u3(2.6682439,-1.0425859,-2.6625803) p1;
	cx p0,p1;
	u3(0.1074433,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3359888,-2.6782716,0.37699545) p0;
	u3(1.1858379,1.9298529,-0.72854999) p1;
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
gate su4_549 p0,p1 {
	u3(2.9792906,-0.59928726,0.33862103) p0;
	u3(1.3389925,-1.7094963,2.2821213) p1;
	cx p0,p1;
	u3(0.85030477,-pi/2,-pi/2) p0;
	u3(2.6965104,-1.0078872,-2.6238762) p1;
	cx p0,p1;
	u3(0.14327336,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3686742,1.9507505,1.5695658) p0;
	u3(1.8387886,-2.4264332,0.4784308) p1;
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
gate su4_647 p0,p1 {
	u3(3.0856761,-1.3821027,1.6826755) p0;
	u3(0.44076025,0.60884525,-0.51168267) p1;
	cx p0,p1;
	u3(0.89434426,-pi/2,-pi/2) p0;
	u3(2.4610436,-1.1970139,-2.8456969) p1;
	cx p0,p1;
	u3(0.73700983,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9637089,0.69701364,1.5309408) p0;
	u3(1.6933408,-0.71089703,-0.38987678) p1;
}
qreg q[10];
creg meas[10];
su4_346 q[4],q[1];
su4_775 q[5],q[2];
su4_389 q[4],q[5];
su4_321 q[7],q[6];
su4_147 q[6],q[2];
su4_815 q[0],q[8];
su4_604 q[1],q[0];
su4_375 q[1],q[2];
su4_226 q[3],q[9];
su4_73 q[7],q[9];
su4_286 q[4],q[9];
su4_791 q[2],q[4];
su4_207 q[7],q[6];
su4_911 q[6],q[1];
su4_205 q[1],q[4];
su4_331 q[8],q[3];
su4_239 q[3],q[5];
su4_787 q[8],q[0];
su4_595 q[5],q[0];
su4_602 q[8],q[3];
su4_79 q[0],q[3];
su4_687 q[0],q[4];
su4_853 q[4],q[0];
su4_785 q[8],q[5];
su4_984 q[1],q[8];
su4_124 q[9],q[7];
su4_508 q[6],q[7];
su4_944 q[7],q[3];
su4_371 q[9],q[2];
su4_262 q[5],q[2];
su4_176 q[2],q[7];
su4_399 q[0],q[2];
su4_460 q[5],q[1];
su4_604 q[4],q[5];
su4_582 q[0],q[5];
su4_400 q[6],q[9];
su4_975 q[3],q[6];
su4_308 q[1],q[6];
su4_660 q[1],q[6];
su4_363 q[6],q[1];
su4_376 q[9],q[8];
su4_769 q[7],q[9];
su4_463 q[2],q[9];
su4_793 q[5],q[9];
su4_390 q[8],q[3];
su4_806 q[4],q[8];
su4_549 q[0],q[4];
su4_764 q[7],q[3];
su4_6 q[2],q[7];
su4_647 q[8],q[3];
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
