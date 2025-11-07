sDir = point_direction(x,y, obj_beFinalPhase3.x, obj_beFinalPhase3.y);
for(var i = 0;i<6;i+=1)
{
    pp = instance_create(x,y,obj_beFinalBullet3);
    pp.image_index = 0;
    pp.speed = 4;
    pp.direction = sDir + 60 * i;
}
sound_fix(snd_touhou_attack4);
alarm[8] = 10;

