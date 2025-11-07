if(!cooldown && hp > 0)
{   
    hp -= 1;
    if(hp <= 0)
    {
        audio_playsound(sndDeath);
        obj_npcBattleController.enemyCount -= 1;
        image_alpha = 0.2;
    }
    else
    {
        audio_playsound(sndBossHit);
        cooldown = true;
        alarm[0] = 1;
        if(global.special[8])
        {
            alarm[1] = 25;
        }
        else
        {
            alarm[1] = 50;
        }
    }
    alarm[2] = 1;
}
with(other)
{
    hitEffect();
    instance_destroy();
}

