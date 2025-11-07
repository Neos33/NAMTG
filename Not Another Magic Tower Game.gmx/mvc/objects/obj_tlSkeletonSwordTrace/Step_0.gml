if(status == 0)
{
    image_xscale = sign(x - player.x);
    image_index = 0;
    tAngle = point_direction(x,y,player.x,player.y);
    image_angle =  tAngle + 71 * image_xscale;
    if(!shoot)
    {
        speed = 12;
        direction = tAngle;
        shoot = true;
    }
    else
    {
        if(x < 16 || x > 784 || ((x - player.x) * sign(hspeed)) > 128)
        {
            hspeed = 0;
            vspeed = 0;
            shoot = false;
            status = 1;
            alarm[3] = 30;
        }
    }
}
else if(status == 1)
{
    if(x > player.x)
    {
        image_angle += 30;
    }
    else
    {
        image_angle -= 30;
    }
}
else if(status == 2)
{    
    move_towards_point(obj_tlSkeletonSwordsman.x, obj_tlSkeletonSwordsman.y + 16, spd);
    image_angle += sign(hspeed) * 5;   
    if(point_distance(x,y,obj_tlSkeletonSwordsman.x, obj_tlSkeletonSwordsman.y + 16) <= spd)
    {
        instance_destroy();
    }
}

