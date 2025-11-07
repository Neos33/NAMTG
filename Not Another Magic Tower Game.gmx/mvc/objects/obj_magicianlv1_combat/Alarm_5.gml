if(time < 150)
{
    var cc = instance_create(x + 16, y + 16, obj_magicianBullet);
    cc.speed = random_range(5,6);
    cc.direction = random_range(30, 150);
    if(time mod 5 == 0)
    {
        audio_playsound(sndShoot);
    }
    time += 1;
    alarm[5] = 1;
}
else
{
    time = 0;
    obj_magicianPortal1.check = true;
}

