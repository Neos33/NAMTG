if(!move)
{
    if(x < room_width/2)
    {
        if(place_meeting(bbox_left, other.y + 1 - sprite_height / 2, movingPlatform))
        {
            instance_create(x,y,obj_bsFireRockStoneBoom);
            instance_destroy();
        }
        else
        {
            gravity = 0;
            hspeed = -1;
            vspeed = 0;
            move = true;
            alarm[3] = 1;
            alarm[10] = 5;
        }
    }
    else
    {
        if(place_meeting(bbox_right, other.y + 1 - sprite_height / 2, movingPlatform))
        {
            instance_create(x,y,obj_bsFireRockStoneBoom);
            instance_destroy();
        }
        else
        {
            gravity = 0;
            hspeed = 1;
            vspeed = 0;
            move = true;
            alarm[4] = 1;
            alarm[11] = 1;
        }
    }
}

