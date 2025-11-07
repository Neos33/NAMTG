if(index == 0)
{
    instance_create(-32, 576, obj_mageMeteorDestroyer);
    if(meteorCount mod 10 == 0)
    {
        var meteor = instance_create(400 + random_range(64, 600), -32, obj_mageMeteor);
        meteor.speed = 8;
        meteor.direction = 230;
    }
    else
    {
        var meteor = instance_create(400 - random_range(64, 600), -32, obj_mageMeteor);
        meteor.speed = 8;
        meteor.image_xscale = -1;
        meteor.direction = 310;
    }
    meteorCount += 1;
    if(meteorCount < 30)
    {
        alarm[0] = 10;
    }
    else
    {
        alarm[11] = 120;
    }
}

else if(index == 1)
{
    waterShoot = true;
    alarm[1] = 50;
    alarm[2] = 50;
    alarm[11] = 400;
}
else if(index == 2)
{
    for(var i = 0; i < 7; i+=1)
    {
        var mirror = instance_create(400 + 288 * cos(degtorad(90 + 360 / 7 * i)), 304 - 288 * sin(degtorad(90 + 360 / 7 * i)), obj_goldBounceMirror);
        mirror.image_angle = 180 + 90 + 360 / 7 * i;
        mirror.image_yscale = 3;
    }
    glodShoot = true;
    shootAngle = 180;
    alarm[3] = 50;
    alarm[11] = 400;
}
else if(index == 3)
{
    alarm[6] = 30;
}
else if(index == 4)
{
    alarm[4] = 30;
    audio_playsound(sndBurst1);
    alarm[5] = 500;
    alarm[7] = 70;
    shootLeaf = true;
}
else
{
    alarm[11] = 50;
}



