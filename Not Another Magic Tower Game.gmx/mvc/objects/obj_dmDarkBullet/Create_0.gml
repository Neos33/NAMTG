action_inherited();
xList = ds_list_create();
yList = ds_list_create();
direction = random_range(0,180);
speed = random_range(7,9);
fullSize = 10;
gap = 2;
alarm[3] = gap;
alarm[4] = 75;

ds_list_add(xList,x);
ds_list_add(yList,y);


size = 0;
stop = false;

