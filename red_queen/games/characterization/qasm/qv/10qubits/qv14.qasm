OPENQASM 2.0;
include "qelib1.inc";
gate su4_81 p0,p1 {
	u3(0.1556896,2.7463424,-3.0660891) p0;
	u3(1.7972923,-1.4432852,1.7383638) p1;
	cx p0,p1;
	u3(1.2676662,-pi/2,-pi/2) p0;
	u3(2.7626408,-0.90072369,-2.5070108) p1;
	cx p0,p1;
	u3(0.10523416,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4571452,0.97166622,-2.7002999) p0;
	u3(1.264723,-2.1928383,1.0511498) p1;
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
gate su4_259 p0,p1 {
	u3(1.677569,-2.9307955,-0.15548531) p0;
	u3(1.5999232,-1.4559269,1.4152565) p1;
	cx p0,p1;
	u3(0.56932362,-pi/2,-pi/2) p0;
	u3(2.4887218,-1.182931,-2.8277785) p1;
	cx p0,p1;
	u3(0.14722741,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1664527,-2.6628255,0.41387367) p0;
	u3(0.7294785,-3.0200953,2.5333019) p1;
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
gate su4_254 p0,p1 {
	u3(2.1371775,-1.6688493,-3.024683) p0;
	u3(1.4822923,-1.4864462,0.64193515) p1;
	cx p0,p1;
	u3(1.0299887,-pi/2,-pi/2) p0;
	u3(2.7405452,-0.94155413,-2.5511524) p1;
	cx p0,p1;
	u3(0.0082783884,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8326347,0.96348525,-0.87203714) p0;
	u3(1.2812879,-1.9747198,0.099062692) p1;
}
gate su4_627 p0,p1 {
	u3(1.438975,2.4850782,-1.768434) p0;
	u3(0.46057742,-3.1114183,0.16895772) p1;
	cx p0,p1;
	u3(1.1170866,-pi/2,-pi/2) p0;
	u3(2.7503486,-0.92417871,-2.5323187) p1;
	cx p0,p1;
	u3(0.54591127,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3408544,2.1710919,-1.8278325) p0;
	u3(1.1844919,2.2892716,2.5258188) p1;
}
gate su4_811 p0,p1 {
	u3(1.3681004,2.2197163,2.77765) p0;
	u3(2.2018362,2.7659014,-1.53084) p1;
	cx p0,p1;
	u3(0.9040243,-pi/2,-pi/2) p0;
	u3(2.7696634,-0.88639657,-2.4916112) p1;
	cx p0,p1;
	u3(0.32834333,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7009557,3.1077728,-2.0856511) p0;
	u3(0.51479,-0.99300277,-0.69757544) p1;
}
gate su4_236 p0,p1 {
	u3(1.6285767,2.7950253,2.4121052) p0;
	u3(1.1124328,1.4550293,2.921565) p1;
	cx p0,p1;
	u3(0.90078663,-pi/2,-pi/2) p0;
	u3(2.583136,-1.1223168,-2.7541426) p1;
	cx p0,p1;
	u3(0.52502514,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.89574407,2.293177,-2.9126258) p0;
	u3(0.98597027,0.66932465,-1.6876079) p1;
}
gate su4_289 p0,p1 {
	u3(1.018242,-0.22204919,-3.1295549) p0;
	u3(1.8292211,-0.0048318753,-2.1649956) p1;
	cx p0,p1;
	u3(0.82175871,-pi/2,-pi/2) p0;
	u3(2.7730574,-0.87920879,-2.483901) p1;
	cx p0,p1;
	u3(0.010182737,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.40535716,-0.7096494,-3.0494932) p0;
	u3(2.66544,-0.81228425,-1.3522362) p1;
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
gate su4_592 p0,p1 {
	u3(1.5661261,2.4362827,-1.7656964) p0;
	u3(0.24576105,-2.2844531,0.33162075) p1;
	cx p0,p1;
	u3(0.66547649,-pi/2,-pi/2) p0;
	u3(2.4688367,-1.1931865,-2.8407881) p1;
	cx p0,p1;
	u3(0.55352936,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1323077,-0.17554289,-0.60700439) p0;
	u3(1.2375077,1.2564531,1.0363466) p1;
}
gate su4_702 p0,p1 {
	u3(1.8833635,-2.5641568,-2.2392507) p0;
	u3(0.54907153,0.38653049,2.6426334) p1;
	cx p0,p1;
	u3(0.88325753,-pi/2,-pi/2) p0;
	u3(2.7444286,-0.93480352,-2.5438261) p1;
	cx p0,p1;
	u3(0.14750151,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.90446587,-2.8935433,-0.52946906) p0;
	u3(1.5922727,1.4583895,0.99170506) p1;
}
gate su4_960 p0,p1 {
	u3(2.0169519,-2.4312008,-0.96618733) p0;
	u3(1.6915805,-1.4938497,2.0058709) p1;
	cx p0,p1;
	u3(0.96964151,-pi/2,-pi/2) p0;
	u3(2.5697718,-1.1323281,-2.7659968) p1;
	cx p0,p1;
	u3(0.16071068,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.49516623,-0.3321749,-1.1520178) p0;
	u3(1.4841752,-1.1359517,-0.25789898) p1;
}
gate su4_162 p0,p1 {
	u3(1.1383691,-2.1572935,0.1223022) p0;
	u3(2.2601241,0.37960674,1.8579073) p1;
	cx p0,p1;
	u3(0.75002392,-pi/2,-pi/2) p0;
	u3(2.8022662,-0.80895436,-2.4090165) p1;
	cx p0,p1;
	u3(0.069461593,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0713008,-1.480549,0.093713492) p0;
	u3(2.6295777,3.0493354,3.0251375) p1;
}
gate su4_252 p0,p1 {
	u3(2.6141291,1.5167804,-1.352883) p0;
	u3(2.3229452,0.71961926,2.0875509) p1;
	cx p0,p1;
	u3(0.77357624,-pi/2,-pi/2) p0;
	u3(2.2551945,-1.269737,-2.9477588) p1;
	cx p0,p1;
	u3(0.068656136,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3784255,-1.7113249,-3.0376725) p0;
	u3(0.89608153,-0.37806735,1.4036601) p1;
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
gate su4_697 p0,p1 {
	u3(2.3330397,-1.0341479,3.0902141) p0;
	u3(2.4507053,1.7630034,0.93811271) p1;
	cx p0,p1;
	u3(0.4330789,-pi/2,-pi/2) p0;
	u3(2.3888671,-1.2280471,-2.8868248) p1;
	cx p0,p1;
	u3(0.1680991,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.43190193,-0.73824161,0.90625551) p0;
	u3(1.5586974,-1.7577916,2.5888113) p1;
}
gate su4_788 p0,p1 {
	u3(2.6282855,1.8134285,-2.6338778) p0;
	u3(0.61875193,-2.3420912,2.6213) p1;
	cx p0,p1;
	u3(0.70172525,-pi/2,-pi/2) p0;
	u3(2.5170378,-1.1669945,-2.8079312) p1;
	cx p0,p1;
	u3(0.094267552,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0379594,0.50156249,1.558015) p0;
	u3(1.7565002,-2.6135164,1.2263391) p1;
}
gate su4_221 p0,p1 {
	u3(1.5910632,-2.8452497,-2.1032472) p0;
	u3(1.1747028,-1.3140465,2.1881442) p1;
	cx p0,p1;
	u3(0.60011344,-pi/2,-pi/2) p0;
	u3(2.7414684,-0.9399646,-2.5494263) p1;
	cx p0,p1;
	u3(0.13173963,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5599048,-0.00037536262,2.6941977) p0;
	u3(1.7123413,-2.5812526,2.5863065) p1;
}
gate su4_927 p0,p1 {
	u3(1.6096556,1.9919147,-0.70658781) p0;
	u3(1.0881696,1.1613601,0.68558067) p1;
	cx p0,p1;
	u3(0.58880305,-pi/2,-pi/2) p0;
	u3(2.6062481,-1.1036115,-2.7322447) p1;
	cx p0,p1;
	u3(0.024338894,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.54859662,1.8830545,-2.9594548) p0;
	u3(1.1004496,-1.3636018,0.12178635) p1;
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
gate su4_353 p0,p1 {
	u3(2.8061987,-1.7304694,-2.4937732) p0;
	u3(0.48641634,-2.7127277,-0.82460426) p1;
	cx p0,p1;
	u3(0.94794036,-pi/2,-pi/2) p0;
	u3(2.621597,-1.0901025,-2.7166095) p1;
	cx p0,p1;
	u3(0.88943241,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7301467,-0.30383255,2.3378867) p0;
	u3(1.8807003,0.10852629,-0.82806215) p1;
}
gate su4_544 p0,p1 {
	u3(2.0188046,0.40157994,-2.4685787) p0;
	u3(2.2686561,-2.6850548,-1.2422522) p1;
	cx p0,p1;
	u3(0.59159554,-pi/2,-pi/2) p0;
	u3(2.4112966,-1.2191854,-2.8748089) p1;
	cx p0,p1;
	u3(0.44666515,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6737133,-2.1045601,-2.3143044) p0;
	u3(1.9490234,1.2871523,2.9291707) p1;
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
gate su4_160 p0,p1 {
	u3(0.34394643,-0.54782052,-0.8492659) p0;
	u3(0.77715426,0.022268228,1.132119) p1;
	cx p0,p1;
	u3(0.87580526,-pi/2,-pi/2) p0;
	u3(2.3210639,-1.2513069,-2.9197391) p1;
	cx p0,p1;
	u3(0.37564456,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.70912161,-0.63126458,2.4533999) p0;
	u3(1.754914,0.73548006,1.6109086) p1;
}
gate su4_713 p0,p1 {
	u3(2.4540204,-2.0540548,2.4045938) p0;
	u3(0.69153485,-0.37399206,2.8792372) p1;
	cx p0,p1;
	u3(1.1195544,-pi/2,-pi/2) p0;
	u3(2.6478217,-1.0647051,-2.6875624) p1;
	cx p0,p1;
	u3(0.63938264,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0595281,3.0328375,-0.43441009) p0;
	u3(1.9079545,2.4958157,0.47466003) p1;
}
gate su4_798 p0,p1 {
	u3(1.5484896,1.3221376,0.32964242) p0;
	u3(0.51122864,-2.452657,-2.067199) p1;
	cx p0,p1;
	u3(0.96913492,-pi/2,-pi/2) p0;
	u3(2.6116749,-1.0989405,-2.7268226) p1;
	cx p0,p1;
	u3(0.11329054,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1243123,-0.29247244,-2.7145858) p0;
	u3(1.3510838,-1.5658971,1.8709713) p1;
}
gate su4_973 p0,p1 {
	u3(1.0677752,-1.5506581,-2.4918659) p0;
	u3(2.1929884,-1.2011068,1.1765664) p1;
	cx p0,p1;
	u3(0.56611618,-pi/2,-pi/2) p0;
	u3(2.6949725,-1.009913,-2.6261215) p1;
	cx p0,p1;
	u3(0.40902917,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3586117,2.9729825,2.979807) p0;
	u3(2.212636,1.0495997,-1.5347096) p1;
}
gate su4_387 p0,p1 {
	u3(0.99169993,-1.4124274,3.1092228) p0;
	u3(0.49440732,0.11121604,-1.3285916) p1;
	cx p0,p1;
	u3(0.6927647,-pi/2,-pi/2) p0;
	u3(2.7939563,-0.83064186,-2.4320491) p1;
	cx p0,p1;
	u3(0.10348261,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.75249824,-2.534334,-0.88396422) p0;
	u3(2.8954887,2.6352254,-2.7402831) p1;
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
gate su4_312 p0,p1 {
	u3(1.5990134,-1.1337829,-2.3900062) p0;
	u3(1.705276,1.3815434,0.12791445) p1;
	cx p0,p1;
	u3(0.6839644,-pi/2,-pi/2) p0;
	u3(2.7746873,-0.87569323,-2.4801336) p1;
	cx p0,p1;
	u3(0.21803148,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7780681,-1.5233839,3.0445607) p0;
	u3(0.32090489,-2.4551768,-3.137587) p1;
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
gate su4_653 p0,p1 {
	u3(2.2676577,2.8036611,-0.38682478) p0;
	u3(2.994576,-2.8729652,-2.3669981) p1;
	cx p0,p1;
	u3(0.99310243,-pi/2,-pi/2) p0;
	u3(2.7975139,-0.82154163,-2.4223761) p1;
	cx p0,p1;
	u3(0.33044379,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.73272271,2.8637694,0.75587604) p0;
	u3(1.5374246,1.3307013,1.4211634) p1;
}
gate su4_24 p0,p1 {
	u3(2.5865764,1.2480657,-0.77191276) p0;
	u3(1.9969889,-0.14744023,-1.5931852) p1;
	cx p0,p1;
	u3(0.75591008,-pi/2,-pi/2) p0;
	u3(2.106544,-1.3003209,-3.0009847) p1;
	cx p0,p1;
	u3(0.28281318,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1385889,2.0038117,2.4909562) p0;
	u3(0.68130971,2.4913132,-2.2450647) p1;
}
gate su4_707 p0,p1 {
	u3(2.7771271,0.74649796,1.7549479) p0;
	u3(1.3814869,-0.40370252,2.6292564) p1;
	cx p0,p1;
	u3(0.16034816,-pi/2,-pi/2) p0;
	u3(2.8144219,-0.77427538,-2.3723197) p1;
	cx p0,p1;
	u3(0.11749179,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.9601951,-0.27725663,-1.4345071) p0;
	u3(0.34064128,0.72703086,0.97447105) p1;
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
gate su4_554 p0,p1 {
	u3(2.6078843,-2.0558872,-1.5214132) p0;
	u3(2.2410861,0.78947757,2.4998943) p1;
	cx p0,p1;
	u3(0.93606943,-pi/2,-pi/2) p0;
	u3(2.3693353,-1.2352607,-2.8968) p1;
	cx p0,p1;
	u3(0.60671533,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5080217,-1.6071784,1.8780735) p0;
	u3(2.3518433,-3.0240946,-0.53043333) p1;
}
gate su4_611 p0,p1 {
	u3(2.1762023,1.1688496,-1.3731344) p0;
	u3(1.2850932,-1.863665,-0.45067594) p1;
	cx p0,p1;
	u3(0.7161588,-pi/2,-pi/2) p0;
	u3(2.3300936,-1.2484839,-2.9156187) p1;
	cx p0,p1;
	u3(0.49749022,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5483696,0.31218103,2.7957261) p0;
	u3(2.3171171,1.1940259,1.6664475) p1;
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
gate su4_983 p0,p1 {
	u3(1.0881373,3.0540819,2.849576) p0;
	u3(0.38253578,0.20986893,-2.2309876) p1;
	cx p0,p1;
	u3(0.52400986,-pi/2,-pi/2) p0;
	u3(2.4838169,-1.1855284,-2.8310546) p1;
	cx p0,p1;
	u3(0.078955309,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.8757652,2.018042,-1.4946743) p0;
	u3(1.9933908,-2.5259273,0.27184123) p1;
}
gate su4_900 p0,p1 {
	u3(2.5334807,0.53227909,-1.7719053) p0;
	u3(0.64235655,-1.0096123,2.7750377) p1;
	cx p0,p1;
	u3(0.77920154,-pi/2,-pi/2) p0;
	u3(2.5982242,-1.1103173,-2.74006) p1;
	cx p0,p1;
	u3(0.15812889,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.1408518,-0.81782483,2.1649074) p0;
	u3(1.7509478,2.1408991,-1.1641597) p1;
}
gate su4_935 p0,p1 {
	u3(2.0072038,-2.0752812,-1.5433963) p0;
	u3(0.55361355,-0.11517574,-0.20978375) p1;
	cx p0,p1;
	u3(0.9795897,-pi/2,-pi/2) p0;
	u3(2.4910851,-1.181663,-2.8261837) p1;
	cx p0,p1;
	u3(0.57000402,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3768427,1.0574006,-0.46520177) p0;
	u3(1.3161998,-2.3290487,-2.5150722) p1;
}
qreg q[10];
creg meas[10];
su4_81 q[0],q[3];
su4_891 q[6],q[5];
su4_259 q[6],q[0];
su4_398 q[7],q[4];
su4_254 q[5],q[7];
su4_627 q[5],q[7];
su4_811 q[2],q[8];
su4_236 q[2],q[3];
su4_289 q[2],q[3];
su4_753 q[2],q[3];
su4_33 q[1],q[9];
su4_321 q[4],q[1];
su4_592 q[4],q[6];
su4_702 q[4],q[5];
su4_960 q[4],q[5];
su4_162 q[6],q[7];
su4_252 q[6],q[2];
su4_753 q[2],q[4];
su4_602 q[8],q[9];
su4_697 q[0],q[8];
su4_788 q[1],q[9];
su4_221 q[0],q[9];
su4_927 q[0],q[3];
su4_205 q[0],q[6];
su4_353 q[6],q[2];
su4_544 q[8],q[1];
su4_100 q[1],q[7];
su4_664 q[7],q[1];
su4_160 q[9],q[8];
su4_713 q[3],q[9];
su4_798 q[0],q[9];
su4_973 q[1],q[3];
su4_387 q[6],q[0];
su4_315 q[8],q[5];
su4_312 q[4],q[5];
su4_481 q[1],q[5];
su4_631 q[2],q[4];
su4_529 q[1],q[2];
su4_653 q[4],q[6];
su4_24 q[4],q[2];
su4_707 q[8],q[7];
su4_836 q[3],q[7];
su4_866 q[7],q[5];
su4_544 q[8],q[9];
su4_554 q[0],q[8];
su4_611 q[1],q[8];
su4_814 q[5],q[0];
su4_983 q[9],q[3];
su4_900 q[3],q[7];
su4_935 q[9],q[6];
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
