partsys_fire = part_system_create();
part_system_depth(partsys_fire,0);

part_fire = part_type_create(); 

part_type_sprite(part_fire,spr_particle_fire,0,0,1);
part_type_size(part_fire,2,3,-.01,0);
part_type_orientation(part_fire,0,360,2,0,0);
part_type_color3(part_fire,c_orange,c_orange,c_red);
part_type_alpha3(part_fire,.05,0.2,0);
part_type_blend(part_fire,1);

part_type_direction(part_fire,85,95,0,0);
part_type_speed(part_fire,5,15,0,0);

part_type_life(part_fire,25,35);
    

mypart = part_emitter_create(partsys_fire);
part_emitter_region(partsys_fire,mypart,-32,832,512,608,ps_shape_rectangle,ps_distr_linear);


