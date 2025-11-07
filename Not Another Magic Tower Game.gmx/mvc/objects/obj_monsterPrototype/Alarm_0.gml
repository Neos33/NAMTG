global.combatObj = combatObj;
global.combatHp = global.hp;
global.mHP = hp;
global.mAtk = atk;
global.mDef = def;
if(global.inGallery)
{
    global.mEx = 0;
    global.roomX = global.galleryX;
    global.roomY = global.galleryY;
}
else
{
    global.mEx = ex;
    global.roomX = player.x;
    global.roomY = player.y;
}
global.stageRoom = room;

//global.stageMusic = global.currentBGM;
sound_stop_all();
//FMODInstanceSetPaused(global.currentBGM, true);
FMODInstanceSetPaused(global.curMusic, true);

if(isBoss || object_index == obj_demonLead)
{
    sound_fix(sndgras);
    //transition_kind = 104;
    if(object_index == obj_faShiLiu)
    {
        //transition_steps = 60;
        //transition_kind = 21;
    }
    else
    {     
        //transition_kind = 104;
    }
}
else
{
    if(object_index == obj_silverEvilSlime || object_index == obj_goldEvilSlime)
    {
        //transition_steps = 150;
        //transition_kind = 104;
    }
    else
    {
        //transition_steps = 50;
        //transition_kind = choose(101,102,103);
    }
}
if(global.special[6])
{
    global.Blockable = true;
}
else
{
    global.Blockable = false;
}
room_goto(mybattleroom);

