repeat(10)
{
        rnd = random_range(-35,35);
        range = random_range(0,100);
        centerX = x + (acount * 100 + range) * cos(degtorad(dir + 180));
        centerY = y - (acount * 100 + range) * sin(degtorad(dir + 180));
        if(dir > 90)
        {
            pp = instance_create(centerX + rnd * cos(degtorad(180 - dir)),centerY - rnd * sin(degtorad(180 - dir)), obj_magicianlv2Bullet);
        }
        else
        {
            pp = instance_create(centerX + rnd * cos(degtorad(dir)),centerY + rnd * sin(degtorad(dir)), obj_magicianlv2Bullet);
        }
        //pp.speed = random_range(.1, 2) + 2 * i;
        pp.direction = dir + 180;
}
if(acount == 0)
{
    instance_create(x,y,view_shaker1);
    audio_playsound(sndCannon);
}
acount += 1;
if(acount < 10)
{
    alarm[1] = 1;
}

