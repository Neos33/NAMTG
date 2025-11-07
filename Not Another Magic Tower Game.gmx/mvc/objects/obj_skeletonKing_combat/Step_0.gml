if(phase == 1)
{  
    if(boneNum mod 3 == 0)
    {
        audio_playsound(snd_wallum);
        var bone = instance_create(x, y - 50, obj_skeletonBone);
        bone.hspeed = -sign(image_xscale) * random_range(1,5);
        bone.vspeed = random_range(-8, 2);
    }
    boneNum += 1;
}
if(phase == 2)
{   
    //if instance_exists(player)
    {
        if(point_distance(x,y,targetX, targetY) >= 15)
        {
            targetX = player.x;
            targetY = 200;
            onPlatform = false;
            move_towards_point(targetX, targetY, 15);
        }
        else
        {
            hspeed = 0;
            vspeed = 0;
            gravity = 0.2;
            phase = 3;
        }
    }
}

