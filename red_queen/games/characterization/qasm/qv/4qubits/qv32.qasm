OPENQASM 2.0;
include "qelib1.inc";
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
gate su4_956 p0,p1 {
	u3(0.41058519,-0.056592764,0.58209424) p0;
	u3(1.6633245,-1.2236446,0.94970458) p1;
	cx p0,p1;
	u3(1.1844625,-pi/2,-pi/2) p0;
	u3(2.7798799,-0.86420392,-2.4678373) p1;
	cx p0,p1;
	u3(0.34046266,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8404273,-2.7616815,-1.5985955) p0;
	u3(2.2709869,-0.64022031,2.9878437) p1;
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
gate su4_456 p0,p1 {
	u3(1.3758268,-1.3903978,2.2756248) p0;
	u3(1.160574,0.85210112,1.2024475) p1;
	cx p0,p1;
	u3(0.51182513,-pi/2,-pi/2) p0;
	u3(2.5326028,-1.1574911,-2.7962817) p1;
	cx p0,p1;
	u3(0.1035528,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.7358534,-1.9769558,1.4563186) p0;
	u3(2.3711533,0.33348529,-0.095255407) p1;
}
gate su4_879 p0,p1 {
	u3(1.9404656,-0.30961456,1.65032) p0;
	u3(1.5749603,-1.8976399,2.1587297) p1;
	cx p0,p1;
	u3(0.520006,-pi/2,-pi/2) p0;
	u3(2.4316597,-1.210556,-2.8633301) p1;
	cx p0,p1;
	u3(0.35349829,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.2315893,-1.7536443,-0.78008318) p0;
	u3(1.3701566,-0.23849499,1.2450941) p1;
}
gate su4_212 p0,p1 {
	u3(2.5159894,1.7808522,-0.89074767) p0;
	u3(1.0170227,-0.050298969,0.79363027) p1;
	cx p0,p1;
	u3(0.74300722,-pi/2,-pi/2) p0;
	u3(2.8108654,-0.78481664,-2.3834581) p1;
	cx p0,p1;
	u3(0.23237787,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.58012008,-0.77131502,-0.30426767) p0;
	u3(2.4463107,2.6110649,-1.1042992) p1;
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
qreg q[4];
creg meas[4];
su4_375 q[0],q[1];
su4_265 q[2],q[3];
su4_956 q[1],q[2];
su4_147 q[3],q[0];
su4_456 q[1],q[3];
su4_879 q[2],q[0];
su4_212 q[1],q[2];
su4_92 q[3],q[0];
barrier q[0],q[1],q[2],q[3];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
