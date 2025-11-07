if(spd < -18)
{
    instance_destroy();
}
angle += 6 * type;
spd -= 1.2;
radius += spd;
x = 400 + radius * cos(degtorad(startAngle + angle));
y = 304 - radius * sin(degtorad(startAngle + angle));
image_angle += 3;

