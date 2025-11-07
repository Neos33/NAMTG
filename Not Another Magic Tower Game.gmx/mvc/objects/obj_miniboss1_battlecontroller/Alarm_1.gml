tAngle = -90 + p2 * 72;
instance_create(400 + 150 * cos(degtorad(tAngle)), 304 - 150 * sin(degtorad(tAngle)), obj_light_common);
p2 += 1;

if(p2 < 5)
{
    alarm[1] = 12;
}
else
{
    p2 = 0;
    alarm[2] = 25;
}


