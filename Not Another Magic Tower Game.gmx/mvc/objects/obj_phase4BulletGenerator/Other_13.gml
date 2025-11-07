x1 = 144;
x2 = 128;
x3 = 48;
x4 = 32;
y1 = 144;
y2 = 192
y3 = 416;
y4 = 464;
instance_create(400 + (400 + x1) * sign(type - 0.5), y1, obj_shiliuPhase4Bullet);
instance_create(400 + (400 + x2) * sign(type - 0.5), y2, obj_shiliuPhase4Bullet);
instance_create(400 + (400 + x3) * sign(type - 0.5), y3, obj_shiliuPhase4Bullet);
instance_create(400 + (400 + x4) * sign(type - 0.5), y4, obj_shiliuPhase4Bullet);

