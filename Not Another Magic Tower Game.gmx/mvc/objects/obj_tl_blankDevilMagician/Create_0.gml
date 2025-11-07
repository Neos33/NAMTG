action_inherited();
name = "Evil Black Magician";
image_speed = 1/8;
x = room_width / 2;
y = room_height / 2;
//image_xscale = 1.5;
//image_yscale = 1.5;
instance_create(0,0,obj_tl_bdmDeathClawController);
//instance_create(0,0,obj_bdmEnergyBallController);
instance_create(0,0,obj_bdmViewController);
instance_create(0,0,obj_bdmInfiniteJumpHint);
instance_create(0,0,obj_bdmBlackBlink);
tCount = 4;
alarm[3] = 30;
alarm[4] = 60;



