OPENQASM 2.0;
include "qelib1.inc";
gate gate_EfficientSU2(param0,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,param18,param19,param20,param21,param22,param23,param24,param25,param26,param27,param28,param29,param30,param31,param32,param33,param34,param35,param36,param37,param38,param39,param40,param41,param42,param43,param44,param45,param46,param47,param48,param49,param50,param51,param52,param53,param54,param55,param56,param57,param58,param59,param60,param61,param62,param63,param64,param65,param66,param67,param68,param69,param70,param71,param72,param73,param74,param75,param76,param77,param78,param79,param80,param81,param82,param83,param84,param85,param86,param87,param88,param89,param90,param91,param92,param93,param94,param95,param96,param97,param98,param99,param100,param101,param102,param103,param104,param105,param106,param107,param108,param109,param110,param111,param112,param113,param114,param115,param116,param117,param118,param119,param120,param121,param122,param123,param124,param125,param126,param127,param128,param129,param130,param131,param132,param133,param134,param135,param136,param137,param138,param139,param140,param141,param142,param143,param144,param145,param146,param147,param148,param149,param150,param151,param152,param153,param154,param155,param156,param157,param158,param159) q0,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31,q32,q33,q34,q35,q36,q37,q38,q39,q40,q41,q42,q43,q44,q45,q46,q47,q48,q49,q50,q51,q52,q53,q54,q55,q56,q57,q58,q59,q60,q61,q62,q63,q64,q65,q66,q67,q68,q69,q70,q71,q72,q73,q74,q75,q76,q77,q78,q79 { rx(pi/4) q0; rx(pi/4) q1; rx(pi/4) q2; rx(pi/4) q3; rx(pi/4) q4; rx(pi/4) q5; rx(pi/4) q6; rx(pi/4) q7; rx(pi/4) q8; rx(pi/4) q9; rx(pi/4) q10; rx(pi/4) q11; rx(pi/4) q12; rx(pi/4) q13; rx(pi/4) q14; rx(pi/4) q15; rx(pi/4) q16; rx(pi/4) q17; rx(pi/4) q18; rx(pi/4) q19; rx(pi/4) q20; rx(pi/4) q21; rx(pi/4) q22; rx(pi/4) q23; rx(pi/4) q24; rx(pi/4) q25; rx(pi/4) q26; rx(pi/4) q27; rx(pi/4) q28; rx(pi/4) q29; rx(pi/4) q30; rx(pi/4) q31; rx(pi/4) q32; rx(pi/4) q33; rx(pi/4) q34; rx(pi/4) q35; rx(pi/4) q36; rx(pi/4) q37; rx(pi/4) q38; rx(pi/4) q39; rx(pi/4) q40; rx(pi/4) q41; rx(pi/4) q42; rx(pi/4) q43; rx(pi/4) q44; rx(pi/4) q45; rx(pi/4) q46; rx(pi/4) q47; rx(pi/4) q48; rx(pi/4) q49; rx(pi/4) q50; rx(pi/4) q51; rx(pi/4) q52; rx(pi/4) q53; rx(pi/4) q54; rx(pi/4) q55; rx(pi/4) q56; rx(pi/4) q57; rx(pi/4) q58; rx(pi/4) q59; rx(pi/4) q60; rx(pi/4) q61; rx(pi/4) q62; rx(pi/4) q63; rx(pi/4) q64; rx(pi/4) q65; rx(pi/4) q66; rx(pi/4) q67; rx(pi/4) q68; rx(pi/4) q69; rx(pi/4) q70; rx(pi/4) q71; rx(pi/4) q72; rx(pi/4) q73; rx(pi/4) q74; rx(pi/4) q75; rx(pi/4) q76; rx(pi/4) q77; rx(pi/4) q78; rx(pi/4) q79; cx q79,q0; cx q0,q1; cx q1,q2; cx q2,q3; cx q3,q4; cx q4,q5; cx q5,q6; cx q6,q7; cx q7,q8; cx q8,q9; cx q9,q10; cx q10,q11; cx q11,q12; cx q12,q13; cx q13,q14; cx q14,q15; cx q15,q16; cx q16,q17; cx q17,q18; cx q18,q19; cx q19,q20; cx q20,q21; cx q21,q22; cx q22,q23; cx q23,q24; cx q24,q25; cx q25,q26; cx q26,q27; cx q27,q28; cx q28,q29; cx q29,q30; cx q30,q31; cx q31,q32; cx q32,q33; cx q33,q34; cx q34,q35; cx q35,q36; cx q36,q37; cx q37,q38; cx q38,q39; cx q39,q40; cx q40,q41; cx q41,q42; cx q42,q43; cx q43,q44; cx q44,q45; cx q45,q46; cx q46,q47; cx q47,q48; cx q48,q49; cx q49,q50; cx q50,q51; cx q51,q52; cx q52,q53; cx q53,q54; cx q54,q55; cx q55,q56; cx q56,q57; cx q57,q58; cx q58,q59; cx q59,q60; cx q60,q61; cx q61,q62; cx q62,q63; cx q63,q64; cx q64,q65; cx q65,q66; cx q66,q67; cx q67,q68; cx q68,q69; cx q69,q70; cx q70,q71; cx q71,q72; cx q72,q73; cx q73,q74; cx q74,q75; cx q75,q76; cx q76,q77; cx q77,q78; cx q78,q79; rx(pi/4) q0; rx(pi/4) q1; rx(pi/4) q2; rx(pi/4) q3; rx(pi/4) q4; rx(pi/4) q5; rx(pi/4) q6; rx(pi/4) q7; rx(pi/4) q8; rx(pi/4) q9; rx(pi/4) q10; rx(pi/4) q11; rx(pi/4) q12; rx(pi/4) q13; rx(pi/4) q14; rx(pi/4) q15; rx(pi/4) q16; rx(pi/4) q17; rx(pi/4) q18; rx(pi/4) q19; rx(pi/4) q20; rx(pi/4) q21; rx(pi/4) q22; rx(pi/4) q23; rx(pi/4) q24; rx(pi/4) q25; rx(pi/4) q26; rx(pi/4) q27; rx(pi/4) q28; rx(pi/4) q29; rx(pi/4) q30; rx(pi/4) q31; rx(pi/4) q32; rx(pi/4) q33; rx(pi/4) q34; rx(pi/4) q35; rx(pi/4) q36; rx(pi/4) q37; rx(pi/4) q38; rx(pi/4) q39; rx(pi/4) q40; rx(pi/4) q41; rx(pi/4) q42; rx(pi/4) q43; rx(pi/4) q44; rx(pi/4) q45; rx(pi/4) q46; rx(pi/4) q47; rx(pi/4) q48; rx(pi/4) q49; rx(pi/4) q50; rx(pi/4) q51; rx(pi/4) q52; rx(pi/4) q53; rx(pi/4) q54; rx(pi/4) q55; rx(pi/4) q56; rx(pi/4) q57; rx(pi/4) q58; rx(pi/4) q59; rx(pi/4) q60; rx(pi/4) q61; rx(pi/4) q62; rx(pi/4) q63; rx(pi/4) q64; rx(pi/4) q65; rx(pi/4) q66; rx(pi/4) q67; rx(pi/4) q68; rx(pi/4) q69; rx(pi/4) q70; rx(pi/4) q71; rx(pi/4) q72; rx(pi/4) q73; rx(pi/4) q74; rx(pi/4) q75; rx(pi/4) q76; rx(pi/4) q77; rx(pi/4) q78; rx(pi/4) q79; }
qreg q[80];
gate_EfficientSU2(pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4,pi/4) q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7],q[8],q[9],q[10],q[11],q[12],q[13],q[14],q[15],q[16],q[17],q[18],q[19],q[20],q[21],q[22],q[23],q[24],q[25],q[26],q[27],q[28],q[29],q[30],q[31],q[32],q[33],q[34],q[35],q[36],q[37],q[38],q[39],q[40],q[41],q[42],q[43],q[44],q[45],q[46],q[47],q[48],q[49],q[50],q[51],q[52],q[53],q[54],q[55],q[56],q[57],q[58],q[59],q[60],q[61],q[62],q[63],q[64],q[65],q[66],q[67],q[68],q[69],q[70],q[71],q[72],q[73],q[74],q[75],q[76],q[77],q[78],q[79];
