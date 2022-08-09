OPENQASM 2.0;
include "qelib1.inc";
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
gate su4_482 p0,p1 {
	u3(0.8701887,-1.9472035,0.52866743) p0;
	u3(1.1513986,-2.5126185,3.1089193) p1;
	cx p0,p1;
	u3(0.8014756,-pi/2,-pi/2) p0;
	u3(2.6063663,-1.103511,-2.7321279) p1;
	cx p0,p1;
	u3(0.31481499,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.96582249,-0.98875491,-2.5338362) p0;
	u3(1.4779225,-1.5595884,2.614063) p1;
}
gate su4_303 p0,p1 {
	u3(1.3348871,-2.9949056,-2.0343899) p0;
	u3(1.4626691,-1.420882,-2.958709) p1;
	cx p0,p1;
	u3(0.38197618,-pi/2,-pi/2) p0;
	u3(2.6755433,-1.0341127,-2.6530782) p1;
	cx p0,p1;
	u3(0.078810177,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0966056,1.2338349,-0.95328034) p0;
	u3(1.2739934,-1.7659199,-3.0937475) p1;
}
gate su4_174 p0,p1 {
	u3(1.7552495,1.8996615,-1.5173865) p0;
	u3(2.7825461,1.2882052,1.1776616) p1;
	cx p0,p1;
	u3(0.7004846,-pi/2,-pi/2) p0;
	u3(2.4525798,-1.201055,-2.8509142) p1;
	cx p0,p1;
	u3(0.34938476,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2112402,0.11405407,-0.93320239) p0;
	u3(0.97091422,2.2748452,2.7607234) p1;
}
gate su4_284 p0,p1 {
	u3(1.3611854,-1.0590743,0.74895439) p0;
	u3(2.4794105,2.5374559,-0.74138539) p1;
	cx p0,p1;
	u3(0.44190191,-pi/2,-pi/2) p0;
	u3(2.6310671,-1.0812874,-2.7064793) p1;
	cx p0,p1;
	u3(0.010156611,1.8207658e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.59816058,0.25555761,-0.080783456) p0;
	u3(1.772063,1.8449969,-3.036102) p1;
}
gate su4_140 p0,p1 {
	u3(0.57269922,1.7610037,-1.3989548) p0;
	u3(0.36108907,-2.7486975,1.0643998) p1;
	cx p0,p1;
	u3(0.92263473,-pi/2,-pi/2) p0;
	u3(2.7105957,-0.98850171,-2.6024703) p1;
	cx p0,p1;
	u3(0.56947627,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5380996,1.1779325,-0.65365613) p0;
	u3(0.67721655,2.1152117,-1.7140437) p1;
}
gate su4_635 p0,p1 {
	u3(0.20623287,3.055203,2.7262694) p0;
	u3(2.2568425,-1.9016809,-0.92180955) p1;
	cx p0,p1;
	u3(0.93801972,-pi/2,-pi/2) p0;
	u3(2.6763121,-1.0332016,-2.6520585) p1;
	cx p0,p1;
	u3(0.51084939,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3109018,-1.6014726,-1.213634) p0;
	u3(1.1041441,1.5593537,2.7583422) p1;
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
gate su4_295 p0,p1 {
	u3(1.2718405,1.23582,-0.7235959) p0;
	u3(1.5154524,2.557015,0.92077814) p1;
	cx p0,p1;
	u3(0.96703293,-pi/2,-pi/2) p0;
	u3(2.8094183,-0.78900908,-2.3878919) p1;
	cx p0,p1;
	u3(0.21627111,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1728606,0.67995518,1.6586299) p0;
	u3(0.2215745,2.9585,2.1226412) p1;
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
gate su4_796 p0,p1 {
	u3(0.53543406,0.95259805,-0.9586618) p0;
	u3(1.8693753,-0.84091063,-0.929829) p1;
	cx p0,p1;
	u3(1.1317491,-pi/2,-pi/2) p0;
	u3(2.7230082,-0.97006859,-2.5822396) p1;
	cx p0,p1;
	u3(0.29432602,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1769311,3.0428573,2.3542038) p0;
	u3(1.4072469,-2.8706419,-0.34112769) p1;
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
gate su4_680 p0,p1 {
	u3(1.0749829,1.6310186,0.086216122) p0;
	u3(0.75865029,-2.789758,-0.02308905) p1;
	cx p0,p1;
	u3(0.55396862,-pi/2,-pi/2) p0;
	u3(2.6895824,-1.0168805,-2.6338568) p1;
	cx p0,p1;
	u3(0.1220359,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0419082,0.89015768,1.9413574) p0;
	u3(3.0426577,2.4786807,0.23694225) p1;
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
gate su4_177 p0,p1 {
	u3(1.7024038,3.0343814,0.27325209) p0;
	u3(1.2130093,1.6058198,2.8684392) p1;
	cx p0,p1;
	u3(1.0429563,-pi/2,-pi/2) p0;
	u3(2.5691035,-1.1328144,-2.7665752) p1;
	cx p0,p1;
	u3(0.20811001,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7847103,-3.0237476,2.1697857) p0;
	u3(1.6792155,2.578282,2.1418444) p1;
}
gate su4_567 p0,p1 {
	u3(1.1508428,-1.9340077,-1.4684987) p0;
	u3(1.0259741,1.4112808,-0.19982569) p1;
	cx p0,p1;
	u3(0.75717407,-pi/2,-pi/2) p0;
	u3(2.6338714,-1.0786023,-2.7034043) p1;
	cx p0,p1;
	u3(0.52807022,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5418178,0.76659145,1.4172654) p0;
	u3(2.2584277,-0.082707838,0.26903543) p1;
}
gate su4_994 p0,p1 {
	u3(1.4659826,-0.85353417,-2.7679786) p0;
	u3(1.7247856,-0.81551217,-0.56727967) p1;
	cx p0,p1;
	u3(0.91659872,-pi/2,-pi/2) p0;
	u3(2.6664704,-1.0445973,-2.6648412) p1;
	cx p0,p1;
	u3(0.20928459,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4924254,2.7483721,-0.36221944) p0;
	u3(1.1662841,2.7300673,-1.270857) p1;
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
gate su4_747 p0,p1 {
	u3(0.94073854,1.6218819,1.1413555) p0;
	u3(0.34864372,2.3189701,1.5612615) p1;
	cx p0,p1;
	u3(0.56288939,-pi/2,-pi/2) p0;
	u3(2.4040721,-1.2221106,-2.8787481) p1;
	cx p0,p1;
	u3(0.29721964,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4161621,1.5128857,2.5332724) p0;
	u3(2.3329406,0.026839264,1.3534741) p1;
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
gate su4_818 p0,p1 {
	u3(1.0872281,-1.1826398,1.6430742) p0;
	u3(1.7880989,-2.6302931,-2.7306973) p1;
	cx p0,p1;
	u3(0.93709834,-pi/2,-pi/2) p0;
	u3(2.5430732,-1.1507719,-2.7881196) p1;
	cx p0,p1;
	u3(0.049664226,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.1262345,-3.0920462,-0.63956472) p0;
	u3(2.569291,0.7536502,2.4447205) p1;
}
gate su4_865 p0,p1 {
	u3(1.8276951,2.485078,-0.72494022) p0;
	u3(1.5707253,0.19544217,-1.5143053) p1;
	cx p0,p1;
	u3(0.53138147,-pi/2,-pi/2) p0;
	u3(2.5644839,-1.1361398,-2.7705373) p1;
	cx p0,p1;
	u3(0.20339376,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0579023,0.86933097,-2.8822865) p0;
	u3(1.5727087,-1.8554287,-2.9078178) p1;
}
gate su4_666 p0,p1 {
	u3(2.2842566,0.16532438,-1.4367535) p0;
	u3(0.79911871,1.7782714,1.8622401) p1;
	cx p0,p1;
	u3(0.93004901,-pi/2,-pi/2) p0;
	u3(2.6500892,-1.0623574,-2.6848979) p1;
	cx p0,p1;
	u3(0.26541467,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.71190821,0.37059288,1.7716534) p0;
	u3(1.2540446,2.2495993,1.026631) p1;
}
gate su4_84 p0,p1 {
	u3(1.2455061,2.3868668,-0.59408863) p0;
	u3(0.35741555,3.1182598,-2.0766849) p1;
	cx p0,p1;
	u3(0.818479,-pi/2,-pi/2) p0;
	u3(2.5703082,-1.1319368,-2.7655316) p1;
	cx p0,p1;
	u3(0.22572952,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5240356,0.58920431,-2.8878891) p0;
	u3(1.9340332,0.21206479,-1.4222598) p1;
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
gate su4_313 p0,p1 {
	u3(2.3449696,0.98618642,2.6627756) p0;
	u3(2.5646526,1.0537618,-0.43675673) p1;
	cx p0,p1;
	u3(0.7113475,-pi/2,-pi/2) p0;
	u3(2.4054288,-1.2215665,-2.8780135) p1;
	cx p0,p1;
	u3(0.34838912,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2157012,2.8859257,-1.1625774) p0;
	u3(1.4360122,2.2063283,-2.3067652) p1;
}
gate su4_553 p0,p1 {
	u3(1.7043714,-2.355223,1.4590296) p0;
	u3(2.0895274,0.49216192,0.006562872) p1;
	cx p0,p1;
	u3(1.0210636,-pi/2,-pi/2) p0;
	u3(2.4773264,-1.1888964,-2.8353212) p1;
	cx p0,p1;
	u3(0.59735408,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2667097,-2.2996207,0.7276615) p0;
	u3(2.3648926,-0.0037655897,2.3070172) p1;
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
gate su4_211 p0,p1 {
	u3(2.492767,-2.3664546,-1.6539806) p0;
	u3(2.5549637,0.45054874,2.0036128) p1;
	cx p0,p1;
	u3(0.20710615,-pi/2,-pi/2) p0;
	u3(2.0449048,-1.3096001,-3.0201572) p1;
	cx p0,p1;
	u3(0.093035441,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6518864,1.6646305,-3.0067354) p0;
	u3(1.9078082,-2.0302089,1.0041995) p1;
}
gate su4_816 p0,p1 {
	u3(1.0537293,-2.1858127,2.2171844) p0;
	u3(0.2542813,-0.93799131,2.9980571) p1;
	cx p0,p1;
	u3(0.91824706,-pi/2,-pi/2) p0;
	u3(2.458122,-1.1984222,-2.847511) p1;
	cx p0,p1;
	u3(0.057159309,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.5780667,-0.85912071,-1.5518192) p0;
	u3(1.6803732,1.3183903,-0.92173094) p1;
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
gate su4_231 p0,p1 {
	u3(0.95898058,1.1130554,0.76095475) p0;
	u3(2.069222,2.8652239,-1.1301354) p1;
	cx p0,p1;
	u3(0.90442185,-pi/2,-pi/2) p0;
	u3(2.4637363,-1.1957032,-2.8440124) p1;
	cx p0,p1;
	u3(0.018866537,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3661268,1.2114279,0.26133044) p0;
	u3(2.0314034,-1.9138093,0.24055468) p1;
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
gate su4_434 p0,p1 {
	u3(1.9703071,0.22839384,0.48741413) p0;
	u3(1.0784319,1.1658795,-0.92364355) p1;
	cx p0,p1;
	u3(0.7185118,-pi/2,-pi/2) p0;
	u3(2.5681694,-1.1334918,-2.7673814) p1;
	cx p0,p1;
	u3(0.23461454,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2478625,-0.19172119,-1.3851501) p0;
	u3(1.4540658,0.023955785,-2.9402708) p1;
}
gate su4_729 p0,p1 {
	u3(0.46448655,2.578433,2.291842) p0;
	u3(0.29510447,0.7281984,-2.8100355) p1;
	cx p0,p1;
	u3(0.73797532,-pi/2,-pi/2) p0;
	u3(2.5317647,-1.1580173,-2.7969234) p1;
	cx p0,p1;
	u3(0.62087747,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0924016,1.6918369,0.76330792) p0;
	u3(1.6168877,-2.252063,0.93213414) p1;
}
gate su4_734 p0,p1 {
	u3(0.64531761,-0.92200371,-1.5075449) p0;
	u3(1.6355763,1.1740981,-1.3646607) p1;
	cx p0,p1;
	u3(0.76720661,-pi/2,-pi/2) p0;
	u3(2.4113607,-1.2191592,-2.8747737) p1;
	cx p0,p1;
	u3(0.55544182,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.6498485,-0.65426603,1.0463578) p0;
	u3(1.7643729,-1.7437596,-1.2039691) p1;
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
gate su4_94 p0,p1 {
	u3(2.3506774,-0.87226258,1.282628) p0;
	u3(0.81909969,-2.250188,-0.35162884) p1;
	cx p0,p1;
	u3(1.1230115,-pi/2,-pi/2) p0;
	u3(2.6915833,-1.0143179,-2.6310094) p1;
	cx p0,p1;
	u3(0.090661263,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.64553429,2.6575457,-0.29219727) p0;
	u3(2.3884967,0.35495421,-0.56214493) p1;
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
qreg q[10];
creg meas[10];
su4_6 q[1],q[5];
su4_482 q[1],q[5];
su4_303 q[6],q[4];
su4_174 q[4],q[6];
su4_284 q[4],q[5];
su4_140 q[6],q[1];
su4_635 q[5],q[6];
su4_572 q[2],q[7];
su4_295 q[8],q[3];
su4_786 q[3],q[8];
su4_796 q[0],q[9];
su4_9 q[2],q[0];
su4_680 q[3],q[2];
su4_363 q[1],q[2];
su4_189 q[3],q[4];
su4_165 q[2],q[4];
su4_753 q[3],q[6];
su4_177 q[3],q[4];
su4_567 q[7],q[9];
su4_994 q[7],q[0];
su4_919 q[9],q[8];
su4_747 q[8],q[7];
su4_996 q[5],q[7];
su4_592 q[5],q[2];
su4_165 q[2],q[3];
su4_513 q[4],q[5];
su4_238 q[9],q[0];
su4_818 q[1],q[0];
su4_818 q[1],q[6];
su4_865 q[9],q[8];
su4_666 q[8],q[7];
su4_84 q[8],q[1];
su4_176 q[3],q[1];
su4_313 q[1],q[3];
su4_553 q[9],q[0];
su4_803 q[0],q[6];
su4_211 q[5],q[6];
su4_816 q[7],q[9];
su4_399 q[7],q[2];
su4_308 q[7],q[6];
su4_231 q[3],q[6];
su4_975 q[8],q[0];
su4_262 q[0],q[2];
su4_434 q[2],q[0];
su4_729 q[8],q[5];
su4_803 q[7],q[5];
su4_734 q[8],q[1];
su4_791 q[9],q[4];
su4_94 q[4],q[9];
su4_178 q[9],q[4];
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
