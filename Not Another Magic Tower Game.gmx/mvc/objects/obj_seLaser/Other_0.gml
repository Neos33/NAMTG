if(y > 640)
{
    speed = 0;
    alpha2 -= 0.05;
}
if(alpha2 <= 0)
{
    instance_destroy();
}

