if(status == 1)
{
    if(point_distance(x,y,0,ty) <= 3)
    {
        y = ty;
        vspeed = 0;
        status = 2;
        alarm[1] = 120;
    }
}
else if(status == 2)
{
    if(point_distance(x,y,0,ty + 72) <= 3)
    {
        instance_destroy();
    }   
}


if(place_meeting(x,y,player))
{
    image_alpha = 0.3;
}
else
{
    image_alpha = 0.8;
}

