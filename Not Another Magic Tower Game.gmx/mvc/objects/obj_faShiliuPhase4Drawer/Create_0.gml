global.currentBGM = scrAudioGetID("BGMFaShiLiu");
//if(!FMODInstanceIsPlaying(scrAudioGetID("BGMFaShiLiu")))
if global.curMusicID != global.currentBGM
{
    //sound_stop_all();
    SS_StopAll();
    player.x = 400; 
    player.y = 544 + 23;
    alarm[1] = 30;
}


if(global.GalleryBossFight)
{
    recoveryCountDown = 100;
}
else
{
    recoveryCountDown = 10;
}

