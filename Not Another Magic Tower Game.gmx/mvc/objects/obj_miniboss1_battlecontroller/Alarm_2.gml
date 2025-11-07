with(obj_light_common)
{
    for(var i = 0; i < 15; i += 1)
    {
        ang = -90 + i * 24;
        cherry = instance_create(x,y,obj_action2Cherry);
        cherry.speed = 5 + cos(degtorad(ang) * 5);
        cherry.direction = ang; 
    }
    instance_destroy();
}
if(isRepeated == 0)
{
    alarm[0] = 30;
    isRepeated = 1;
}
else if(isRepeated == 1)
{
    alarm[0] = 30;
    isRepeated = 2;
}
else
{
    phase = 2;
}

