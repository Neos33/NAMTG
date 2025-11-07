/// @description  Arrays

var _total = 13;
a_bns = array_create(_total);
d_bns = array_create(_total);
h_bns = array_create(_total);

k1_bns = array_create(_total);
k2_bns = array_create(_total);
k3_bns = array_create(_total);
k4_bns = array_create(_total);
k5_bns = array_create(_total);
k6_bns = array_create(_total);





a_bns[1] = 0;
d_bns[1] = 0;
h_bns[1] = 3;
global.levelRequired[0] = 30;

a_bns[2] = 0;
d_bns[2] = 2;
h_bns[2] = 5;
global.levelRequired[1] = 100;

a_bns[3] = 2;
d_bns[3] = 0;
h_bns[3] = 9;
global.levelRequired[2] = 250;

a_bns[4] = 2;
d_bns[4] = 2;
h_bns[4] = 15;
global.levelRequired[3] = 500;

k1_bns[5] = 1;
k2_bns[5] = 1;
k3_bns[5] = 1;
global.levelRequired[4] = 800;

k4_bns[6] = 1;
global.levelRequired[5] = 1250;

h_bns[7] = 100;
global.levelRequired[6] = 1800;

d_bns[8] = 10;
global.levelRequired[7] = 2500;

a_bns[9] = 10;
global.levelRequired[8] = 3500;

k1_bns[10] = 1;
k2_bns[10] = 1;
k3_bns[10] = 1;
k4_bns[10] = 1;
k5_bns[10] = 1;
k5_bns[10] = 1;
global.levelRequired[9] = 4500;

a_bns[11] = 3;
d_bns[11] = 3;
h_bns[11] = 300;
global.levelRequired[10] = 5700;

global.levelRequired[11] = 99999;

startX = 64; 
startY = 64;
currentExp = global.playerExp;
levelExp = global.levelExp;
levelRequired = global.levelRequired[global.currentLevel];
isSound = false;
alarm[0] = 1;

special = false;
debug = false;

baseInfoX = 0;
baseInfoY = 0;

amount = 0;
finalAmount = 0;

