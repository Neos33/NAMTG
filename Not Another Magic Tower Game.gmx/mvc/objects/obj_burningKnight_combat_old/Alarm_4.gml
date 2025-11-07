if(multiShotRound > 0)
{
    if(multiShotRound mod 2== 0)
    {
        //sound_fix(snd_touhou_twinkle2);
        for(var i = 0; i < 8; i+=1)
        {
            var f = instance_create(x + (i - 3.5) * 80, y, obj_bkFireBall1);
            f.direction = 90;
            f.speed = 5;
        }
    }
    else
    {
        for(var i = 0; i < 7; i+=1)
        {
            var f = instance_create(x + (i - 3) * 80, y - 32, obj_bkFireBall1);
            f.direction = 90;
            f.speed = 5;
        }
    }

    multiShotRound -= 1;
    if(multiShotRound > 1)
    {
        alarm[4] = 60;
    }
    else
    {
        alarm[4] = 20;
    }
    alarm[5] = 1;
}
else
{
    targetX = 400;
    targetY = 352;
    alarm[7] = 80;
    alarm[6] = 80;
}

