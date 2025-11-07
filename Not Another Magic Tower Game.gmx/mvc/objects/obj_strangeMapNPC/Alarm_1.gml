if(point_distance(272,576,x,y) <=3)
{
    x = 272;
    y = 576;
    player.image_xscale = -1;
    alarm[2] = 30;
}
else
{
    x += 3;
    alarm[1] = 1;
}

