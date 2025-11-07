if(cooldown > 0)
{
    cooldown -= 1;
}

if(final)
{
    if(point_distance(x,y,672,304) < 1)
    {
        x = 672;
        y = 304;
        speed = 0;
        final = false;
        ox = x;
        oy = y;
    }
    else
    {
        move_towards_point(672,304,1);
    }
}
if(finalStart)
{
    if(!dead)
    {
        timer += 1;
        y = oy + 15 * sin(degtorad(timer * 3));
        image_alpha = 1;
        obj_tlFinalAttack.x = x;
        obj_tlFinalAttack.y = y;
    }
    else
    {
        y += 0.5;
        image_alpha -= 0.005;
        if(instance_exists(obj_tlFinalAttack))
        {
            with(obj_tlFinalAttack)
            {
                instance_destroy();
            }
        }
    }
    
}

if(shake)
{
    __view_set( e__VW.XView, 0, random_range(-3,3) );
    __view_set( e__VW.YView, 0, random_range(-3,3) );
}
else
{
    __view_set( e__VW.XView, 0, 0 );
    __view_set( e__VW.YView, 0, 0 );
}

