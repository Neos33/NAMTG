global.inCombat = true;
global.combatIndex = 1000;
global.attackDamage = global.attack - 130;
global.defenseDamage = 250 - global.defense;

global.combatHp = global.hp;
global.roomX = player.x;
global.roomY = player.y;
global.mAtk = 250;
global.mDef = 130;
global.mEx = 0;
global.stageRoom = room;

if(global.special[6])
{
    global.Blockable = true;
}
else
{
    global.Blockable = false;
}

if(global.MagicCloak)
{
    global.MagicHP = global.TotalKills;
}

player.frozen = false;

sound_play(sndgras);
//transition_kind = 21;
//transition_kind = 104;
//transition_steps = 80;
room_goto(rNPCBattle);

