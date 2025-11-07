if(global.trigger[trg]) {
    if(point_distance(x,y,targetX, targetY) <= (spd / 2))
    {
        x = targetX;
        y = targetY;
        hspeed = 0;
        vspeed = 0;
    }
    else
    {
        move_towards_point(targetX, targetY, spd);
    }
}

