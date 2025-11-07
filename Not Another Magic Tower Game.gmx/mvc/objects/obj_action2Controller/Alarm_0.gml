for(i = 0; i < amount; i+= 1)
{
    element[i] = instance_create(400, 240, obj_lightTargetRotater);
    element[i].targetX = 400 + 180 * cos(degtorad(90 + 360 / amount * i));
    element[i].targetY = 240 - 180 * sin(degtorad(90 + 360 / amount * i));
    element[i].spd = 180 / 50;
    element[i].sTime = 50;
}
start = true;
alarm[1] = 70;

