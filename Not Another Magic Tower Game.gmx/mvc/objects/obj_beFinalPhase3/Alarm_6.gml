dir = point_direction(x,y,obj_beFinalPhase1.x,obj_beFinalPhase1.y);
subdir = random_range(0, 359);
for(var i = 0; i < 6; i+= 1)
{
    b1 = instance_create(x + 80 * cos(degtorad(dir)), y - 80 * sin(degtorad(dir)), obj_beFinalBullet5);
    b1.speed = 2;
    b1.direction = subdir + i * 60;
    b1.image_index = 1;
    b2 = instance_create(x + 80 * cos(degtorad(dir + 180)), y - 80 * sin(degtorad(dir + 180)), obj_beFinalBullet5);
    b2.speed = 2;
    b2.direction = 360 - (subdir + i * 60);
    b2.image_index = 2;
}
sound_fix(snd_touhou_attack3);
alarm[6] = 60;

