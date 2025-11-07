var __b__;
__b__ = action_if_variable(pauseon, 0, 0);
if __b__
{
/*
//���j���[��ʂłȂ���΃Q�[������[�h�i���X�^�[�g�j
if(global.isJK && room != ExtraJKBonus && room != ExtraJKPortal)
{
    if(!keyboard_check_direct(vk_control))
       exit;
}

// sound function
//SS_StopSound(SE_Death);
sound_stop(sndDeath);
if(instance_exists(obj_combatController))
{
    with(obj_combatController)
    {
        if(battleBGM) sound_stop(battleBGM);
    }
}
global.inCombat = false;
if instance_exists(objDeathSound){
    if !global.paused{
        //SS_SetSoundVol(curMusic,objDeathSound.start_vol);
        with objDeathSound instance_destroy();
    }
    else{
        //if !global.audio_music_muted{
        //    SS_SetSoundVol(curMusic,2000+80*global.audio_music_volume);
        //    SS_ResumeSound(curMusic);
        //}
        with objDeathSound instance_destroy();
    }
}
// restart function
if(room != rInit && room != rMenu && room != rSelectStage && room != rTitle && room != rBadEnding && room != rTruth){
global.death[global.savenum]=0
with(player){
    instance_destroy();
}
with(bow){
    instance_destroy();
}
with(obj_superFasf_combat)
{
    instance_destroy();
}
with(obj_faShiLiu_combat)
{
    instance_destroy();
}
with(obj_faro_combat)
{
    instance_destroy();
}
with(obj_osuController)
{
    instance_destroy();
}
with(obj_evilDragon_combat)
{
    instance_destroy();
}
with(obj_tlController)
{
    instance_destroy();
}
if(instance_exists(player) or instance_exists(player2)){
    saveDeathTime();
    if fps!=0{
            if !global.clear
            global.timestep[global.savenum] += 2*room_speed/fps;
    }
}
//sound_stop_all();
loadGame();
loadAchievements();
global.isRandom = false;
ini_open(global.sfname);    // save file name, change this in the obj_options_init object;

global.leftbutton = ini_read_real("Controls","Left",37);
global.rightbutton = ini_read_real("Controls","Right",39);
global.upbutton = ini_read_real("Controls","Up",38);
global.downbutton = ini_read_real("Controls","Down",40);
global.jumpbutton = ini_read_real("Controls","Jump",16);
global.shotbutton = ini_read_real("Controls","Shoot",90);
global.restartbutton = ini_read_real("Controls","Restart",82);
global.pausebutton = ini_read_real("Controls","Pause",80);
global.skipbutton = ini_read_real("Controls","Skip",83);
global.menubutton = ini_read_real("Controls","Menu",88);

ini_close();
}

/* */
}
/*  */
