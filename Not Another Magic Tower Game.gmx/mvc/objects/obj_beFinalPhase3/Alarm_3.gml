
for(var i = 0; i < 20; i+= 1)
{
    s = instance_create(x,y,obj_beFinalBullet3);
    s.speed = 3;
    if(count1 mod 2 == 0)
    {
        s.image_index = 0;
        s.direction = i * 18;
    }
    else
    {
        s.image_index = 3;
        s.direction = 9 + i * 18;      
    }
}

sound_fix(snd_touhou_attack3);

count1 += 1;
alarm[3] = 40;

/*if(count1 == 0)
{
    for(i = 0; i <=  5; i += 1)
    {
        p = instance_create(250, (tempI + i) * 30, obj_beFinalBullet3);
        p.image_angle = 270 - 90;
    }
}
else if(count1 == 1)
{
    for(i = 0; i <=  5; i += 1)
    {
        p = instance_create(550, (tempI + i) * 30, obj_beFinalBullet3);
        p.image_angle = 270 - 90;
    }
}
else if(count1 == 2)
{
    pangle = point_direction(0,0,800,608);
    for(i = 0; i <= 6; i += 1)
    {
        p = instance_create(100 / 3 * (tempI / 5 * 6 + i), 76 / 3 * (tempI / 5 * 6 + i), obj_beFinalBullet3);
        p.image_angle = pangle - 90;
    }
}
else if(count1 == 3)
{
    pangle = point_direction(800,0,0,608);
    for(i = 0; i <= 6; i += 1)
    {
        p = instance_create(800 - 100 / 3 * (tempI / 5 * 6 + i), 76 / 3 * (tempI / 5 * 6 + i), obj_beFinalBullet3);
        p.image_angle = pangle - 90;
    }
}
if(tempI < 20)
{
    tempI += 5;
    alarm[3] = 1;
}
else
{
    tempI = 0;
    count1 += 1;
}
if(count1 == 4)
{
    alarm[4] = 40;
}

/* */
/*  */
