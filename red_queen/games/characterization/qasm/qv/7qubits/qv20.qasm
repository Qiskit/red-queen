OPENQASM 2.0;
include "qelib1.inc";
gate su4_402 p0,p1 {
	u3(1.3486268,-2.7368816,0.86715892) p0;
	u3(1.4194004,0.7116399,1.8117092) p1;
	cx p0,p1;
	u3(0.6013332,-pi/2,-pi/2) p0;
	u3(2.7732859,-0.87871858,-2.4833755) p1;
	cx p0,p1;
	u3(0.29263571,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.6791056,1.2637894,2.1137196) p0;
	u3(1.7778786,-2.8536096,-1.4219898) p1;
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
gate su4_191 p0,p1 {
	u3(1.5718245,-1.7476913,3.0788574) p0;
	u3(2.6234119,1.2498187,1.6677124) p1;
	cx p0,p1;
	u3(1.0168893,-pi/2,-pi/2) p0;
	u3(2.5751453,-1.1283692,-2.7612972) p1;
	cx p0,p1;
	u3(0.0016844346,1.1235457e-13,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9148213,3.0434017,-2.4125425) p0;
	u3(1.3018778,1.0357694,-2.3569902) p1;
}
gate su4_300 p0,p1 {
	u3(1.2379636,1.8153171,0.16140643) p0;
	u3(0.40827525,-1.3646391,1.5139726) p1;
	cx p0,p1;
	u3(0.75059769,-pi/2,-pi/2) p0;
	u3(2.7012493,-1.0015354,-2.6168468) p1;
	cx p0,p1;
	u3(0.33351942,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.231056,2.4214592,-1.2632112) p0;
	u3(0.80513312,-1.9406868,-1.4665729) p1;
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
gate su4_628 p0,p1 {
	u3(1.2948513,-0.53365072,2.6859884) p0;
	u3(1.2023072,0.94160124,1.1370892) p1;
	cx p0,p1;
	u3(0.78052154,-pi/2,-pi/2) p0;
	u3(2.6633162,-1.0481305,-2.6688177) p1;
	cx p0,p1;
	u3(0.37229674,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.73229725,1.8080469,-0.028233896) p0;
	u3(2.5623903,0.79973269,-1.9263018) p1;
}
gate su4_913 p0,p1 {
	u3(0.42503972,0.21484145,2.5438663) p0;
	u3(2.2746283,-2.3312599,0.4553391) p1;
	cx p0,p1;
	u3(1.02957,-pi/2,-pi/2) p0;
	u3(2.6504825,-1.0619475,-2.684433) p1;
	cx p0,p1;
	u3(0.22845413,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.5237494,2.8385297,1.391255) p0;
	u3(0.78784603,-2.7451697,2.439441) p1;
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
gate su4_954 p0,p1 {
	u3(1.4818083,2.5298418,-0.30458647) p0;
	u3(1.5044893,0.069466401,-1.3383345) p1;
	cx p0,p1;
	u3(1.0117923,-pi/2,-pi/2) p0;
	u3(2.7755775,-0.87375509,-2.4780576) p1;
	cx p0,p1;
	u3(0.064280453,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.9860349,-0.36617963,2.6284477) p0;
	u3(1.270275,-3.0632975,-2.2400255) p1;
}
gate su4_552 p0,p1 {
	u3(0.10083365,2.0256154,1.5223808) p0;
	u3(0.66149545,-2.2398591,-1.9678862) p1;
	cx p0,p1;
	u3(1.1067608,-pi/2,-pi/2) p0;
	u3(2.4865756,-1.1840732,-2.8292176) p1;
	cx p0,p1;
	u3(0.35863492,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.4042884,-2.1435074,-1.1175286) p0;
	u3(2.7267906,-0.32116281,-0.42952496) p1;
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
gate su4_543 p0,p1 {
	u3(1.573804,0.40436429,-1.9602375) p0;
	u3(1.7864813,1.1650078,-2.5715042) p1;
	cx p0,p1;
	u3(1.2127696,-pi/2,-pi/2) p0;
	u3(2.7876226,-0.84620501,-2.4486214) p1;
	cx p0,p1;
	u3(0.10777212,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(0.47904725,2.4132092,0.24070782) p0;
	u3(2.1646615,2.8934155,3.0554987) p1;
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
gate su4_60 p0,p1 {
	u3(0.66254231,0.48321628,2.3502241) p0;
	u3(2.0990538,-3.1047897,-2.5681556) p1;
	cx p0,p1;
	u3(1.080097,-pi/2,-pi/2) p0;
	u3(2.5537927,-1.143602,-2.7794727) p1;
	cx p0,p1;
	u3(0.24063227,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7310589,0.4531091,2.5914336) p0;
	u3(1.8658721,0.27494948,1.2876583) p1;
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
gate su4_112 p0,p1 {
	u3(1.8034564,-0.56428327,2.4298139) p0;
	u3(2.0532534,-2.5566216,-2.5456455) p1;
	cx p0,p1;
	u3(0.51314455,-pi/2,-pi/2) p0;
	u3(2.8071655,-0.79542753,-2.3946841) p1;
	cx p0,p1;
	u3(0.2737656,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.7348274,2.8292038,1.3127708) p0;
	u3(0.68290137,-2.7177976,-1.867014) p1;
}
gate su4_209 p0,p1 {
	u3(1.2363639,0.13384128,2.1118329) p0;
	u3(0.79409769,2.5794151,1.8095716) p1;
	cx p0,p1;
	u3(0.7534349,-pi/2,-pi/2) p0;
	u3(2.8094227,-0.78899619,-2.3878782) p1;
	cx p0,p1;
	u3(0.30619636,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(2.2271188,1.0528124,0.31436973) p0;
	u3(1.2389872,0.96417845,1.428307) p1;
}
gate su4_727 p0,p1 {
	u3(1.2568869,2.9624872,-0.89800419) p0;
	u3(1.3947419,-1.9295258,2.9637832) p1;
	cx p0,p1;
	u3(0.99435625,-pi/2,-pi/2) p0;
	u3(2.6826612,-1.0255358,-2.6434945) p1;
	cx p0,p1;
	u3(0.26423441,0,-pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.8686329,-0.59104829,-1.0012215) p0;
	u3(0.36142095,1.1789165,0.99120791) p1;
}
gate su4_163 p0,p1 {
	u3(2.1173362,-2.1373938,2.2045162) p0;
	u3(1.5703882,0.15999468,2.591046) p1;
	cx p0,p1;
	u3(0.75553685,-pi/2,-pi/2) p0;
	u3(2.241175,-1.2732169,-2.9533108) p1;
	cx p0,p1;
	u3(0.033406629,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.3123333,2.7658318,-0.45127264) p0;
	u3(1.9162932,-1.0704599,-2.9744076) p1;
}
gate su4_511 p0,p1 {
	u3(1.4944851,-0.27895016,0.20705084) p0;
	u3(1.3938993,0.25773099,-0.49587001) p1;
	cx p0,p1;
	u3(1.0089825,-pi/2,-pi/2) p0;
	u3(2.5813173,-1.1237122,-2.7557889) p1;
	cx p0,p1;
	u3(0.58160133,-pi,pi/2) p0;
	u3(1.7963097,1.8087573,-3.0874084) p1;
	cx p0,p1;
	u3(1.569579,1.8768674,0.9279136) p0;
	u3(1.2773195,1.5399603,-2.7477752) p1;
}
qreg q[7];
creg meas[7];
su4_402 q[3],q[0];
su4_749 q[2],q[4];
su4_191 q[2],q[1];
su4_300 q[6],q[5];
su4_3 q[4],q[6];
su4_628 q[2],q[6];
su4_913 q[5],q[3];
su4_769 q[1],q[5];
su4_954 q[0],q[5];
su4_552 q[1],q[2];
su4_666 q[0],q[1];
su4_942 q[3],q[4];
su4_543 q[3],q[4];
su4_863 q[3],q[2];
su4_60 q[1],q[3];
su4_177 q[4],q[6];
su4_112 q[5],q[2];
su4_209 q[3],q[5];
su4_727 q[6],q[0];
su4_163 q[4],q[0];
su4_511 q[6],q[1];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6];
measure q[0] -> meas[0];
measure q[1] -> meas[1];
measure q[2] -> meas[2];
measure q[3] -> meas[3];
measure q[4] -> meas[4];
measure q[5] -> meas[5];
measure q[6] -> meas[6];
