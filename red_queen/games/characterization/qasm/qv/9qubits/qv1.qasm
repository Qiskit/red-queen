OPENQASM 2.0;
include "qelib1.inc";
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
gate su4_34 p0,p1 {
	u3(1.6226191,-2.1269516,-0.42594346) p0;
	u3(1.5273265,2.1630699,2.8940871) p1;
	cx p0,p1;
	u3(0.53628248,-pi/2,-pi/2) p0;
	u3(2.7027237,-0.99952473,-2.6146248) p1;
	cx p0,p1;
	u3(0.36216479,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2052134,-0.22601446,2.8475232) p0;
	u3(1.6063595,1.1710705,-1.2702926) p1;
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
gate su4_420 p0,p1 {
	u3(1.1366991,2.7639038,0.75974074) p0;
	u3(1.3868885,-2.098777,-2.6431434) p1;
	cx p0,p1;
	u3(0.86348313,-pi/2,-pi/2) p0;
	u3(2.6560669,-1.0560425,-2.6777466) p1;
	cx p0,p1;
	u3(0.02438051,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5991348,-0.18839343,-0.10867215) p0;
	u3(1.3323638,-2.7656668,1.8550199) p1;
}
gate su4_383 p0,p1 {
	u3(1.6133605,2.4900673,-2.0418238) p0;
	u3(2.0468793,2.6125107,1.0500071) p1;
	cx p0,p1;
	u3(1.2028591,-pi/2,-pi/2) p0;
	u3(2.581893,-1.1232716,-2.7552689) p1;
	cx p0,p1;
	u3(0.51867511,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4784187,-0.77735497,2.5701694) p0;
	u3(2.3240924,2.4112286,-2.4759322) p1;
}
gate su4_561 p0,p1 {
	u3(1.2528548,-2.8361763,-2.855719) p0;
	u3(1.1356588,1.5035894,2.3115506) p1;
	cx p0,p1;
	u3(0.84927149,-pi/2,-pi/2) p0;
	u3(2.53005,-1.1590886,-2.798231) p1;
	cx p0,p1;
	u3(0.56505442,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9777013,-0.13511397,0.48487073) p0;
	u3(1.5243625,-0.38290193,-1.8168769) p1;
}
gate su4_200 p0,p1 {
	u3(1.909919,-0.49771894,-2.2011427) p0;
	u3(1.2257657,-0.56240826,-0.61366034) p1;
	cx p0,p1;
	u3(0.41844369,-pi/2,-pi/2) p0;
	u3(2.7893161,-0.8421207,-2.4442685) p1;
	cx p0,p1;
	u3(0.070271833,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7832149,-1.1621312,-1.6331669) p0;
	u3(1.4661356,0.51036565,-1.9788717) p1;
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
gate su4_90 p0,p1 {
	u3(1.1146433,1.9043595,2.6145489) p0;
	u3(2.3071172,1.0698743,-0.74024657) p1;
	cx p0,p1;
	u3(0.6924392,-pi/2,-pi/2) p0;
	u3(2.572121,-1.1306081,-2.7639529) p1;
	cx p0,p1;
	u3(0.0097045675,1.9539925e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5967187,1.978118,3.1008062) p0;
	u3(1.6956752,2.5389681,-2.7445307) p1;
}
gate su4_338 p0,p1 {
	u3(2.4840799,-0.79902274,2.4265942) p0;
	u3(1.7003621,0.22708135,-2.0776572) p1;
	cx p0,p1;
	u3(0.66108988,-pi/2,-pi/2) p0;
	u3(2.5676226,-1.1338872,-2.7678522) p1;
	cx p0,p1;
	u3(0.41603283,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5742263,2.7361258,2.488868) p0;
	u3(2.3275319,-2.626926,2.0613052) p1;
}
gate su4_648 p0,p1 {
	u3(2.9003679,-2.1942224,1.7007567) p0;
	u3(2.395336,-2.6936647,-0.42542906) p1;
	cx p0,p1;
	u3(0.56590344,-pi/2,-pi/2) p0;
	u3(2.7927758,-0.83360311,-2.4351994) p1;
	cx p0,p1;
	u3(0.45126868,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.91511543,0.038434259,-2.304942) p0;
	u3(1.7783489,1.7760605,-2.4557799) p1;
}
gate su4_579 p0,p1 {
	u3(2.1282605,0.61617285,1.3433469) p0;
	u3(2.6233406,0.21977957,2.6515778) p1;
	cx p0,p1;
	u3(0.32671627,-pi/2,-pi/2) p0;
	u3(2.2020326,-1.2822127,-2.9681564) p1;
	cx p0,p1;
	u3(0.059422349,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2203028,1.0441389,-0.38469255) p0;
	u3(2.8398151,-2.450498,0.23686316) p1;
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
gate su4_880 p0,p1 {
	u3(1.7151177,1.0485188,1.4472121) p0;
	u3(1.7737844,2.7949535,-1.9682401) p1;
	cx p0,p1;
	u3(0.70450179,-pi/2,-pi/2) p0;
	u3(2.6666654,-1.044377,-2.6645935) p1;
	cx p0,p1;
	u3(0.49948723,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3224751,1.7748703,-1.7251747) p0;
	u3(1.7647393,1.9715725,1.8905012) p1;
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
gate su4_461 p0,p1 {
	u3(2.7150074,-0.23883538,-2.9138342) p0;
	u3(2.6088902,1.7284617,-0.63017416) p1;
	cx p0,p1;
	u3(0.79360817,-pi/2,-pi/2) p0;
	u3(2.4955549,-1.179235,-2.8231378) p1;
	cx p0,p1;
	u3(0.50353614,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7874766,2.9151256,-2.0356617) p0;
	u3(2.344353,-1.383389,-1.5682868) p1;
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
gate su4_728 p0,p1 {
	u3(2.1367747,-2.62325,1.8697074) p0;
	u3(1.3575782,-0.99742005,-1.498148) p1;
	cx p0,p1;
	u3(0.31566257,-pi/2,-pi/2) p0;
	u3(2.7006463,-1.002353,-2.6177507) p1;
	cx p0,p1;
	u3(0.12044251,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.81835165,1.4438355,-0.67421572) p0;
	u3(0.3234131,-2.1016282,-0.35538845) p1;
}
gate su4_395 p0,p1 {
	u3(2.3983221,-2.6035347,3.0919784) p0;
	u3(2.6100282,0.74856979,-0.050276771) p1;
	cx p0,p1;
	u3(0.7622491,-pi/2,-pi/2) p0;
	u3(2.3961918,-1.2252237,-2.8829694) p1;
	cx p0,p1;
	u3(0.41031045,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.71114424,-2.6505605,2.0754854) p0;
	u3(0.70011844,1.0694661,-1.4882402) p1;
}
gate su4_695 p0,p1 {
	u3(0.69962177,-2.3579052,-1.4015662) p0;
	u3(1.3580664,1.9202591,1.5444797) p1;
	cx p0,p1;
	u3(0.87190051,-pi/2,-pi/2) p0;
	u3(2.5040369,-1.1745176,-2.8172486) p1;
	cx p0,p1;
	u3(0.088338714,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1022785,-0.93000678,3.0314385) p0;
	u3(1.4365169,-1.3689755,0.011470915) p1;
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
gate su4_171 p0,p1 {
	u3(1.8920857,-1.1040788,2.1445757) p0;
	u3(2.0237317,-3.0534536,-2.7431131) p1;
	cx p0,p1;
	u3(0.60208359,-pi/2,-pi/2) p0;
	u3(2.5582446,-1.1405335,-2.7757908) p1;
	cx p0,p1;
	u3(0.093885664,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.86779212,-2.878535,-2.7724988) p0;
	u3(0.47023192,0.62247426,-1.2261802) p1;
}
gate su4_225 p0,p1 {
	u3(1.591919,-1.5063222,1.232021) p0;
	u3(1.5751362,2.5749902,1.3167724) p1;
	cx p0,p1;
	u3(0.46567436,-pi/2,-pi/2) p0;
	u3(2.6162824,-1.0948853,-2.7221293) p1;
	cx p0,p1;
	u3(0.038948989,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5007903,0.65867847,1.5025222) p0;
	u3(2.1084252,1.8970219,-1.0554783) p1;
}
gate su4_316 p0,p1 {
	u3(2.221462,1.4214598,2.1790412) p0;
	u3(1.7883438,-0.97498582,-1.2039551) p1;
	cx p0,p1;
	u3(0.85785944,-pi/2,-pi/2) p0;
	u3(2.5714467,-1.1311035,-2.7645413) p1;
	cx p0,p1;
	u3(0.50025744,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0737353,-0.66667793,1.0709721) p0;
	u3(0.51670952,2.9608877,-2.4417105) p1;
}
gate su4_603 p0,p1 {
	u3(2.2873272,1.3358368,-3.0361161) p0;
	u3(1.318445,2.9627739,1.4801587) p1;
	cx p0,p1;
	u3(0.61163706,-pi/2,-pi/2) p0;
	u3(2.6863786,-1.0209268,-2.6383582) p1;
	cx p0,p1;
	u3(0.16607367,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.98981376,1.7962469,2.9561882) p0;
	u3(1.2817777,-2.5286834,3.0563785) p1;
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
gate su4_974 p0,p1 {
	u3(2.1462095,-2.1974417,-3.0578176) p0;
	u3(2.8010125,1.2709406,-1.2426936) p1;
	cx p0,p1;
	u3(1.0557496,-pi/2,-pi/2) p0;
	u3(2.7267544,-0.96423304,-2.575858) p1;
	cx p0,p1;
	u3(0.18043201,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4381441,3.0800342,-1.0248995) p0;
	u3(0.83236579,1.5306086,1.8241056) p1;
}
gate su4_898 p0,p1 {
	u3(2.0824911,2.6055534,0.41223469) p0;
	u3(0.99945608,-1.9895101,-3.0817449) p1;
	cx p0,p1;
	u3(0.69088622,-pi/2,-pi/2) p0;
	u3(2.6627644,-1.0487428,-2.6695075) p1;
	cx p0,p1;
	u3(0.13065285,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4025672,0.75894603,-1.5548245) p0;
	u3(1.5192776,2.6058364,1.9420875) p1;
}
gate su4_257 p0,p1 {
	u3(0.50025809,2.538721,-2.7194736) p0;
	u3(1.6336723,0.12937457,-1.9650657) p1;
	cx p0,p1;
	u3(1.0523357,-pi/2,-pi/2) p0;
	u3(2.7330458,-0.95412796,-2.5648317) p1;
	cx p0,p1;
	u3(0.54729324,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8974581,-0.88944018,0.6161811) p0;
	u3(2.2985355,0.98699763,-1.5663913) p1;
}
gate su4_530 p0,p1 {
	u3(2.004439,-3.0934069,2.5769073) p0;
	u3(2.7978759,0.50081125,2.8754626) p1;
	cx p0,p1;
	u3(0.98379607,-pi/2,-pi/2) p0;
	u3(2.6122002,-1.0984824,-2.7262918) p1;
	cx p0,p1;
	u3(0.4140897,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0999998,-2.4083707,-2.2957593) p0;
	u3(2.6518484,-1.5311418,-1.1842627) p1;
}
gate su4_937 p0,p1 {
	u3(2.6148058,-0.016064247,1.0245472) p0;
	u3(1.0807236,1.7326771,2.7333456) p1;
	cx p0,p1;
	u3(0.70035052,-pi/2,-pi/2) p0;
	u3(2.6677,-1.0432047,-2.6632757) p1;
	cx p0,p1;
	u3(0.23315292,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1522156,-1.335877,2.7545334) p0;
	u3(2.1488845,-2.5274635,-1.7592186) p1;
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
gate su4_705 p0,p1 {
	u3(2.1068627,-0.66163092,0.10309382) p0;
	u3(0.67354485,2.6806041,-0.82860541) p1;
	cx p0,p1;
	u3(0.73279643,-pi/2,-pi/2) p0;
	u3(2.6389952,-1.0736045,-2.6976931) p1;
	cx p0,p1;
	u3(0.14951599,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6156575,0.94966218,-2.7056292) p0;
	u3(2.3134754,2.3353371,0.96656036) p1;
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
qreg q[9];
creg meas[9];
su4_730 q[5],q[1];
su4_34 q[6],q[0];
su4_743 q[4],q[7];
su4_420 q[4],q[6];
su4_383 q[5],q[7];
su4_561 q[0],q[5];
su4_200 q[6],q[4];
su4_704 q[8],q[3];
su4_12 q[1],q[8];
su4_90 q[3],q[2];
su4_338 q[1],q[2];
su4_648 q[1],q[6];
su4_579 q[4],q[3];
su4_866 q[3],q[4];
su4_880 q[8],q[7];
su4_777 q[2],q[8];
su4_461 q[7],q[0];
su4_901 q[0],q[1];
su4_728 q[0],q[4];
su4_395 q[1],q[5];
su4_695 q[7],q[2];
su4_843 q[8],q[6];
su4_171 q[3],q[8];
su4_225 q[3],q[1];
su4_316 q[5],q[8];
su4_603 q[6],q[2];
su4_15 q[2],q[0];
su4_974 q[2],q[8];
su4_898 q[6],q[4];
su4_257 q[3],q[4];
su4_743 q[4],q[2];
su4_530 q[5],q[6];
su4_937 q[6],q[0];
su4_460 q[7],q[1];
su4_705 q[3],q[1];
su4_271 q[5],q[7];
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
