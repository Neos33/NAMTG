/// @description  Unused
/*
if(!SS_IsSoundPlaying(bgm))
{   
    audio_loopmusic_volume(bgm);
}
else
{
    alarm[0] = 1;
}

/* */
if(!FMODInstanceIsPlaying(bgm))
{   
    if(!sound_isplaying(sndDecide) && !sound_isplaying(sndGetstar))
    {
        sound_stop_all();
    } 
    if(global.currentBGM == bgm)
    {
        audio_resumemusic_volume(bgm);
    }
    else
    {
        SS_StopAll();
        global.currentBGM = bgm;
        
        audio_loopmusic_volume(bgm);
    }
}

if(sound_isplaying(sndBattle1))
{
    sound_stop(sndBattle1);
}
if(sound_isplaying(sndBattle2))
{
    sound_stop(sndBattle2);
}
music_stop_battle();
//alarm[0] = 100;
/*if(sound_isplaying(sndMiniBoss1))
{
    sound_stop(sndMiniBoss1);
}

/* */
/*  */
