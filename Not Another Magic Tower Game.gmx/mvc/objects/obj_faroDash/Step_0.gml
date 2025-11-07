image_angle = direction;
if(image_xscale > 0)
{
    image_xscale -= 0.01;
    image_yscale -= 0.01;
}
else
{
    instance_destroy();
}
if(speed > 0)
{
    speed -= 0.05;
}
else
{
    instance_destroy();
}
if(point_distance(x,y,400,304) < 10)
{
    instance_destroy();
}

