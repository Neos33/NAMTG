///audio_stopmusic()
//
// stop the current music
//
{
    FMODInstanceStop(curMusic);
    curMusicID = scrAudioGetID("BGM_Null");
}
