var fightInd;
global.GalleryBossFight = true;
global.CustomBrHits = acceptableHits;
global.GalleryBossFightHp = acceptableHits * 99 + 1;
global.FullHp = global.GalleryBossFightHp;
global.GalleryBossFightNum = ds_list_size(global.csOrder[global.ChallengeSetIndex]);
global.GalleryBossFightInd = 0;
global.GalleryBRChallengeId = challengeId;
global.BR_Points = totalPoints + hitOffset;
global.BR_Status = 0;
for(var i=0;i<global.GalleryBossFightNum;i+=1)
{
    fightInd = ds_list_find_value(global.csOrder[global.ChallengeSetIndex], i);
    global.brObj[i] = bossObj[fightInd];
    global.brMHp[i] = bossHp[fightInd];
    global.brBossDmg[i] = bossDmg[fightInd];
    global.brHitDmg[i] = bossDefDmg[fightInd];
    global.GalleryBossFightRoom[i] = bossRoom[fightInd];
}
player.frozen = false;
//SS_StopSound(global.currentBGM);
FMODInstanceStop(global.currentBGM);
global.currentBGM = scrAudioGetID("BGM_Null");
sound_fix(sndgras);
if(global.special[6])
{
    global.Blockable = true;
}
else
{
    global.Blockable = false;
}

//transition_kind = 104;
//transition_steps = 100;
global.combatObj = global.brObj[global.GalleryBossFightInd];
global.mHP = global.brMHp[global.GalleryBossFightInd];
global.defenseDamage = global.brBossDmg[global.GalleryBossFightInd];
global.attackDamage = global.brHitDmg[global.GalleryBossFightInd];
global.inCombat = true;
global.stageRoom = room;
global.roomX = player.x;
global.roomY = player.y;
room_goto(global.GalleryBossFightRoom[global.GalleryBossFightInd]);


