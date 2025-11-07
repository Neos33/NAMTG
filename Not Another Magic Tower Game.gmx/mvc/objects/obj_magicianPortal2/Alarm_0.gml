if(count < 50)
{
    var aa = instance_create(x,y, obj_magicianBullet);
    aa.direction = random_range(minAngle,maxAngle);
    if(abs(aa.direction - 90) < 20)
    {
        aa.speed = random_range(12,14);
    }
    else
    {
        aa.speed = random_range(10,12);
    }
    aa.gravity = 0.15;
    count += 1;
    audio_playsound(sndShoot);
    alarm[0] = 3;
}
else
{
    alarm[1] = 30;
}

