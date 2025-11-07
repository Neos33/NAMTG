if(!recover)
{
    image_angle += ang;
    ang += 0.1;
}
else 
{
    gravity = 0;
    if(point_distance(384, 288, x, y) < 10)
    {
        x=384;
        y=288;
        hspeed = 0;
        vspeed = 0;
        if(!obj_steel_combat.recoverFlag)
        {
            with(obj_steel_combat)
            {
                recoverFlag = true;
                event_user(2);             
            }
        }
        instance_destroy();
    }
    else
    {
        hspeed += hspd;
        vspeed += vspd;
    }
}

