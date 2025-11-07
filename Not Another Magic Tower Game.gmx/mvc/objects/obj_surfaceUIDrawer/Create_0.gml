//spaceItems = 0;
deactivated = 0;
pauseImg = 0;
xx = 0;
yy = 0;
index = 0;
py = 0;
lvlRequired = 0;
currentExp = 0;
bonusGap = 0;

sx0 = 0;
sy0 = 0;
img_index = 0;
pageCount = 0;
mIndex = 0;
ppAvailable = 0;
count = 0;
maxPage = 0;
pnAvailable = 0;
sCount = 0;
ppx = 0;
ppy = 0;
pageY = 0;
sx = 0;
sy = 0

beginX = 0;
beginY = 0;
statusGap = 0;

img_index = 0;

spDes = 0;

px0 = 0;
py0 = 0;
iCount1 = 0;
maxSpecial = 0;
tempInd = 0;

specialSelection = 0;
spDes = 0;

bLineIndent = 0;

bColX1 = 0;
bY1 = 0;
bXGap = 0;
bYGap = 0;
bLineIndent = 0;
button1 = 0;

aIndex = 0;
achievementCount = 0;
sCount = 0;
aX = 0;
aY = 0;
infoGap = 0;

backupColor1 = 0;
backupColor2 = 0;

cheatSelection = 0;

isRefresh = 0;

surf1 = 0;
surf2 = 0;



sSpr = array_create(30);
swordsSpr = array_create(30);
sheildsSpr = array_create(30);
colorKey = array_create(30);
colorOffset = array_create(30);
description = array_create(30);




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
rm = array_create(30);

list = ds_list_create();
img_index = 0;

deactivated = false;
drawTeleportTarget = false;

alarm[0] = 1;
maxIndex = 6;
pauseImg = noone;
initialized = false;
initialized1 = false;
maxSpecial = 16;
specialPerLine = 11;
sSpr[0] = spr_floorTran;
sSpr[1] = spr_fairyLetter;
sSpr[2] = spr_expCoin;
sSpr[3] = spr_secretDetector;
sSpr[4] = spr_metalShoes;
sSpr[5] = spr_lostMemo;
sSpr[6] = spr_saintWand;
sSpr[7] = spr_magicRing;
sSpr[8] = spr_kuiHuaBaoDian;
sSpr[9] = spr_frozenBadge;
sSpr[10] = spr_strangeMap;
sSpr[11] = spr_saintCross;
sSpr[12] = spr_renalTreasure;
sSpr[13] = spr_fairyTail;
sSpr[14] = spr_magicCloak1;
sSpr[15] = spr_enegyAplifier1;
sSpr[16] = spr_saintSword1;
sSpr[17] = spr_saintShield1;
sSpr[18] = spr_fairyCrystal;
swordsSpr[0] = spr_sword_lv1;
swordsSpr[1] = spr_sword_lv2;
swordsSpr[2] = spr_sword_lv3;
sheildsSpr[0] = spr_shield_lv1;
sheildsSpr[1] = spr_shield_lv2;
sheildsSpr[2] = spr_shield_lv3;

colorKey[0] = spr_diamondKey;
colorKey[1] = spr_clubKey;
colorKey[2] = spr_heartKey;
colorKey[3] = spr_spadeKey;
colorOffset[0] = -14;
colorOffset[1] = -6;
colorOffset[2] = 4;
colorOffset[3] = 14;

mIndex = 0;
aIndex = 0;
ppx = 380;
pnx = 600;
pageY = 582;
pageX = 480;

description[0] = "An artifact that make floor transmission possible. Click 'H' to use it. Note that the magic only take effect for floors once you arrived.";
description[1] = "Looks like fairy's note book. But seems to be written with fariy language, cannot read at all."
description[2] = "An ancient coin. It provides you addtional exp(1.5x) when beating a monster.";
description[3] = "A crystal orb. It helps you detect secret walls in the magic tower."
description[4] = "A really heavy metal shoes. Keep you no injury from lava and no slipery on ice."
description[5] = "The lost memo. It recorded descriptions for all achievements."
description[6] = "The saint wand that contains mysterious power. It can block the first damage you received in each battle.";
description[7] = "The magic ring makes you be able to gathering power by long pressing 'Shoot' button. The longer you pressed, the larger amount of power you gathered. (Power range 1x ~ 2.25x)";
description[8] = "An old book. It records the essence of the combat, the formulas help decreases immunity frame of enemies.";
description[9] = "The frozen badge, which exudes extreme chill. The holder can use it to freeze the lava. Use it the same way as opening the doors.";
description[10] = "A strange map, cannot get any info from it at all. Fairy said to bring it to 15F first.";
description[11] = "";
description[12] = "";
description[13] = "";
description[14] = "The Magic cloak blocks damages for you in each battle before you losing hp. The block amount equals to the total monsters number that you killed.(Does not take effect in gallery)";
description[15] = "The energy stone. Once set to the magic ring, it will amplify the maximum energy can be gathered by the magic ring to 3.5x, and speed up the time that is needed to get full charged.";
description[16] = "The saint sword enhance every damange you deal by 50 percentage.(Does not take effect in gallery)";
description[17] = "The saint shield can reduce every damage you received by 50 percentage.(Does not take effect in gallery)";
description[18] = "Fairy crystal, the most valuable treasure for fairies, will heal your wounds during the fight slowly(5hp/s outside gallery, 1hp per 2 secs in challenge room) for the damage you just received.";

achievementCount = 109;

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

rx[0,0] = 224 + 17;
ry[0,0] = 448 + 23;
rx[0,1] = 480 + 17;
ry[0,1] = 64;
rx[1,0] = 480;
ry[1,0] = 544 + 23;
rx[1,1] = 704 + 17;
ry[1,1] = 544 + 23;
rx[2,0] = 704 + 17;
ry[2,0] = 544 + 23;
rx[2,1] = 704;
ry[2,1] = 32 + 23;
rx[3,0] = 704 + 17;
ry[3,0] = 32 + 23;
if(global.yellowDoors[8])
{
    rx[3,1] = 512;
    ry[3,1] = 288 + 23;
}
else if(global.yellowDoors[10])
{
    rx[3,1] = 480;
    ry[3,1] = 288 + 23;
}
else if(global.yellowDoors[9])
{
    rx[3,1] = 512;
    ry[3,1] = 256 + 23;
}
else if(global.yellowDoors[11])
{
    rx[3,1] = 512;
    ry[3,1] = 320 + 23;
}
rx[4,0] = 512 + 17;
ry[4,0] = 288 + 23;
rx[4,1] = 704 + 17;
ry[4,1] = 288 + 23;
rx[5,0] = 736 + 17;
ry[5,0] = 64 + 23;
rx[5,1] = 576 + 17;
ry[5,1] = 32 + 23;
rx[6,0] = 576 + 17;
ry[6,0] = 32 + 23;
rx[6,1] = 704 + 17;
ry[6,1] = 32 + 23;
rx[7,0] = 736 + 17;
ry[7,0] = 64 + 23;
rx[7,1] = 256 + 17;
ry[7,1] = 32 + 23;
rx[8,0] = 256 + 17;
ry[8,0] = 32 + 23;
rx[8,1] = 704 + 17;
ry[8,1] = 32 + 23;
rx[9,0] = 704 + 17;
ry[9,0] = 32 + 23;
rx[9,1] = 256 + 17;
ry[9,1] = 544 + 23;
rx[10,0] = 256 + 17;
ry[10,0] = 544 + 23;
rx[10,1] = 480 + 17;
ry[10,1] = 192 + 23;
/*if(global.testAvailable)
{
    rx[11,0] = 425 + 17;
    ry[11,0] = 288 + 23;
}
else
{
    rx[11,0] = 256 + 17;
    ry[11,0] = 544 + 23;
}*/
rx[11,0] = 425 + 17;
ry[11,0] = 288 + 23;
rx[11,1] = 535 + 17;
ry[11,1] = 288 + 23;
rx[12,0] = 576 + 17;
ry[12,0] = 288 + 23;
rx[12,1] = 384 + 17;
ry[12,1] = 288 + 23;
rx[13,0] = 470 + 17;
ry[13,0] = 288 + 23;
rx[13,1] = 490 + 17;
ry[13,1] = 288 + 23;
rx[14,0] = 352 + 17;
ry[14,0] = 320 + 23;
rx[14,1] = 464 + 17;
ry[14,1] = 480 + 23;
rx[15,0] = 484 + 17;
ry[15,0] = 544 + 23;
rx[15,1] = 458 + 17;
ry[15,1] = 32 + 23;
rx[16,0] = 480 + 17;
ry[16,0] = 64 + 23;
rx[16,1] = 480 + 17;
ry[16,1] = 448 + 23;
rx[17,0] = 464 + 17;
ry[17,0] = 544 + 23;
rx[17,1] = 480 + 17;
ry[17,1] = 32 + 23;
rx[18,0] = 464 + 17;
ry[18,0] = 544 + 23;
rx[18,1] = 480 + 17;
ry[18,1] = 32 + 23;
rx[19,0] = 416 + 17;
ry[19,0] = 544 + 23;

rm[0] = rBegining;
rm[1] = r1F;
rm[2] = r2F;
rm[3] = r3F;
rm[4] = r4F;
rm[5] = r5F;
rm[6] = r6F;
rm[7] = r7F;
rm[8] = r8F;
rm[9] = r9F;
rm[10] = r10F;
/*if(global.testAvailable)
{
 rm[11] = r11F;
}
else
{
 rm[11] = r11F_Demo;
}*/
rm[11] = r11F;
rm[12] = r12F;
rm[13] = r13F;
rm[14] = r14F;
rm[15] = r15F;
rm[16] = r16F;
rm[17] = r17F;
rm[18] = r18F;
rm[19] = rFinalBoss;

/* */
/*  */
