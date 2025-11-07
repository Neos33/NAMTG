event_inherited();
image_speed = 1/8;
//alarm[3] = 15;
alarm[4] = 235;

circle = instance_create(x,y,obj_tlMagicCircle);
circle.target = id;

instance_create(x,y,obj_tlSummonEffect);


start = false;

