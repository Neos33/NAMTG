if(bulletCount > 0)
{
    bulletCount -= 1;
    var bx = x + 48 * cos(degtorad(startAng + 30 * bulletCount));
    var by = y - 48 * sin(degtorad(startAng + 30 * bulletCount));
    b[bulletCount] = instance_create(bx, by, obj_missingnoCircleBullets);
    b[bulletCount].image_index = image_index;
    b[bulletCount].image_angle = point_direction(x,y,bx,by) - 90;
    b[bulletCount].cx = x;
    b[bulletCount].cy = y;
    alarm[1] = 3;
}
else
{
    alarm[2] = 30;
    alarm[3] = 30;
}

