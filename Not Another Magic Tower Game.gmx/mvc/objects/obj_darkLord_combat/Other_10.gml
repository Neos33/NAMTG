var shadow = instance_create(x,y,obj_tdMonsterIn);
shadow.sprite_index = sprite_index;
shadow.image_index = image_index;
shadow.image_speed = image_speed;
x = -16;
y = 176;
speed = 0;
alarm[4] = 150;
alarm[11] = 50;
currentTarget = 0;
obj_tdController.spikeLevel += 32;

