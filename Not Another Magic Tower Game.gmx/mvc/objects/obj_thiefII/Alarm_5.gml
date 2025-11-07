b.visible = true;
if(point_distance(b.x, b.y, b.targetX, b.targetY) < 1)
{
    b.hspeed = 0;
    b.vspeed = 0;
    b.targetX = player.x - 17;
    b.targetY = player.y - 23;
    alarm[6]= 50;
}
else
{
    with(b)
    {
        move_towards_point(targetX, targetY, 1);
    }
    alarm[5] = 1;
}

