/*path = pathHappy2;
path_scale(path, 0.3, 0.3);
path_start(path, 10,0,0);*/
repeat(4)
{
    aa = instance_create(x,y, obj_smilingSlime_child);
    aa.speed = random_range(7,12);
    aa.direction = random_range(100,130);
}
if(p2Count == 0)
{
    audio_playsound(sndEvilSmile);
}
p2Count += 1;
if(p2Count < 3)
{
    alarm[4] = 30;
}
else
{
    alarm[5] = 30;
}

/* */
/*  */
