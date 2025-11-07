image_angle += 3;
x = cx + rad * cos(degtorad(dir));
y = cy - rad * sin(degtorad(dir));
rad += 2;
dir += dSpd;
if(dSpd < 5)
{
    dSpd += 0.05;   
}
if(rad > 350)
{
    image_alpha -= 0.01;
}
if(image_alpha <= 0)
{
    instance_destroy();
}

