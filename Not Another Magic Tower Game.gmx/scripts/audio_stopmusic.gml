///audio_stopmusic()
//
// stop the current music
//
{
    FMODInstanceStop(curMusic);
    curMusicID = global.BGM_Null;
}
