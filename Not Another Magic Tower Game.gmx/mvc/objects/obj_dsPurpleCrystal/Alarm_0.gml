repeat(RangeClamp(-interval,1,10))
{
    var b = instance_create(x,y,obj_dsCPBullet);
    b.direction = startAngle;
    startAngle += angleChange;
      
}
if(angleChange > minAngle)
{
    angleChange -= 1;
}  
alarm[0] = RangeClamp(interval,1,10);

