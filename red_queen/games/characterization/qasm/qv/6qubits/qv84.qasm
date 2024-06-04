OPENQASM 2.0;
include "qelib1.inc";
gate su4_99 p0,p1 {
	u3(1.2642886,-2.0022445,1.1724162) p0;
	u3(1.4585516,-0.074036432,-0.32679785) p1;
	cx p0,p1;
	u3(0.9548075,-pi/2,-pi/2) p0;
	u3(2.6926787,-1.0129031,-2.6294386) p1;
	cx p0,p1;
	u3(0.32604097,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0582268,-1.7738606,-1.2448715) p0;
	u3(2.4662846,-2.9590986,-0.50626881) p1;
}
gate su4_646 p0,p1 {
	u3(1.6798185,-3.056952,1.4236426) p0;
	u3(1.1463993,-1.9162865,0.9764053) p1;
	cx p0,p1;
	u3(0.51327511,-pi/2,-pi/2) p0;
	u3(2.6117761,-1.0988523,-2.7267205) p1;
	cx p0,p1;
	u3(0.082110153,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5981621,-1.2574914,2.1527283) p0;
	u3(2.4141141,3.0662439,-0.33348447) p1;
}
gate su4_36 p0,p1 {
	u3(2.6822313,-1.4594334,-1.5510486) p0;
	u3(1.6436735,-0.73102781,-0.64245876) p1;
	cx p0,p1;
	u3(1.0461834,-pi/2,-pi/2) p0;
	u3(2.6094722,-1.10085,-2.7290371) p1;
	cx p0,p1;
	u3(0.31531255,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2028512,-2.5511652,-2.321131) p0;
	u3(1.0916257,-0.52949153,-1.005326) p1;
}
gate su4_829 p0,p1 {
	u3(1.7972387,-1.1797423,-2.7553595) p0;
	u3(1.3225902,1.7742415,2.9573129) p1;
	cx p0,p1;
	u3(0.33013896,-pi/2,-pi/2) p0;
	u3(2.6558809,-1.0562418,-2.6779719) p1;
	cx p0,p1;
	u3(0.11303946,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.601153,0.85606935,0.59740628) p0;
	u3(1.0372998,1.5764666,1.686466) p1;
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
gate su4_385 p0,p1 {
	u3(1.4627933,0.88726388,1.7681008) p0;
	u3(2.1539166,-1.3837695,-1.6214688) p1;
	cx p0,p1;
	u3(0.71348008,-pi/2,-pi/2) p0;
	u3(2.6785654,-1.0305101,-2.6490485) p1;
	cx p0,p1;
	u3(0.1867241,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3916693,1.6410735,-0.20080358) p0;
	u3(1.5680608,2.4315591,-1.6723797) p1;
}
gate su4_418 p0,p1 {
	u3(1.5946638,2.8277906,-0.41457953) p0;
	u3(2.3949812,-0.44609665,1.0045684) p1;
	cx p0,p1;
	u3(0.46365387,-pi/2,-pi/2) p0;
	u3(2.7758687,-0.8731182,-2.4773756) p1;
	cx p0,p1;
	u3(0.03025315,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7345362,-2.2764264,-2.4101584) p0;
	u3(2.3695541,-0.841289,-2.9394044) p1;
}
gate su4_884 p0,p1 {
	u3(0.56192816,-2.0182571,-1.941974) p0;
	u3(1.6425469,-1.7891716,-1.2744117) p1;
	cx p0,p1;
	u3(0.86035757,-pi/2,-pi/2) p0;
	u3(2.7167162,-0.9795803,-2.5926647) p1;
	cx p0,p1;
	u3(0.023002144,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.0391317,-0.76480965,0.41725841) p0;
	u3(2.070919,-2.7049252,0.63431805) p1;
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
gate su4_233 p0,p1 {
	u3(1.0778349,-1.2273387,1.2304967) p0;
	u3(0.54209557,-2.9971587,-0.65679925) p1;
	cx p0,p1;
	u3(0.72920828,-pi/2,-pi/2) p0;
	u3(2.50739,-1.1726119,-2.8148799) p1;
	cx p0,p1;
	u3(0.22074822,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.4356698,0.31109218,3.1378382) p0;
	u3(1.4469425,1.629167,-2.3764392) p1;
}
gate su4_897 p0,p1 {
	u3(1.7697532,-1.6466581,2.956277) p0;
	u3(1.5948807,2.7086299,-2.7214482) p1;
	cx p0,p1;
	u3(0.80459398,-pi/2,-pi/2) p0;
	u3(2.5311125,-1.1584256,-2.7974216) p1;
	cx p0,p1;
	u3(0.24085242,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.0519617,1.7081489,2.3575927) p0;
	u3(2.2779719,3.0276305,-1.2718461) p1;
}
gate su4_335 p0,p1 {
	u3(0.96833093,-2.6334296,1.4670576) p0;
	u3(2.252972,2.8086297,-0.48567701) p1;
	cx p0,p1;
	u3(0.70076053,-pi/2,-pi/2) p0;
	u3(2.8139902,-0.7755734,-2.3736905) p1;
	cx p0,p1;
	u3(0.0051549448,3.6415315e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4260112,2.5522215,-2.8566335) p0;
	u3(0.58469207,2.5111882,3.0448653) p1;
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
gate su4_590 p0,p1 {
	u3(1.1628857,-1.1566072,-2.2218909) p0;
	u3(1.7651375,2.8038322,0.40206075) p1;
	cx p0,p1;
	u3(0.47815923,-pi/2,-pi/2) p0;
	u3(2.6091021,-1.1011689,-2.7294073) p1;
	cx p0,p1;
	u3(0.0022004958,8.5265128e-14,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.3964876,2.6314648,-3.1259739) p0;
	u3(0.67429498,0.77756703,-0.34599009) p1;
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
gate su4_578 p0,p1 {
	u3(1.5046787,1.4642545,-2.2350388) p0;
	u3(1.1689602,0.32975364,2.4551356) p1;
	cx p0,p1;
	u3(1.0169673,-pi/2,-pi/2) p0;
	u3(2.7090606,-0.99069026,-2.60488) p1;
	cx p0,p1;
	u3(0.53726526,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7279061,2.1258568,-2.5771011) p0;
	u3(1.1239394,-0.38975327,-2.9940952) p1;
}
gate su4_742 p0,p1 {
	u3(0.8755397,-2.6000771,-2.5316637) p0;
	u3(2.6614296,1.5481382,-1.8307266) p1;
	cx p0,p1;
	u3(1.2332296,-pi/2,-pi/2) p0;
	u3(2.6581296,-1.0538201,-2.6752351) p1;
	cx p0,p1;
	u3(0.12129296,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.20663993,0.36848557,1.3611933) p0;
	u3(1.3583382,-2.7952163,0.70884459) p1;
}
qreg q[6];
creg meas[6];
su4_99 q[3],q[1];
su4_646 q[4],q[0];
su4_36 q[3],q[0];
su4_829 q[0],q[3];
su4_99 q[0],q[3];
su4_17 q[5],q[2];
su4_385 q[1],q[2];
su4_418 q[1],q[2];
su4_884 q[2],q[1];
su4_785 q[0],q[1];
su4_233 q[5],q[4];
su4_897 q[5],q[4];
su4_335 q[4],q[5];
su4_303 q[4],q[2];
su4_590 q[0],q[2];
su4_363 q[5],q[3];
su4_578 q[4],q[3];
su4_742 q[5],q[1];
barrier q[0],q[1],q[2],q[3],q[4],q[5];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
