if(phase == 1)
{
    sound_fix(snd_touhou_attack5);
    for(var i=0;i<10;i+=1)
    {
        b = instance_create(x,y,obj_beBossPhase3Bullet1);       
        b.speed = 6;
        if(p1Count mod 2 == 0)
        {
            b.type = 0;
            b.direction = 36 * i + p1Num * 6;
        }
        else
        {
            b.type = 1;
            b.direction = 36 * i - p1Num * 6;
        }
        b.dir = b.direction; 
    }
    p1Num += 1;
    if(p1Num == 10)
    {
        alarm[0] = 10;
        alarm[1] = 75;
        p1Num = 0;
        p1Count += 1;
    }
    else
    {
        alarm[1] = 5;
    }
}
else
{
    alarm[1] = 0;
}

