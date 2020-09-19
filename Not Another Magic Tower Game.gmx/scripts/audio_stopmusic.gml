///audio_stopmusic()
//
// stop the current music
//
{
    FMODInstanceStop(curMusic);
    curMusicID = BGM_Null;
}