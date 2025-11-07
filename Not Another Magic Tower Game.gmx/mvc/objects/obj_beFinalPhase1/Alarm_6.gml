if(point_distance(x,y,170,500) <= 10)
{
    hspeed = 0;
    vspeed = 0;
    x = 170;
    y = 500;
    alarm[3] = 50;
}
else
{
    y += 10;
    if(count6 mod 2 == 0)
    {
        sound_fix(snd_touhou_attack4);   
    }
    s1 = instance_create(count6SX1,y,obj_beFinalBullet4);
    s1.image_index = 2;
    s1.dir = count6Ang1;
    s2 = instance_create(count6SX2,y,obj_beFinalBullet4);
    s2.image_index = 2;
    s2.dir = count6Ang2;
    s3 = instance_create(count6SX3,y,obj_beFinalBullet4);
    s3.image_index = 2;
    s3.dir = count6Ang3;
    count6Ang1 -= 18;
    count6Ang2 += 10;
    count6Ang3 -= 3;
    count6SX1 -= 0.8;
    count6SX2 += 0.5;
    if(y < 350)
    {
        count6SX3 -= 0.5;
    }
    else
    {
        count6SX3 += 0.5;
    }

    alarm[6] = 1;
    count6 += 1;
}

