if(player_is_alive())
{
    with(black5)instance_destroy();
    //instance_activate_object(obj_superFasf_combat);
    obj_superFasf_combat.image_blend = c_white;
    obj_superFasf_combat.x = 400;
    obj_superFasf_combat.y = 200;
    //transition_kind=102;
    //transition_steps = 100;
    room_goto(battlefasfroom);
    
    audio_resumemusic_volume(scrAudioGetID("BGMsupfasf"));
    FMODInstanceSetVolume(scrAudioGetID("BGMsupfasf"), 2000+80*100 / 10000);
    with(obj_superFasf_combat)alarm[11]=20;
}

