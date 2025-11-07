cut = true;
if(bbox_left < 400)
{
    x += 1;
    cut = false;
}
if(angle > -135)
{
    angle -= 3;
    image_angle = angle;
    cut = false;
}
if(!cut)
{
    alarm[1] = 1;
}
else
{
    alarm[2] = 30;
}

