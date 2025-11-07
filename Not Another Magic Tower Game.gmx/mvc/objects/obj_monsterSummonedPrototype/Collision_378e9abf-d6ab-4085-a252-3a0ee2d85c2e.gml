with (other) {
with(other)
{
    hitEffect();
    instance_destroy();
}
if(!cooldown)
{    
    hp -= global.attackDamage;
    if(hp <= 0)
    {
        audio_playsound(sndDeath);
        alarm[2] = 1;
    }
    else
    {
        audio_playsound(sndBossHit);
        cooldown = true;
        alarm[0] = 1;
        alarm[1] = 50;
    }
}

if(hp <= 0)
{
    instance_destroy();
}

}
