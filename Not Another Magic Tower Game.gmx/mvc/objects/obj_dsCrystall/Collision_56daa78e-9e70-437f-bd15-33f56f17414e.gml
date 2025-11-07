/*with(other)
{
    instance_destroy();
}

if(hp > 0)
{
    hp -= RangeClamp(other.energy,1,2.25);
}
else
{
    hp = 0;
    instance_destroy();
}
sound_fix(sndBossHit);


/* */
/*  */
