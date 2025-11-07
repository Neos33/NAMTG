rndAngle = irandom_range(0, 355);
for(var i = 0; i < 48; i += 1)
{
    ang = rndAngle + i * 7.5;
    cherry = instance_create(x,y,obj_action2Cherry);    
    cherry.direction = ang; 
    cherry.speed = 5 + 3 * cos(degtorad(i * 7.5) * 5);
}

