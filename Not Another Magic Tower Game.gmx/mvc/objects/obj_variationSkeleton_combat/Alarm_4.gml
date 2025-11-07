if(time > 0)
{
    with(obj_vsDarkSmoke)
    {
        b = instance_create(x,y, obj_vsDarkBullet1);
        b.speed = random_range(5,7);
        b.direction = random_range(0,360);
        b.image_angle = b.direction - 90;
    }
    time -= 3;
    audio_playsound(sndShoot);
    alarm[4] = 3;
}
else
{
    with(obj_vsDarkSmoke)
    {
        alarm[1] = 1;
    }
    time = 10;
    laserStatus = 1;
    laserDir = 1;
    alarm[5] = 50;
}

