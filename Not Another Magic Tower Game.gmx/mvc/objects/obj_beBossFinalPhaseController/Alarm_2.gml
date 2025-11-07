b1 = instance_create(obj_beFinalPhase1.x, obj_beFinalPhase1.y, obj_beFinalBullet1);
b1.image_index = 0;
b1.r = 96;
b1.dir = obj_beFinalPhase1.dir;
b2 = instance_create(obj_beFinalPhase2.x, obj_beFinalPhase2.y, obj_beFinalBullet1);
b2.image_index = 3;
b2.r = 96;
b2.dir = obj_beFinalPhase2.dir;
b3 = instance_create(obj_beFinalPhase3.x, obj_beFinalPhase3.y, obj_beFinalBullet1);
b3.image_index = 5;
b3.r = 96;
b3.dir = obj_beFinalPhase3.dir;
sound_fix(snd_touhou_attack4);
rSound = false;

