instance_create(x,y,obj_mageMeteorExplode);

var spark1 = instance_create(x + sign(image_xscale) * 4, y - 4, obj_mageMeteorSpark);
spark1.speed = 7;
spark1.direction = 90 + sign(image_xscale) * 5;

var spark2 = instance_create(x + sign(image_xscale) * 4, y - 4, obj_mageMeteorSpark);
spark2.speed = 7;
spark2.direction = 115 + sign(image_xscale) * 5;

var spark3 = instance_create(x + sign(image_xscale) * 4, y - 4, obj_mageMeteorSpark);
spark3.speed = 7;
spark3.direction = 65 + sign(image_xscale) * 5;

audio_playsound(sndFire1);
instance_destroy();

