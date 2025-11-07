x1 = 32;
x2 = 32;
x3 = 32;
x4 = 32;
y1 = 224;
y2 = 272;
y3 = 336;
y4 = 384;
instance_create(400 + (400 + x1) * sign(type - 0.5), y1, obj_shiliuPhase4Bullet);
instance_create(400 + (400 + x2) * sign(type - 0.5), y2, obj_shiliuPhase4Bullet);
instance_create(400 + (400 + x3) * sign(type - 0.5), y3, obj_shiliuPhase4Bullet);
instance_create(400 + (400 + x4) * sign(type - 0.5), y4, obj_shiliuPhase4Bullet);

