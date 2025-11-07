if(phase == "dash")
{
    if(point_distance(x,y,targetX,targetY) < spd)
    {
        hspeed = 0;
        vspeed = 0;
        //sprite_index = spr_yellowKnight;
        hit = instance_create(x - image_xscale * 14, y, obj_swordhit);
        hit.image_xscale = -1 * image_xscale;
        phase = "init";
        if(dCount < 3)
        {
            alarm[3] = 20;
        }
        else
        {
            alarm[4] = 20;
        }
    }
    else
    {
        move_towards_point(targetX, targetY, spd);
    }
}

