var b = instance_create(x + 64 * cos(degtorad(angle)), y - 64 * sin(degtorad(angle)), obj_dragonStartBullet2);
b.image_index = ind;
b.image_angle = angle + 90;
angle += 45;
if(angle < 360)
{
    alarm[1] = 2;
}


