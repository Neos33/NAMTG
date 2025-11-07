if(!blockBullet)
{
    angle += 4;
    y = oy + 4 * cos(degtorad(angle));
}


if(image_alpha > 0.7)
{
    if(instance_exists(bullet))
    {
        bu = instance_nearest(x,y,bullet);
        signal = sign(image_xscale);
        if(sign(bu.hspeed) != signal && sign(bu.x - x) == sign(signal) && bu.y > (obj_dracula_combat.y - 50) && bu.y < (obj_dracula_combat.y + 50))
        {
            blockBullet = true;
            y = bu.y;
        }
        else
        {
            alarm[11] = 30;
        }
    }
}

