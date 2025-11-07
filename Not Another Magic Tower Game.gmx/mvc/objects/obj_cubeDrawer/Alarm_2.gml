
r1 = random_range(64,128);
rngAngle1 = random_range(0,359);
dx = 400 + r1 * cos(degtorad(rngAngle1));
dy = 304 - r1 * sin(degtorad(rngAngle1));
m = instance_create(dx,dy,obj_geSnowStar);
m.direction = rngAngle1;
alarm[2] = 18;

