dir = random_range(0,360);
rad = random_range(200,300);
instance_create(400 + rad * cos(degtorad(dir)), 304 - rad * sin(degtorad(dir)), obj_3b6EffectElement);
alarm[0] = 5;

