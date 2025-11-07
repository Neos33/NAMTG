action_inherited();
name = "Armored Soldier";
image_speed = 1/8;
asShadowX = ds_list_create();
asShadowY = ds_list_create();
//dashQueueX = ds_queue_create();
//dashQueueY = ds_queue_create();
dashLine = ds_queue_create();
x = 400;
y = 96;
hp = 999;
alarm[3] = 30;



dirMin = 0;
dirMax = 0;
left = false;
sndroar = false;

forAch = false;
dashCount = 0;
dashGap = 0;

