
clouds_infront = part_system_create();
part_system_depth(clouds_infront,-1000); 
clouds_behind = part_system_create(); 
part_system_depth(clouds_behind,1000); 

cloud0 = part_type_create()
part_type_alpha2(cloud0,0.3,0)
part_type_color2(cloud0,c_white,c_ltgray)
part_type_direction(cloud0,180,180,0,0)
part_type_life(cloud0,700,750)
part_type_speed(cloud0,1,2,0,1.5)
part_type_shape(cloud0,pt_shape_cloud)
part_type_size(cloud0,1,2,0,0.02)

cloud1 = part_type_create()
part_type_alpha2(cloud1,0.8,0)
part_type_color2(cloud1,c_white,c_ltgray)
part_type_direction(cloud1,180,180,0,0)
part_type_life(cloud1,700,750)
part_type_speed(cloud1,0.5,1,0,1)
part_type_shape(cloud1,pt_shape_cloud)
part_type_size(cloud1,0.6,1.5,0,0.02)

emitter1 = part_emitter_create(clouds_infront)
part_emitter_region(clouds_infront,emitter1,room_width+20,room_width+40,0,room_height,ps_shape_rectangle,ps_distr_linear)

emitter2 = part_emitter_create(clouds_behind)
part_emitter_region(clouds_behind,emitter2,room_width+20,room_width+40,0,room_height,ps_shape_rectangle,ps_distr_linear)

