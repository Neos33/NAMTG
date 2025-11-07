if(abs(y - targetY) > 2)
{
    move_towards_point(x,targetY,2);
    alarm[3] = 1;
}
else
{
    hspeed = 0;
    vspeed = 0;
    image_index = 1;
    alarm[4] = 1;
}

