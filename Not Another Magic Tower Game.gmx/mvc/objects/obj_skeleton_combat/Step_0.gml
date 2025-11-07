move_bounce_solid(false);
time += 1;

dir = point_direction(x+16,y+16,player.x,player.y);
if(dir > 70 && dir < 120 && phase != 2)
{
    tempspd = hspeed;
    hspeed = 0;
    phase = 2;
    alarm[3] = 15;
}
else if(phase != 2)
{
    if(time mod 30 == 0)
    {
        dis = point_distance(x+16,y+16,player.x,player.y);
        var bone = instance_create(x + 16, y + 16, obj_skeletonBone);
        bone.speed = 12;
        bone.direction = point_direction(x+16,y+16,player.x,player.y - dis / 10);
    }
}

