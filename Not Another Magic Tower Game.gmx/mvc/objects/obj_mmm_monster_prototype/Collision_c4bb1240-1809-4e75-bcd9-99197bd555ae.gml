sound_fix(snd_touhou_dead);

with(other)
{
    instance_destroy();
}
global.death[global.savenum] += 1;
saveDeathTime();
currentMeter = obj_mmm_gameController.currentMeter;
if(currentMeter >= 1000)
{
    global.mmmMedals[3] += 1;
}
else if(currentMeter >= 750)
{
    global.mmmMedals[2] += 1;
}
else if(currentMeter >= 500)
{
    global.mmmMedals[1] += 1;
}
else if(currentMeter >= 250)
{
    global.mmmMedals[0] += 1;
}
saveExtra();
instance_create(400,304,obj_mmm_menu);

