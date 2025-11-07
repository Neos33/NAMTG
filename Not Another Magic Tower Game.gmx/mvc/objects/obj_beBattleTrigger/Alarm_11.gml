//global.combatObj = combatObj;
global.inCombat = true;
player.frozen = false;
global.combatHp = global.hp;
global.roomX = player.x;
global.roomY = player.y;
global.mHP = 100;
global.mAtk = 90;
global.mDef = 50;
global.mEx = 300;
global.stageRoom = room;
global.defenseDamage = global.mAtk - global.defense;

//global.stageMusic = global.currentBGM;
sound_fix(sndgras);
//transition_steps = 150;
//transition_kind = 104;
room_goto(battleroomBE);
instance_destroy();

