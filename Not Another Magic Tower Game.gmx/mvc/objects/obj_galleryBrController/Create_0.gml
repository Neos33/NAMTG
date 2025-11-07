
drawTxt = 0;
draw = 0;
sx = 0;
sy = 0;
txtAlpha = 0;
challengeId = 0;

var ind;
ind = 0;
//0 - yaranaika
bossName[ind] = "Yaranaika";
bossObj[ind] = obj_light_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 6;
bossPoints[ind,1] = 7;
bossPoints[ind,2] = 8;
bossPoints[ind,3] = 9;
bossRoom[ind] = battleMiniboss1;
ind += 1;

//1 - 3b6
bossName[ind] = "3B6";
bossObj[ind] = obj_3b6_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 7;
bossPoints[ind,1] = 7;
bossPoints[ind,2] = 8;
bossPoints[ind,3] = 9;
bossRoom[ind] = battleroomBE;
ind += 1;

//2 - FaShiLiu
bossName[ind] = "FaShiLiu";
bossObj[ind] = obj_faShiLiu_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 30;
bossHp[ind] = 666;
bossPoints[ind,0] = 5;
bossPoints[ind,1] = 6;
bossPoints[ind,2] = 8;
bossPoints[ind,3] = 10;
bossRoom[ind] = rFaShiliu01;
ind += 1;

//3 - Faro
bossName[ind] = "Faro";
bossObj[ind] = obj_faro_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 6;
bossPoints[ind,1] = 7;
bossPoints[ind,2] = 9;
bossPoints[ind,3] = 11;
bossRoom[ind] = rFaro1;
ind += 1;

//4 - Diamante
bossName[ind] = "Mr.Diamante";
bossObj[ind] = obj_diamante_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 20;
bossHp[ind] = 333;
bossPoints[ind,0] = 8;
bossPoints[ind,1] = 8;
bossPoints[ind,2] = 9;
bossPoints[ind,3] = 10;
bossRoom[ind] = rDiamante;
ind += 1;

//5 - Trebole
bossName[ind] = "Mr.Trebole";
bossObj[ind] = obj_trebole_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 12;
bossPoints[ind,1] = 12;
bossPoints[ind,2] = 13;
bossPoints[ind,3] = 14;
bossRoom[ind] = rTrebole;
ind += 1;

//6 - Corazone
bossName[ind] = "Mr.Corazone";
bossObj[ind] = obj_corazone_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 20;
bossHp[ind] = 333;
bossPoints[ind,0] = 6;
bossPoints[ind,1] = 6;
bossPoints[ind,2] = 7;
bossPoints[ind,3] = 8;
bossRoom[ind] = rCorazone;
ind += 1;

//7 - Pica
bossName[ind] = "Mr.Pica";
bossObj[ind] = obj_pica_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 10;
bossPoints[ind,1] = 10;
bossPoints[ind,2] = 11;
bossPoints[ind,3] = 12;
bossRoom[ind] = rPica;
ind += 1;

//8 - 4b6
bossName[ind] = "4B6";
bossObj[ind] = obj_4b6_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 7;
bossPoints[ind,1] = 7;
bossPoints[ind,2] = 8;
bossPoints[ind,3] = 10;
bossRoom[ind] = rNPCBattle;
ind += 1;

//9 - tower lead
bossName[ind] = "The Tower Lead";
bossObj[ind] = obj_demonLead_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 20;
bossHp[ind] = 6666;
bossPoints[ind,0] = 12;
bossPoints[ind,1] = 13;
bossPoints[ind,2] = 14;
bossPoints[ind,3] = 15;
bossRoom[ind] = rDemonLead;
ind += 1;

//10 - fapple
bossName[ind] = "Fapple";
bossObj[ind] = obj_taisa;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 14;
bossPoints[ind,1] = 15;
bossPoints[ind,2] = 16;
bossPoints[ind,3] = 17;
bossRoom[ind] = rTaisa;
ind += 1;

//11 - Fabla
bossName[ind] = "The Fabla";
bossObj[ind] = obj_fabla_combat;
bossDmg[ind] = 99;
bossDefDmg[ind] = 1;
bossHp[ind] = 1;
bossPoints[ind,0] = 14;
bossPoints[ind,1] = 14;
bossPoints[ind,2] = 15;
bossPoints[ind,3] = 16;
bossRoom[ind] = rFabla;
ind += 1;

var ind;
ind = 0;

//set 0 - 8b6 = FaShiLiu + 3b6 + 4b6
challengeSetName[ind] = "8B6";
challengeSetMembersCount[ind] = 3;
challengeSetMemberId[ind, 0] = 2;
challengeSetMemberId[ind, 1] = 1;
challengeSetMemberId[ind, 2] = 8;
challengeSetHits[ind] = 8;
challengeSetRewardInfo[ind] = "HP 300";
ind += 1;

//set 1 - Red Manace = FaShiLiu + Diamante + Corazone
challengeSetName[ind] = "Red Manace";
challengeSetMembersCount[ind] = 3;
challengeSetMemberId[ind, 0] = 2;
challengeSetMemberId[ind, 1] = 4;
challengeSetMemberId[ind, 2] = 6;
challengeSetHits[ind] = 6;
challengeSetRewardInfo[ind] = "HP 300";
ind += 1;

//set 2 - Devas Hype = Diamante + Trebole + Corazone + Pica
challengeSetName[ind] = "Devas Hype";
challengeSetMembersCount[ind] = 4;
challengeSetMemberId[ind, 0] = 4;
challengeSetMemberId[ind, 1] = 5;
challengeSetMemberId[ind, 2] = 6;
challengeSetMemberId[ind, 3] = 7;
challengeSetHits[ind] = 11;
challengeSetRewardInfo[ind] = "Magic Cloak. Block specific amount of damange before you losing hp in each battle.";
ind += 1;

//set 3 - FaAll = FaShiLiu + Faro + Fapple
challengeSetName[ind] = "FaAll";
challengeSetMembersCount[ind] = 3;
challengeSetMemberId[ind, 0] = 2;
challengeSetMemberId[ind, 1] = 3;
challengeSetMemberId[ind, 2] = 10;
challengeSetHits[ind] = 6;
challengeSetRewardInfo[ind] = "HP 500";
ind += 1;

//set 4 - Avoidance Compilation - Yaranaika + 3b6 + Trebole + Pica  
challengeSetName[ind] = "Avoidance Compilation";
challengeSetMembersCount[ind] = 4;
challengeSetMemberId[ind, 0] = 0;
challengeSetMemberId[ind, 1] = 1;
challengeSetMemberId[ind, 2] = 5;
challengeSetMemberId[ind, 3] = 7;
challengeSetHits[ind] = 10;
challengeSetRewardInfo[ind] = "HP 800";
ind += 1;

//set 5 - Behemoths = Faro + Tower Lead + Fapple
challengeSetName[ind] = "Behemoths";
challengeSetMembersCount[ind] = 3;
challengeSetMemberId[ind, 0] = 3;
challengeSetMemberId[ind, 1] = 9;
challengeSetMemberId[ind, 2] = 10;
challengeSetHits[ind] = 8;
challengeSetRewardInfo[ind] = "Saint Water. Double your current HP.";
ind += 1;

//set 6 - S.S.H - Faro + Diamante + 4b6 + Tower Lead
challengeSetName[ind] = "S.S.H";
challengeSetMembersCount[ind] = 4;
challengeSetMemberId[ind, 0] = 3;
challengeSetMemberId[ind, 1] = 4;
challengeSetMemberId[ind, 2] = 8;
challengeSetMemberId[ind, 3] = 9;
challengeSetHits[ind] = 10;
challengeSetRewardInfo[ind] = "HP 800";
ind += 1;

//set 7 The Gay Alliance - Yaranaika + 4b6 + Fapple
challengeSetName[ind] = "The Gay Alliance";
challengeSetMembersCount[ind] = 3;
challengeSetMemberId[ind, 0] = 0;
challengeSetMemberId[ind, 1] = 8;
challengeSetMemberId[ind, 2] = 10;
challengeSetHits[ind] = 9;
challengeSetRewardInfo[ind] = "HP 500";
ind += 1;

//set 8 It's Fapple Time - Fapple + Diamante + Trebole";
challengeSetName[ind] = "It's Fapple Time";
challengeSetMembersCount[ind] = 3;
challengeSetMemberId[ind, 0] = 10;
challengeSetMemberId[ind, 1] = 4;
challengeSetMemberId[ind, 2] = 5;
challengeSetHits[ind] = 11;
challengeSetRewardInfo[ind] = "HP 800";
ind += 1;


if(global.MaxChallengePoints < global.BR_Points)
{
    global.MaxChallengePoints = global.BR_Points;
}

alarm[0] = 1;

if(global.challengeRewards[2])
{
    global.MagicCloak = true;
    global.special[14] = true;
    if(!global.achievements[100])
    {
        if(!instance_exists(obj_achievements))
        {
            ch = instance_create(0,608,obj_achievements);
            ch.index = 100;
            global.achievements[100] = 1;
        }
    }
}
if(global.challengeRewards[5])
{
    if(!global.achievements[101])
    {
        if(!instance_exists(obj_achievements))
        {
            ch = instance_create(0,608,obj_achievements);
            ch.index = 101;
            global.achievements[101] = 1;
        }
    }
}
if(global.SaintShield && !global.achievements[104])
{
    if(!instance_exists(obj_achievements))
    {
        ch = instance_create(0,608,obj_achievements);
        ch.index = 104;
        global.achievements[104] = 1;
    }
}

var brAch, ach;
brAch = true;
for(var i=0;i<9;i+=1)
{
    if(!global.challengeSets[i])
    {
        brAch = false;
    }
}

if(brAch && !global.achievements[106])
{
    ch = instance_create(0,608,obj_achievements);
    ch.index = 106;
    global.achievements[106] = 1;
}

