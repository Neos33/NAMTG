hpLose = 1;
if(other.energy > 1)
{
    hpLose = other.energy;
}
with(other)
{
    hitEffect();
    instance_destroy();
}
hp -= 1;
if(hp > 0)
{
    sound_fix(sndBossHit);
}
else
{
    sound_fix(sndDeath);
    instance_destroy();
}


