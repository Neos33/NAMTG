with(obj_darkMage_combat2)
{
    if(point_distance(x,y,400,288) > 8)
    {
        move_towards_point(400,288,8);
        other.alarm[0] = 1;
    }
    else
    {
        x = 400;
        y = 288;
        speed = 0;
        other.alarm[1] = 30;
    }
}

