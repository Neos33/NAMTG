if(count <= 79)
{
    pp = instance_create(400 + x1[count],  304 + y1[count], obj_smallGrayCherry);
    pp.ind = count;
    if(count == 79)
    {
        pp.image_angle = 180;
    }
    else
    {
        pp.image_angle = point_direction(x1[count], y1[count], x1[count+1], y1[count+1]);
    }
    count += 2;
    alarm[0] = 6;
}
else
{
    alarm[9] = 30;
    alarm[1] = 90;
}

