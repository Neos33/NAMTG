

num=3
part = part_system_create();
part_system_depth(part,2700000);
snow = part_type_create();
part_type_alpha2(snow,1,0);
part_type_color_mix(snow,c_white,c_ltgray);
part_type_direction(snow,255,265,0,4);
part_type_speed(snow,1.5,2,0,0);
part_type_life(snow,500,600);
part_type_sprite(snow,sprSnow,-1,1,0);
part_type_size(snow,1,1.2,0,0)
part_type_blend(snow,1)
//part_type_shape(snow,pt_shape_disk)
//part_type_size(snow,0.1,0.15,0,0)
emitter = part_emitter_create(part);
emitter2 = part_emitter_create(part);
//part_emitter_region(part,emitter2,0,room_width+400,-10,-5,ps_shape_rectangle,ps_distr_linear);


timer = 0;



alarm[0] = 1;

