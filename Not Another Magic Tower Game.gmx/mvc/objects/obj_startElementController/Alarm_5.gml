if(FMODInstanceIsPlaying(scrAudioGetID(".BGM_GE")))
{
    FMODInstanceStop(scrAudioGetID("BGM_GE"));
}
audio_playmusic_volume(scrAudioGetID("BGM_GE"));

