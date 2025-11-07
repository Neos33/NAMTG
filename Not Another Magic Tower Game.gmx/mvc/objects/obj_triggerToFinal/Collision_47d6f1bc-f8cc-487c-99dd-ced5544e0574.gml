if(global.story[32])
{
    exit;
}
if(!triggered)
{
    triggered = true;
    player.frozen = true;
    p = instance_create(480,320,movingPlatform);
    p.visible = false;
    sound_play(sndExpMax);
    //FMODInstanceStop(global.currentBGM);
    FMODInstanceStop(global.curMusic);
    alarm[0] = 50;
}

