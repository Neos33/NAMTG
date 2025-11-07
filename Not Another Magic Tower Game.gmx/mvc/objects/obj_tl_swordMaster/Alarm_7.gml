if(point_distance(x,y, tx, ty) > spd)
{
    move_towards_point(tx,ty,spd);
    alarm[7] = 1;
}
else
{
    hspeed = 0;
    vspeed = 0;
    x = tx; 
    y = ty;
    alarm[10] = 1;
}

