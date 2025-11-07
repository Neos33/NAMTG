if(x < 672)
{
    if(ind == 1 && count mod 3 == 0)
    {
        sound_fix(snd_touhou_attack3);
    }
    repeat(1)
    {
        instance_create(x + random_range(-2,2),y + random_range(-4,4),obj_tlDarkMageBullet);
    }
    count += 1;
    alarm[5] = 1;
}
else
{
    hspeed = 0;
    if(ind == 1) 
        vspeed = -12;
    else
        vspeed = 12;
    move = true;
    alarm[6] = 1;
}

