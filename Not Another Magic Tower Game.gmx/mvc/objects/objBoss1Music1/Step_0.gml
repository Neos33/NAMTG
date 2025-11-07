if FMODInstanceGetPosition(scrAudioGetID("BGM_Corazone")) / song_byte > loop_end / song_length
{
    FMODInstanceSetPosition(scrAudioGetID("BGM_Corazone"), loop_start / song_length * song_byte);
}

if fadeOut
{
    FMODInstanceSetVolume(scrAudioGetID("BGM_Corazone"), now_vol);
    if now_vol >= 2000
    {
        now_vol -= 25;
    }
    else
    {
        FMODInstanceStop(scrAudioGetID("BGM_Corazone"));
        //curMusic = -1;
        //filePlaying = 0;
    }
}

/*if SS_GetSoundPosition(global.BGM_Corazone)/song_byte > loop_end/song_length{
    SS_SetSoundPosition(global.BGM_Corazone,loop_start/song_length*song_byte);
}

if fadeOut{
    SS_SetSoundVol(global.BGM_Corazone,now_vol);
    if now_vol >=2000{
        now_vol -= 25;
    }
    else{
        SS_StopSound(global.BGM_Corazone);
        //curMusic = -1;
        //filePlaying = 0;
    }
}
*/

/* */
/*  */
