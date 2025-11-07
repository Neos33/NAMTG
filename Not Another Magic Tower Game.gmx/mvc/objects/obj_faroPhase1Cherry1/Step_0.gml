if(rad > 800)
{
    instance_destroy();
}
x = 400 + rad * cos(degtorad(dir));
y = 304 - rad * sin(degtorad(dir));
dir += 1;
rad += 3;


