if(point_distance(x,y,400,80) <= 1)
{
    hspeed = 0;
    vspeed = 0;
    alarm[4] = 30;
    sound_fix(sndBurst1);
    alarm[5] = 250;
}
else
{
    move_towards_point(400,80,1);
    alarm[3] = 1;
}

