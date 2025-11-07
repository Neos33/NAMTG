if(point_distance(160,576,x,y) <=3)
{
    player.frozen = false;
    instance_destroy();
}
else
{
    x -= 3;
    alarm[3] = 1;
}

