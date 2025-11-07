sys = part_system_create();
part_system_depth(sys,-1000);


flareMinSize = 0.05;
flareMaxSize = 0.15;
flareMinSpd = 0.12;
flareMaxSpd = 0.72;
flareSpdInc = 0.06;

burstFlare = part_type_create();
part_type_shape(burstFlare,pt_shape_flare);
part_type_scale(burstFlare,2.29,2.67);
part_type_color3(burstFlare,8421631,6439294,4227327);
part_type_alpha3(burstFlare,0.69,0.58,0.06);
part_type_direction(burstFlare,0,359,-1,0);
part_type_gravity(burstFlare,0,270);
part_type_orientation(burstFlare,0,0,0,0,0);
part_type_blend(burstFlare,1);
part_type_life(burstFlare,50,60);

flareEmit = part_emitter_create(sys);
part_emitter_region(flareEmit,flareEmit,x,x,y,y,ps_shape_rectangle,0);

alarm[0] = 100;
alarm[1] = 50;
obj_tlPreFinalController.alarm[10] = 1;


stop = false;

