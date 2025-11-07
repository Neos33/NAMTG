//sound_stop_all();
//SS_StopSound(curMusic);
//filePlaying = 101;
//curMusic = global.BGM_Corazone;
if !global.audio_music_muted
{
    if !FMODInstanceGetPaused(scrAudioGetID("BGM_Corazone"))
    {
        FMODInstanceSetVolume(scrAudioGetID("BGM_Corazone"), 2000 + 80 * global.audio_music_volume);
        audio_loopmusic_volume(scrAudioGetID("BGM_Corazone"));
    }
}
start_vol = FMODInstanceGetVolume(scrAudioGetID("BGM_Corazone"));
now_vol = start_vol;
loop_start = 50.157;
loop_end = 78.570;
song_length = 87.098;
//song_byte = SS_GetSoundLength(global.BGM_Corazone);
song_byte = FMODSoundGetLength(scrAudioGetID("BGM_Corazone"));


fadeOut = false;

