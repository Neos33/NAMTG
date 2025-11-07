if(phase == 1)
{
    if(point_distance(targetX,targetY,x,y) < 5)
    {
     x = targetX;
     y = targetY;
     hspeed = 0;
     vspeed = 0;
     if(sprite_index == spr_minibossCuteMiku)
     {
        miku = instance_create(544,280,obj_mikuwords);
        miku.dis = 96;
     }
     else
     {
        miku = instance_create(672,280,obj_mikuwords);
        miku.dis = 150;
     }
     phase = 2;
    }
    else
    {
     move_towards_point(targetX, targetY, 5);
    }
}

