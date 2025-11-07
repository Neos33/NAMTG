sDir = point_direction(x,y, obj_beFinalPhase3.x, obj_beFinalPhase3.y);
for(var i = 0;i<6;i+=1)
{
    pp = instance_create(x,y,obj_beFinalBullet3);
    pp.image_index = 3;
    pp.speed = 4;
    pp.direction = sDir + 60 * i;
}
alarm[8] = 10;

