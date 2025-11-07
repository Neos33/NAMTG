image_speed = 1/8;
image_alpha = 0.3;
circle = instance_create(x,y,obj_tlMagicCircle);
circle.target = id;

instance_create(x,y,obj_tlSummonEffect);
alarm[3] = 100;

