if(!blockBullet)
{
    angle += 4;
    y = oy + 4 * cos(degtorad(angle));
}


if(image_alpha > 0.7)
{
    if(instance_exists(bullet))
    {
        var bu = instance_nearest(x,y,bullet);
        var signal = sign(image_xscale);
        if(sign(bu.hspeed) != signal && sign(bu.x - x) == sign(signal) && bu.y > (obj_tl_draculaRealBody.y - 50) && bu.y < (obj_tl_draculaRealBody.y + 50))
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

