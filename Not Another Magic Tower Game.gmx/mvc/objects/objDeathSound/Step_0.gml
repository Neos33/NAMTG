if !global.audio_music_muted{
    //SS_SetSoundVol(global.currentBGM,now_vol);
    FMODInstanceSetVolume(global.currentBGM, now_vol);
    if now_vol >=2000{
        now_vol -= 100;
    }
    else{
        //SS_PauseSound(global.currentBGM);
        FMODInstanceSetPaused(global.currentBGM, true);
        global.paused = 1;
    }
}

