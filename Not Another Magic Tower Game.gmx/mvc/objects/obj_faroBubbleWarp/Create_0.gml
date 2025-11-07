particle1 = part_type_create();
part_type_sprite(particle1,spr_effect1,0,1,1);
part_type_size(particle1,1,1,0,0);
part_type_scale(particle1,1.50,1.50);
part_type_color3(particle1,16777215,8454143,8454016);
part_type_alpha3(particle1,0.80,0.55,0.30);
part_type_speed(particle1,1.40,2,0.07,0);
part_type_direction(particle1,225,315,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,359,2,0,1);
part_type_blend(particle1,0);
part_type_life(particle1,15,20);


particle2 = part_type_create();
part_type_sprite(particle2,spr_effect1,0,0,0);
part_type_size(particle2,1,1,0,0);
part_type_scale(particle2,1.00,1.00);
part_type_color2(particle2,16777215,16744703);
part_type_alpha2(particle2,0.40,0.07);
part_type_speed(particle2,1,1,0,0);
part_type_direction(particle2,0,359,0,0);
part_type_gravity(particle2,0,270);
part_type_orientation(particle2,0,350,4,4,1);
part_type_blend(particle2,1);
part_type_life(particle2,15,20);


part_type_step(particle1,-3,particle2);
part_type_death(particle1,3,particle2);

emitter = part_emitter_create(obj_extraBubbleParticle.Sname);

alarm[10] = 1;

