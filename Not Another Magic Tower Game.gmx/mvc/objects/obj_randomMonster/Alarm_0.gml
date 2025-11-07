global.combatObj = combatObj;
global.combatHp = global.hp;
global.roomX = player.x;
global.roomY = player.y;
global.mHP = 50;
global.mAtk = global.attack;
global.mDef = global.defense;
global.mEx = 0;
global.stageRoom = rB2F;

if(global.special[6])
{
    global.Blockable = true;
}
else
{
    global.Blockable = false;
}


sound_stop_all();
FMODInstanceSetPaused(global.curMusic, true);

audio_playsound(sndThunder);
//transition_kind = 21;
//transition_steps = 150;
room_goto(mybattleroom);

