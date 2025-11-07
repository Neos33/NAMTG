notFirstRound = 0;
i = 0;
//aa = 0;
//ab = 0;
//ac = 0;
j = 0;

xx = 0;
yy = 0;
//a = 0;
k = 0;

bubbleDestroyCount = 0;

event_inherited();
name = "Blue Knight";
image_speed = 1/8;
x=-32;
y=-32;
instance_create(400,304,obj_blueknightDanger);
//alarm[3]=80;
global.system1=part_system_create();
global.particle1 = part_type_create();
part_type_shape(global.particle1,pt_shape_snow);
part_type_size(global.particle1,0.20,0.22,0.01,0);
part_type_scale(global.particle1,0.70,0.70);
part_type_color3(global.particle1,16777215,16777088,65535);
part_type_alpha3(global.particle1,0.78,0.32,0.01);
part_type_speed(global.particle1,3,5,-0.01,2);
part_type_direction(global.particle1,0,351,-1,1);
part_type_gravity(global.particle1,0,270);
part_type_orientation(global.particle1,14,349,0.40,6,1);
part_type_blend(global.particle1,1);
part_type_life(global.particle1,17,24);

global.emitter1=part_emitter_create(global.system1);

bubbleDestroyCount = 0;

