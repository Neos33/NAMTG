var r = random_range(20,50);
var ang = random_range(0,360);
instance_create(x + lengthdir_x(r,ang), y + lengthdir_y(r,ang),obj_dsCrystallExplodeEffect);
alarm[10] = 1;

