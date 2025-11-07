var shadow = instance_create(x,y,obj_tdMonsterIn);
shadow.sprite_index = sprite_index;
shadow.image_index = image_index;
shadow.image_speed = image_speed;
x = -32;
y = -32;
speed = 0;
alarm[4] = 0;
reset = true;
alarm[11] = 50;
obj_tdController.spikeLevel += 16;

