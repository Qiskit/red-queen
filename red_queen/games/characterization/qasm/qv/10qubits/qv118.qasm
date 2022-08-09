OPENQASM 2.0;
include "qelib1.inc";
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
gate su4_17 p0,p1 {
	u3(2.3693534,-1.6935784,-1.9190366) p0;
	u3(2.7541815,-0.63809827,0.89148918) p1;
	cx p0,p1;
	u3(1.1503782,-pi/2,-pi/2) p0;
	u3(2.7880637,-0.84514647,-2.447493) p1;
	cx p0,p1;
	u3(0.23739871,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1981627,-1.172293,-1.3287954) p0;
	u3(1.6752848,0.061468265,-2.4981432) p1;
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
gate su4_749 p0,p1 {
	u3(0.58767241,2.6446712,1.7026787) p0;
	u3(0.97408709,1.6783938,-0.8349338) p1;
	cx p0,p1;
	u3(0.54707762,-pi/2,-pi/2) p0;
	u3(2.6923541,-1.0133233,-2.629905) p1;
	cx p0,p1;
	u3(0.21592272,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6654502,2.4094685,1.7718185) p0;
	u3(2.7035213,3.0580775,-1.4476755) p1;
}
gate su4_643 p0,p1 {
	u3(2.6897842,2.4244675,-3.0479905) p0;
	u3(0.70385215,1.3782956,0.23324621) p1;
	cx p0,p1;
	u3(0.47975497,-pi/2,-pi/2) p0;
	u3(2.4601781,-1.1974325,-2.8462358) p1;
	cx p0,p1;
	u3(0.17899511,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0683443,-0.39654905,-2.6665509) p0;
	u3(2.1461984,2.3659714,-2.5704028) p1;
}
gate su4_891 p0,p1 {
	u3(2.3318893,0.12882598,2.470651) p0;
	u3(2.6594587,0.75289009,-0.59928944) p1;
	cx p0,p1;
	u3(1.2587789,-pi/2,-pi/2) p0;
	u3(2.688263,-1.0185554,-2.6357192) p1;
	cx p0,p1;
	u3(0.15781923,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.89927404,2.5667406,-1.716194) p0;
	u3(1.4336149,2.6408451,0.80811831) p1;
}
gate su4_877 p0,p1 {
	u3(0.58636369,-2.5071126,2.1359481) p0;
	u3(2.0648675,-0.77804807,1.2625785) p1;
	cx p0,p1;
	u3(0.65451703,-pi/2,-pi/2) p0;
	u3(2.5414705,-1.1518182,-2.7893867) p1;
	cx p0,p1;
	u3(0.11652014,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1188364,0.84522574,-1.2695605) p0;
	u3(2.3028343,1.3376108,0.16520218) p1;
}
gate su4_614 p0,p1 {
	u3(1.2021317,-2.470376,0.28492635) p0;
	u3(1.0470201,-1.4449603,-2.2436125) p1;
	cx p0,p1;
	u3(0.83516464,-pi/2,-pi/2) p0;
	u3(2.6531772,-1.0591182,-2.6812268) p1;
	cx p0,p1;
	u3(0.070513909,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5732341,-0.69555725,-2.1769649) p0;
	u3(1.6032984,-2.7185105,-1.380922) p1;
}
gate su4_98 p0,p1 {
	u3(1.6256022,-1.2572429,-0.87831126) p0;
	u3(2.9473643,-1.0212116,-0.97094381) p1;
	cx p0,p1;
	u3(0.43873952,-pi/2,-pi/2) p0;
	u3(2.8115957,-0.7826802,-2.3811995) p1;
	cx p0,p1;
	u3(0.28067596,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1133287,0.096126923,-3.0802189) p0;
	u3(1.2223164,-3.1394054,-2.316082) p1;
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
gate su4_8 p0,p1 {
	u3(0.99029692,2.1806829,-0.945008) p0;
	u3(2.3887015,-0.85474684,1.6763632) p1;
	cx p0,p1;
	u3(0.80681945,-pi/2,-pi/2) p0;
	u3(2.3688561,-1.2354322,-2.8970393) p1;
	cx p0,p1;
	u3(0.27421822,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7208844,-2.2666591,-0.98107423) p0;
	u3(2.3817867,-2.5737045,-2.7719743) p1;
}
gate su4_481 p0,p1 {
	u3(1.0521273,-1.1648594,-2.61272) p0;
	u3(1.245659,-0.085469263,-0.37007315) p1;
	cx p0,p1;
	u3(0.50956251,-pi/2,-pi/2) p0;
	u3(2.8010566,-0.81220641,-2.4124659) p1;
	cx p0,p1;
	u3(0.13534685,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.27751483,-0.38087853,0.43212849) p0;
	u3(1.66317,2.1075027,-1.3031611) p1;
}
gate su4_523 p0,p1 {
	u3(1.0231025,1.851842,1.2822786) p0;
	u3(1.228942,2.8909321,1.403174) p1;
	cx p0,p1;
	u3(1.115566,-pi/2,-pi/2) p0;
	u3(2.7482363,-0.92801724,-2.5364728) p1;
	cx p0,p1;
	u3(0.0039571871,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2810524,-0.19293161,-2.1521167) p0;
	u3(1.2398511,-2.4370258,-0.20574089) p1;
}
gate su4_844 p0,p1 {
	u3(1.659385,0.58900431,-0.83080673) p0;
	u3(1.8161421,-0.09447441,2.3608943) p1;
	cx p0,p1;
	u3(1.0127275,-pi/2,-pi/2) p0;
	u3(2.6306423,-1.0816911,-2.7069421) p1;
	cx p0,p1;
	u3(0.27321548,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0422268,-2.4348942,-2.1061174) p0;
	u3(1.0995271,-1.1942096,1.8666888) p1;
}
gate su4_458 p0,p1 {
	u3(1.6708255,-1.4752854,0.60599704) p0;
	u3(1.7579024,-1.4988191,1.8013265) p1;
	cx p0,p1;
	u3(0.66868616,-pi/2,-pi/2) p0;
	u3(2.6863623,-1.0209473,-2.6383811) p1;
	cx p0,p1;
	u3(0.22044763,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4068218,0.99147681,-1.2977294) p0;
	u3(1.0251583,-2.868699,2.2435446) p1;
}
gate su4_92 p0,p1 {
	u3(1.113338,-1.3027737,0.65335139) p0;
	u3(0.78054837,-2.9993312,0.68539455) p1;
	cx p0,p1;
	u3(0.2438422,-pi/2,-pi/2) p0;
	u3(2.8138795,-0.77590532,-2.3740411) p1;
	cx p0,p1;
	u3(0.18671161,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3793009,0.35575502,2.3835662) p0;
	u3(0.43357533,1.6797607,-3.1270155) p1;
}
gate su4_355 p0,p1 {
	u3(2.4101022,-1.1729204,0.4883898) p0;
	u3(1.2524395,-2.985878,1.5960295) p1;
	cx p0,p1;
	u3(0.63327874,-pi/2,-pi/2) p0;
	u3(2.4076677,-1.2206634,-2.876796) p1;
	cx p0,p1;
	u3(0.28915089,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6939361,1.4011924,2.937466) p0;
	u3(2.3565592,2.2508776,2.0718059) p1;
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
gate su4_949 p0,p1 {
	u3(1.4773802,-1.7963537,-2.1516446) p0;
	u3(1.1055552,-1.6401762,1.4063261) p1;
	cx p0,p1;
	u3(1.013094,-pi/2,-pi/2) p0;
	u3(2.7964964,-0.82417173,-2.4251704) p1;
	cx p0,p1;
	u3(0.25847296,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8633111,-1.1108618,0.24495919) p0;
	u3(1.9984971,0.74690532,-0.115035) p1;
}
gate su4_238 p0,p1 {
	u3(2.8369027,-1.3729303,-2.3352475) p0;
	u3(1.6321781,-2.9858587,-1.8562136) p1;
	cx p0,p1;
	u3(1.0953665,-pi/2,-pi/2) p0;
	u3(2.5324954,-1.1575586,-2.796364) p1;
	cx p0,p1;
	u3(0.41950423,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0322416,-1.2559475,-2.0757375) p0;
	u3(2.0239168,1.1382561,-2.5042535) p1;
}
gate su4_528 p0,p1 {
	u3(1.7555568,0.54260538,-2.39507) p0;
	u3(0.48912729,2.4687294,-0.7753124) p1;
	cx p0,p1;
	u3(0.71977535,-pi/2,-pi/2) p0;
	u3(2.8118966,-0.78179556,-2.3802645) p1;
	cx p0,p1;
	u3(0.20198167,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8175039,1.619796,0.96540247) p0;
	u3(2.0880235,-1.1151294,-1.8135021) p1;
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
gate su4_213 p0,p1 {
	u3(2.0196622,-0.73834217,0.7624376) p0;
	u3(1.8111069,1.6371192,2.2075369) p1;
	cx p0,p1;
	u3(0.93298124,-pi/2,-pi/2) p0;
	u3(2.7345829,-0.95159882,-2.5620766) p1;
	cx p0,p1;
	u3(0.21634453,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.28281877,-0.37563604,-0.85460304) p0;
	u3(1.4839814,2.4148058,1.750871) p1;
}
gate su4_832 p0,p1 {
	u3(1.1869713,1.9925097,0.6347066) p0;
	u3(2.3129242,1.2716842,1.3955474) p1;
	cx p0,p1;
	u3(0.5781245,-pi/2,-pi/2) p0;
	u3(2.5728352,-1.1300819,-2.7633283) p1;
	cx p0,p1;
	u3(0.11590792,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.53264037,0.36515301,1.5189207) p0;
	u3(1.914108,1.8239649,-0.9556024) p1;
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
gate su4_753 p0,p1 {
	u3(2.7660477,-1.9456102,-2.3839559) p0;
	u3(1.6762058,2.5060075,2.546747) p1;
	cx p0,p1;
	u3(1.0065897,-pi/2,-pi/2) p0;
	u3(2.5519507,-1.1448558,-2.7809803) p1;
	cx p0,p1;
	u3(0.24324001,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.78621076,-1.9365435,0.19691905) p0;
	u3(1.2880343,3.0420647,2.0902449) p1;
}
gate su4_731 p0,p1 {
	u3(2.2199785,2.1364361,-0.53744791) p0;
	u3(1.8000889,-0.28501669,-0.87852942) p1;
	cx p0,p1;
	u3(1.271746,-pi/2,-pi/2) p0;
	u3(2.6599809,-1.0518061,-2.6729616) p1;
	cx p0,p1;
	u3(0.45047329,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9557035,1.4304414,-0.62664499) p0;
	u3(1.2798301,2.0406171,-0.54569348) p1;
}
gate su4_767 p0,p1 {
	u3(1.527003,1.2124158,-2.0552436) p0;
	u3(2.0555265,-1.4563258,2.644018) p1;
	cx p0,p1;
	u3(0.95163443,-pi/2,-pi/2) p0;
	u3(2.5486315,-1.147092,-2.7836738) p1;
	cx p0,p1;
	u3(0.44158621,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5274709,2.613431,-2.7190335) p0;
	u3(2.0284408,-1.7822515,-2.0237639) p1;
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
gate su4_178 p0,p1 {
	u3(2.0443715,1.6636615,2.9909948) p0;
	u3(0.66097018,0.86462612,1.6536346) p1;
	cx p0,p1;
	u3(1.0332564,-pi/2,-pi/2) p0;
	u3(2.6372239,-1.0753458,-2.6996811) p1;
	cx p0,p1;
	u3(0.19847346,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.46015774,-1.9112501,2.9305497) p0;
	u3(0.90258395,-0.42278099,1.4821408) p1;
}
gate su4_237 p0,p1 {
	u3(2.2796964,2.3972879,-2.4233761) p0;
	u3(0.92144951,2.764864,-2.2847507) p1;
	cx p0,p1;
	u3(0.69873845,-pi/2,-pi/2) p0;
	u3(2.7455925,-0.93274696,-2.5415964) p1;
	cx p0,p1;
	u3(0.2207824,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.144826,1.2192689,-2.766483) p0;
	u3(1.9500292,2.7479311,0.5611002) p1;
}
gate su4_145 p0,p1 {
	u3(3.0609526,1.2622244,1.1422044) p0;
	u3(2.4709487,-2.881467,2.4712658) p1;
	cx p0,p1;
	u3(0.68702831,-pi/2,-pi/2) p0;
	u3(2.6968849,-1.0073913,-2.6233268) p1;
	cx p0,p1;
	u3(0.16407731,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8210645,1.522001,0.91209128) p0;
	u3(0.8624559,2.1892617,1.0774049) p1;
}
gate su4_540 p0,p1 {
	u3(1.7713849,-2.5720957,-1.6532512) p0;
	u3(2.7455271,0.54706004,2.5319364) p1;
	cx p0,p1;
	u3(0.60332402,-pi/2,-pi/2) p0;
	u3(2.3909009,-1.2272698,-2.8857607) p1;
	cx p0,p1;
	u3(0.017097435,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7538912,1.9974527,2.3534607) p0;
	u3(1.2521944,2.3200233,2.1661311) p1;
}
gate su4_445 p0,p1 {
	u3(1.5284734,-2.5298178,-1.7041917) p0;
	u3(1.261268,-2.0139502,3.0900859) p1;
	cx p0,p1;
	u3(0.77625534,-pi/2,-pi/2) p0;
	u3(2.8074892,-0.79451323,-2.3937162) p1;
	cx p0,p1;
	u3(0.40777034,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0102534,1.035253,0.093405707) p0;
	u3(1.7240998,0.42123488,0.19557652) p1;
}
gate su4_495 p0,p1 {
	u3(1.9571913,-2.5786262,-0.83177131) p0;
	u3(1.843567,1.3795712,-0.28438033) p1;
	cx p0,p1;
	u3(0.48336455,-pi/2,-pi/2) p0;
	u3(2.586571,-1.1196522,-2.751004) p1;
	cx p0,p1;
	u3(0.30290146,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.87206663,-2.9693193,0.14686641) p0;
	u3(1.4743093,-0.3889792,-0.60760281) p1;
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
gate su4_282 p0,p1 {
	u3(0.9748986,0.73006006,-0.55749633) p0;
	u3(0.29467578,-0.52488049,0.04783243) p1;
	cx p0,p1;
	u3(0.78409751,-pi/2,-pi/2) p0;
	u3(2.7899451,-0.84058976,-2.4426376) p1;
	cx p0,p1;
	u3(0.29619815,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5395695,1.7037719,-1.9890902) p0;
	u3(1.6310938,1.8440953,-2.1248218) p1;
}
gate su4_151 p0,p1 {
	u3(2.2208138,-0.80402464,1.8252025) p0;
	u3(1.7903441,-2.6130424,-0.4959355) p1;
	cx p0,p1;
	u3(0.94232899,-pi/2,-pi/2) p0;
	u3(2.7778106,-0.8688362,-2.472792) p1;
	cx p0,p1;
	u3(0.077575187,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.96928664,2.5839082,1.2512198) p0;
	u3(0.59481266,-1.7052942,1.2646252) p1;
}
gate su4_892 p0,p1 {
	u3(1.8996498,0.55410022,0.59814339) p0;
	u3(1.6895789,2.7826489,0.096229344) p1;
	cx p0,p1;
	u3(1.008815,-pi/2,-pi/2) p0;
	u3(2.807485,-0.79452504,-2.3937287) p1;
	cx p0,p1;
	u3(0.46099098,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0651291,-1.070664,1.9392154) p0;
	u3(2.4240973,-2.2080082,-0.18075057) p1;
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
gate su4_201 p0,p1 {
	u3(0.88068605,1.0682445,1.7350136) p0;
	u3(0.89682707,1.8568612,-1.4117577) p1;
	cx p0,p1;
	u3(1.0357323,-pi/2,-pi/2) p0;
	u3(2.6157813,-1.0953304,-2.7226438) p1;
	cx p0,p1;
	u3(0.16517177,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9301795,0.51447734,-1.2873978) p0;
	u3(2.1760204,-0.92890203,-1.4422634) p1;
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
gate su4_823 p0,p1 {
	u3(2.0180008,-1.6623698,2.0647438) p0;
	u3(1.2982176,-2.2007032,0.99566533) p1;
	cx p0,p1;
	u3(0.50984926,-pi/2,-pi/2) p0;
	u3(2.665104,-1.0461348,-2.6665708) p1;
	cx p0,p1;
	u3(0.46393985,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6682302,-0.22974701,-1.704128) p0;
	u3(1.1768427,-0.48506329,-0.38624828) p1;
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
gate su4_797 p0,p1 {
	u3(1.7816971,-3.0981547,0.38655029) p0;
	u3(2.3081259,2.9904595,-2.2529137) p1;
	cx p0,p1;
	u3(0.76188481,-pi/2,-pi/2) p0;
	u3(2.2928576,-1.2596443,-2.9321548) p1;
	cx p0,p1;
	u3(0.060200061,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7902095,1.3477424,-1.6819155) p0;
	u3(2.2169242,2.4125859,-0.86565855) p1;
}
qreg q[10];
creg meas[10];
su4_21 q[0],q[2];
su4_17 q[5],q[4];
su4_771 q[4],q[0];
su4_749 q[6],q[1];
su4_643 q[1],q[6];
su4_891 q[1],q[0];
su4_877 q[0],q[1];
su4_614 q[8],q[3];
su4_98 q[3],q[2];
su4_586 q[5],q[8];
su4_547 q[5],q[4];
su4_8 q[8],q[2];
su4_481 q[2],q[5];
su4_523 q[5],q[0];
su4_844 q[9],q[7];
su4_458 q[7],q[9];
su4_92 q[6],q[9];
su4_355 q[7],q[3];
su4_825 q[7],q[6];
su4_949 q[6],q[2];
su4_238 q[2],q[5];
su4_528 q[8],q[3];
su4_269 q[1],q[3];
su4_695 q[1],q[3];
su4_286 q[1],q[5];
su4_213 q[9],q[4];
su4_832 q[4],q[7];
su4_898 q[7],q[6];
su4_279 q[3],q[7];
su4_486 q[3],q[5];
su4_753 q[9],q[8];
su4_731 q[0],q[9];
su4_767 q[4],q[8];
su4_309 q[2],q[4];
su4_178 q[4],q[7];
su4_237 q[6],q[9];
su4_145 q[1],q[9];
su4_540 q[7],q[1];
su4_445 q[8],q[0];
su4_495 q[2],q[0];
su4_952 q[0],q[2];
su4_282 q[6],q[8];
su4_151 q[6],q[5];
su4_892 q[0],q[6];
su4_827 q[5],q[7];
su4_201 q[8],q[4];
su4_932 q[4],q[8];
su4_823 q[9],q[3];
su4_969 q[3],q[2];
su4_797 q[9],q[1];
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
