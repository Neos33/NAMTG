/// @description  Volume
if(volume>200)
{
    //SS_SetSoundVol(global.BGMsupfasf,volume);
    //FMODInstanceSetVolume(scrAudioGetID("BGMsupfasf"), volume / 10000);
    FMODInstanceSetVolume(global.current_battle_bgm, volume / 10000);
    volume-=150;
    alarm[7]=1;
}
else if(player_is_alive())
{
    alarm[3]=0;
    alarm[4]=0;
    alarm[5]=0;
    alarm[6]=0;
    //shoot =false;
    visible=0;
    x=100;
    y=100;
    image_speed = 1/8;
    //SS_PauseSound(global.BGMsupfasf);
    //FMODInstanceSetPaused(scrAudioGetID("BGMsupfasf"), true);
    FMODInstanceSetPaused(global.current_battle_bgm, true);
    room_goto(Roomavoidence);
    //transition_steps = 20;
    //transition_kind=21;
}

