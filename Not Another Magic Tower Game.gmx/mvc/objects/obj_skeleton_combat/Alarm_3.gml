if(throwCount < 20)
{
    var pp = instance_create(x+16,y,obj_skeletonBone);
    pp.speed = random_range(8, 12);
    pp.direction = random_range(60,120);
    var rnd = random_range(0,100);
    if(rnd > 99)
    {
        pp.image_xscale = 10;
        pp.image_yscale = 10;
        hugeboneCount += 1;
    }
    audio_playsound(snd_wallum);
    throwCount += 1;
    alarm[3] = 5;
}
else
{
    throwCount = 0;
    alarm[4] = 10;
}

