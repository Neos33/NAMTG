
r = random_range(64,128);
rngAngle += 23;
sx = 400 + r * cos(degtorad(rngAngle));
sy = 304 - r * sin(degtorad(rngAngle));
m = instance_create(sx,sy,obj_geMeteor);
m.direction = rngAngle;
m.image_angle = rngAngle;
alarm[1] = 6;

