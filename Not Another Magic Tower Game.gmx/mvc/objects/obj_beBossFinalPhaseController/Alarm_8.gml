/// @description  Battle finished
global.inCombat = false;
if(global.GalleryBossFight)
{
    if(global.GalleryBossFightNum > 1 && global.GalleryBossFightInd < global.GalleryBossFightNum - 1)
    {
        global.GalleryBossFight = true;
        //transition_kind = 21;
        //transition_steps = 100;
        global.GalleryBossFightInd += 1;
        global.combatObj = global.brObj[global.GalleryBossFightInd];
        global.mHp = global.brMHp[global.GalleryBossFightInd];
        global.mAtk = global.defense + global.brBossDmg[global.GalleryBossFightInd];
        global.mDef = global.attack - global.brHitDmg[global.GalleryBossFightInd];
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
        player.x = global.roomX;
        player.y = global.roomY;
    }
    player.frozen = false;
    player.djump = true;
    bow.visible = true;
    bow.image_alpha = 1;
}
else
{
    if(!global.achievements[19])
    {
        if(!instance_exists(obj_achievements))
        {
            ch = instance_create(0,608,obj_achievements);
            ch.index = 19;
            global.achievements[19] = 1;
        }
    }
    //transition_kind = 21;
    room_goto(r10F);   
    player.x = 480 + 17;
    player.y = 192 + 23;
}

