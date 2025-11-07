if(point_distance(x,y,tx,ty) > spd)
{
    move_towards_point(tx,ty,spd);  
    alarm[3] = 1; 
}
else
{
    speed = 0;
    alarm[4] = 1;
}

