move_bounce_solid(false);
image_angle += rSpd * isClock;

if(gather)
{
    if(point_distance(xpos, ypos, x, y) > spd)
    {
        move_towards_point(xpos, ypos, spd);
    }
    else
    {
        instance_destroy(); 
    }
}

if(!instance_exists(obj_skeletonElete_combat))
{
    instance_destroy();
}

