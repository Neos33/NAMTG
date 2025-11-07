if(!onHold)
{
    angle += 4;
    y = oy + 5 * sin(degtorad(angle));
}
else if(!boom)
{
    image_xscale = player.image_xscale * 0.5;
    image_yscale = 0.5;
    x = player.x + sign(player.image_xscale) * 8;
    y = player.y;
}
image_blend = make_color_rgb(bColor,bColor,bColor);

if(boom)
{
    if(point_distance(x, y, obj_blackDevilMagician_combat.x, obj_blackDevilMagician_combat.y) < spd)
    {
        hspeed = 0;
        vspeed = 0;
        x = obj_blackDevilMagician_combat.x;
        y = obj_blackDevilMagician_combat.y;
        alarm[4] = 1;
    }
    else
    {
        move_towards_point(obj_blackDevilMagician_combat.x, obj_blackDevilMagician_combat.y, spd);
        spd += 0.1;
    }
    image_angle += 5;
    if(abs(image_xscale) < 1)
    {
        if(image_xscale > 0)
        {
            image_xscale += 0.01;
        }
        else
        {
            image_xscale -= 0.01;
        }
        image_yscale += 0.01;
    }
}

