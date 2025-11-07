if !global.audio_sound_muted{
    if !FMODInstanceIsPlaying(SE_Death){
        FMODInstanceSetVolume(SE_Death,0.9*(2000+80*global.audio_sound_volume));
        FMODSoundPlay(SE_Death, false);
    }
}
/*
if !global.audio_sound_muted{
    if !SS_IsSoundPlaying(SE_Death){
        SS_SetSoundVol(SE_Death,0.9*(2000+80*global.audio_sound_volume));
        SS_PlaySound(SE_Death);
    }
}

/* */
/*  */
