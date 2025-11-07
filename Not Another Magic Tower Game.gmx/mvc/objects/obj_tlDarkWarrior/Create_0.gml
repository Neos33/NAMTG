event_inherited();
image_speed = 1/8;
count = 0;
spd = 14;
targetX[0] = 672; targetY[0] = 304;
targetX[1] = 400; targetY[1] = 64;
targetX[2] = 128; targetY[2] = 304;
targetX[3] = 400; targetY[3] = 544;

circle = instance_create(x,y,obj_tlMagicCircle);
circle.target = id;

instance_create(x,y,obj_tlSummonEffect);


tIndex = 0;
p = 0;
stop = false;

