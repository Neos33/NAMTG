action_inherited();
alarm[0]=1;
a=1;
alarm[1]=70;
alarm[10]=500;
image_speed = 1/4;
isStable = true;
obj_burningFasf_combat.created = true;

sys = part_system_create();
times = 8;

//Emitter
emitter = part_emitter_create(sys);
part_emitter_region(sys,emitter,x-sprite_width/2,x+sprite_width/2,y-sprite_height/2,y+sprite_height/2,ps_shape_rectangle,ps_distr_linear);

//Flash Particle
flash = part_type_create();
part_type_blend(flash,1);
part_type_color1(flash,make_color_rgb(255,128,64));
part_type_orientation(flash,0,360,3,0,0);
part_type_shape(flash,pt_shape_flare);
part_type_size(flash,10,10,-1,0);

//Beam Particle
beam = part_type_create();
part_type_blend(beam,1);
part_type_color1(beam,make_color_rgb(255,128,64));
part_type_sprite(beam,sprBeam,0,0,0);
sprite_set_alpha_from_sprite(sprBeam,sprBeam);
part_type_orientation(beam,0,360,0,0,0);
part_type_size(beam,0,0,0.5,1);

//Fire 2 Particle
fire2 = part_type_create();
part_type_alpha2(fire2,1,0);
part_type_color1(fire2,make_color_rgb(255,128,64));
part_type_blend(fire2,1);
part_type_direction(fire2,0,360,0,0);
part_type_gravity(fire2,0.05,270);
part_type_life(fire2,80,130);
part_type_orientation(fire2,0,360,0,0,0);
part_type_sprite(fire2,sprPlasma,0,1,0);
//sprite_set_alpha_from_sprite(sprPlasma,sprPlasma);
part_type_size(fire2,0.1,0.4,0.015,0);
part_type_speed(fire2,15,20,-5,0);




boomCountDown = 0;
boom = false;

