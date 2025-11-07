startX = random_range(16, 768);
startY = 0;
b = instance_create(startX, startY, obj_tlDanmaku1);
b.speed = random_range(2.5,4.5);
b.direction = 270 + random_range(-10,10);

/*(type = choose(-1,1);
startX = 400 + random_range(32,432) * type;
startY = 0;
b = instance_create(startX, startY, obj_tlDanmaku1);
b.speed = random_range(3.5,4.5);
b.direction = 270 - type * 30;

/* */
/*  */
