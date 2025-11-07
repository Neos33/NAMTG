atDmg = global.attack - def;
if(other.energy > 0)
{
    dmg = round(atDmg * other.energy);
}
else
{
    dmg = atDmg;
}
if(global.SaintSword)
{
    dmg = round(dmg*1.5);
}
with(other)
{
    hitEffect();
    instance_destroy();
}
if(dmg >= hp)
{
    sound_fix(sndDeath);
    instance_destroy();   
}
else
{
    sound_fix(sndBossHit);
    hp -= dmg;
}

