sound_fix(sndBossHit);
with(other)
{
    hitEffect();
    instance_destroy();
}
if(hp > 1)
{
    hp -= 1;
}
else
{
    sound_fix(sndDeath);
    instance_destroy();
}

