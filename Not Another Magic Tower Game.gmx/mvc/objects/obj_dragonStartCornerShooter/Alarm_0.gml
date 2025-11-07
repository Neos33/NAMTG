var b = instance_create(x + 32 * cos(degtorad(angle)), y - 32 * sin(degtorad(angle)), obj_dragonStartBullet2);
b.image_index = ind;
b.image_angle = angle;
angle -= 45;
if(angle > -360)
{
    alarm[0] = 2;
}
else
{
    alarm[1] = 2;
    angle = 22.5;
}

