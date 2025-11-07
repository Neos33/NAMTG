if(time1 mod 3 == 0)
{
    sound_fix(snd_touhou_attack3);
}
time1 += 1;
if(y < 304)
{
    vspeed += 0.2;
    repeat(2)
    {
        instance_create(x,y,obj_dmDarkBullet3);
    }
    alarm[10] = 1;
}
else
{
    if(vspeed > 0)
    {
        vspeed -= 0.2;
        repeat(2)
        {
            instance_create(x,y,obj_dmDarkBullet3);
        }
        alarm[10] = 1;
    }
    else
    {
        waterBulletCount = 100;
        waterBulletSound = false;
        if(player_is_alive())
        {
            alarm[11] = 80;
        }
    }
}


