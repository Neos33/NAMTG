ps = part_system_create();
particle1 = part_type_create();
part_type_shape(particle1,pt_shape_smoke);
part_type_size(particle1,0.30,0.40,0,0);
part_type_scale(particle1,1,1);
part_type_color2(particle1,8421631,2960895);
part_type_alpha2(particle1,0.1,0.1);
part_type_speed(particle1,1,1,0,0);
part_type_direction(particle1,60,120,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,10,30);
alarm[0] = 1;


//instance_create(random_range(192 + 64, 800 - 64), random_range(64, 608 - 64), obj_fireParticleElement);/
//alarm[0] = 5;

