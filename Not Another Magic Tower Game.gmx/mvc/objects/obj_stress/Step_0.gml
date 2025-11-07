if(status == 1)
{
    x = obj_miniBossGay.x + 2 * 1.5;
    y = obj_miniBossGay.y - 28 * 1.5;
}
else if(status == 2)
{
    image_angle += 10;
}
if(y > 700)
{
    instance_destroy();
}

