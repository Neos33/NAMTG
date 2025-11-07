if(phase == 1)
{
    if(count > 0)
    {
        for(var i = 0; i< 18; i+=1)
        {
            b = instance_create(x,y,obj_beBossPhase1Bullet1);
            b.speed = 3;
            b.direction = 20 * i + ang;
        }
        ang += 10;
        if(count mod 2 == 0)
        {
            sound_fix(snd_touhou_attack3);
        }
        count -= 1;
        alarm[1] = 10;
    }
    else
    {
        count = 10;
        alarm[1] = 70;
        alarm[2] = 90;
    }
}
else
{
    alarm[1] = 0;
}

