startX = -16;
startY = 176;
spikeLevel = -16;

totalAmmount = 5;
currentAmmount = 0;
currentIndex = 0;

mList = ds_list_create();

tdMonster[0] = obj_tdMonster_smallSlime;
tdMonster[1] = obj_tdMonster_stone;
tdMonster[2] = obj_tdMonster_skeletonLead;
tdMonster[3] = obj_tdMonster_superFasf;
tdMonster[4] = obj_tdMonster_redKnight;
tdMonster[5] = noone;

tdSpd[0] = 1;
tdInterval[0] = 50;
tdAmmount[0] = 15;
tdBreak[0] = 250;
tdMName[0] = "Small Slime";
tdSpr[0] = spr_dlSmallSlime;
tdMAtk[0] = 150;
tdMDef[0] = 100;
tdMHP[0] = 60;

tdSpd[1] = 0.5;
tdInterval[1] = 40;
tdAmmount[1] = 10;
tdBreak[1] = 350;
tdSpr[1] = spr_dlStone;
tdMName[1] = "Stone";
tdMAtk[1] = 165;
tdMDef[1] = 120;
tdMHP[1] = 150;

tdSpd[2] = 1.5;
tdInterval[2] = 50;
tdAmmount[2] = 5;
tdBreak[2] = 350;
tdSpr[2] = spr_dlSkeletonLead;
tdMName[2] = "Skeleton Elete";
tdMAtk[2] = 190;
tdMDef[2] = 115;
tdMHP[2] = 100;

tdSpd[3] = 1;
tdInterval[3] = 60;
tdAmmount[3] = 4;
tdBreak[3] = 350;
tdSpr[3] = spr_dlSuperFasf;
tdMName[3] = "Super Fasf";
tdMAtk[3] = 200;
tdMDef[3] = 125;
tdMHP[3] = 80;

tdSpd[4] = 1;
tdInterval[4] = 70;
tdAmmount[4] = 3;
tdBreak[4] = 500;
tdSpr[4] = spr_dlRedKnight;
tdMName[4] = "Red Knight";
tdMAtk[4] = 180;
tdMDef[4] = 130;
tdMHP[4] = 120;

tdSpd[5] = 0;
tdInterval[5] = 0;
tdAmmount[5] = 0;
tdBreak[5] = 0;
tdSpr[5] = sprEmpty;
tdMName[5] = "";
tdMAtk[5] = 0;
tdMDef[5] = 0;
tdMHP[5] = 0;

hide = true;
atDmg = global.attack - tdMDef[currentIndex];
dfDmg = tdMAtk[currentIndex] - global.defense;

alarm[0] = 30;




isBoss = false;
special = false;
time = 0;

