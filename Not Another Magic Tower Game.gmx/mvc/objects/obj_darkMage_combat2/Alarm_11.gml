if(waterBulletCount > 0)
{
    if(!waterBulletSound)
    {
        waterBulletSound = true;
        sound_fix(sndBurst1);
    }
    waterBulletCount -= 1;
    //instance_create(x, y, obj_dmDarkBullet2);
    instance_create(random_range(0,800), 608, obj_dmDarkBullet2);
    alarm[11] = 3;
}
else
{
    if(player_is_alive())
    {
        instance_create(400,288,obj_dmLastController);
    }
}

