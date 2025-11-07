if(spr == -1 || spr == spr_rotateQuestionMark) exit;
if(spr == spr_devilLead_combat)
{
    global.FullHp = gHp;
}
if(abs(player.x - x) < 10 && !triggered)
{
   triggered = true;
   global.monsters[350] = false;
   global.combatIndex = 350;
   global.GalleryBossFight = true;
   global.GalleryBossFightHp = gHp;
   global.GalleryBossFightNum = 1;
   global.GalleryBossFightInd = 0;
   global.combatObj = combatObj;
   global.mHP = mHp;
   global.defenseDamage = bossDmg;
   global.attackDamage = hitDmg;
   global.mEx = 0;
   //SS_StopSound(global.currentBGM);
   FMODInstanceStop(global.currentBGM);
   sound_fix(sndgras);
   if(player.x > x)
   {
        global.roomX = x + 32;
   }
   else
   {
        global.roomX = x - 32;
   }
   if(global.special[6])
   {
        global.Blockable = true;
   }
   else
   {
        global.Blockable = false;
   }
   global.roomY = player.y;
   global.stageRoom = room;
   global.inCombat = true;
   global.currentBGM = scrAudioGetID("BGM_Null");
   //transition_steps = 100;
   //transition_kind = 104;
   room_goto(roomTo);
}

