global.paused = 0;
if !global.audio_sound_muted{
    audio_playsound(sndDeath);
}
//start_vol = SS_GetSoundVol(global.currentBGM);
start_vol = FMODInstanceGetVolume(global.currentBGM);
now_vol = start_vol;
alarm[0]=5;

