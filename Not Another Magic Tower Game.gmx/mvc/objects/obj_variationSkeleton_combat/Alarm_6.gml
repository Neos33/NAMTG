if(time > 0)
{
    repeat(2)
    {
        var c = instance_create(x, y, obj_vsDarkBullet2);
        c.direction = random_range(0,360);
        c.speed = random_range(7,9);
    }
    //c.dir = c.direction;
    audio_playsound(sndShoot);
    time -= 2;
    alarm[6] = 2;
}
else
{
    alarm[7] = 50;
}

