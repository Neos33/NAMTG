global.inCombat = false;
with(obj_combatPlayerKiller)
{
    instance_destroy();
}
global.monsters[global.combatIndex] = 1;
if(room != battleroom12)
{
    if battleBGM != noone
        sound_stop(battleBGM);
}
//SS_ResumeSound(global.stageMusic);
if(player_is_alive() && player.x > 0)
{
    
    if(!global.isRandom)
    {
        //transition_kind = 21;
    }
    room_goto(global.stageRoom);
    if(global.special[2])
    {
        global.expBonus += floor(global.mEx * 1.5);
    }
    else
    {
        global.expBonus += global.mEx;
    }
    
    player.x = global.roomX;
    player.y = global.roomY;
}

