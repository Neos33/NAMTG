
global.currentBGM = scrAudioGetID("BGM_Faro");
if(FMODInstanceGetPaused(scrAudioGetID("BGM_Faro")))
{
    audio_resumemusic_volume(scrAudioGetID("BGM_Faro"));
}
else if(!FMODInstanceIsPlaying(scrAudioGetID("BGM_Faro")))
{
    audio_playmusic_volume(scrAudioGetID("BGM_Faro"));   
}


