global.inCombat = false;
with(obj_combatPlayerKiller)
{
    instance_destroy();
}
if(!global.achievements[84])
{
    var ch = instance_create(0,608,obj_achievements);
    ch.index = 84;
    global.achievements[84] = true;
}

if(player_is_alive() && player.x > 0)
{
    if(global.GalleryBossFight && global.GalleryBossFightNum > 1 && global.GalleryBossFightInd < global.GalleryBossFightNum - 1)
    {
        //transition_kind = 21;
        //transition_steps = 100;
        global.GalleryBossFightInd += 1;
        global.combatObj = global.brObj[global.GalleryBossFightInd];
        global.mHP = global.brMHp[global.GalleryBossFightInd];
        global.defenseDamage = global.brBossDmg[global.GalleryBossFightInd];
        global.attackDamage = global.brHitDmg[global.GalleryBossFightInd];
        room_goto(global.GalleryBossFightRoom[global.GalleryBossFightInd]);
    }
    else
    {
        if(global.GalleryBossFight && global.GalleryBossFightNum > 1)
        {
            global.GalleryBossFight = false;
            global.GalleryBossFightNum = 0;
            global.GalleryBossFightInd = 0;
            global.BR_Status = 1;
        }
        //transition_kind = 21;
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
}

