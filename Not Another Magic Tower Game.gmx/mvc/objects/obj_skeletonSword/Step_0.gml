if(status == 0)
{
    if instance_exists(obj_skeletonElete_combat)
    {
        image_angle = 0;
        image_index = obj_skeletonElete_combat.image_index;
        image_xscale = obj_skeletonElete_combat.image_xscale;
        x = obj_skeletonElete_combat.x - sign(obj_skeletonElete_combat.image_xscale) * 10;
        y = obj_skeletonElete_combat.y + sprite_yoffset;
    }
}
else if(status == 1)
{
    if(image_xscale > 0)
    {
        if(image_angle < 120)
        {
            image_angle += 10; 
        }
        else
        {
            image_angle = 120;
            status = 2;
        }
    }
    else
    {
        if(image_angle > -120)
        {
            image_angle -= 10; 
        }
        else
        {
            image_angle = -120;
            status = 2;
        }
    }
}
else if(status == 2)
{
    if(image_xscale > 0)
    {
        if(image_angle > 0)
        {
            image_angle -= 10; 
        }
        else
        {
            image_angle = 0;
            status = 0;
        }
    }
    else
    {
        if(image_angle < 0)
        {
            image_angle += 10; 
        }
        else
        {
            image_angle = 0;
            status = 0;
        }
    }
}
else if(status == 3)
{
    //if instance_exists(player)
    {
        image_xscale = sign(x - player.x);
        image_index = 0;
        tAngle = point_direction(x,y,player.x,player.y);
        image_angle =  tAngle + 71 * image_xscale;
    }
    if(!shoot)
    {
        alarm[3] = 60;
        speed = 12;
        direction = tAngle;
        shoot = true;
    }
    else
    {
        //if instance_exists(player)
        {
            if(x < 16 || x > 784 || ((x - player.x) * sign(hspeed)) > 200)
            {
                hspeed = 0;
                vspeed = 0;
                shoot = false;
                status = 5;
            }
        }
    }
}
else if(status == 4)
{
    if(point_distance(x,y,targetX, targetY) > speed)
    {
        move_towards_point(targetX, targetY, speed);
        speed += 0.1; 
        if(x > targetX)
        {
            image_angle += 10;
        }
        else
        {
            image_angle -= 10;
        }
    }
    else
    {
        x = targetX;
        y = targetY;
        hspeed = 0;
        vspeed = 0;
        status = 0;
    }
}
else if(status == 5)
{
    //if instance_exists(player)
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
}

if instance_exists(obj_skeletonElete_combat)
    image_xscale = obj_skeletonElete_combat.image_xscale;

if(!instance_exists(obj_skeletonElete_combat))
{
    instance_destroy();
}

