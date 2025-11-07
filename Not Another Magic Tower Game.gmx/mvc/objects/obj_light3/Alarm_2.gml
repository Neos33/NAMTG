rndAngle = irandom_range(0, 355);
for(var i = 0; i < 20; i += 1)
{
    ang = rndAngle + i * 19;
    cherry = instance_create(x,y,obj_action2Cherry);    
    cherry.direction = ang; 
    cherry.speed = 5 + 3 * cos(degtorad(i * 19) * 5);
}
instance_destroy();

