var ind = floor(angle/50) mod 8;
var b1 = instance_create(x,y,obj_dmJuniorMageBullet3);
b1.image_angle = 90 + angle - 90;
b1.direction = 90 + angle;
b1.image_index = ind;
var b2 = instance_create(x,y,obj_dmJuniorMageBullet3);
b2.image_angle = 90 - angle - 90;
b2.direction = 90 - angle;
b2.image_index = ind;
sound_fix(sndShoot);
alarm[4] = 4;

