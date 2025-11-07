if(global.currentLevel >= level)
{
    sound_fix(sndBlockChange);
    instance_destroy();
}
else
{
    event_inherited();
}

