
with(instance_create(obj_finalPlane.x,obj_finalPlane.y-24,obj_hiddenPlayerController)) { txt = "Hold 'Z' to 'SHOOT'" }

pOffsetX = 0;

alarm[0] = 10;
alarm[1] = 250;
alarm[2] = 550;
alarm[3] = 800;

alarm[4] = 1000;
alarm[5] = 1000;
alarm[6] = 1050;
alarm[9] = 1400;
alarm[10] = 1450;
alarm[11] = 1475;

sys = part_system_create();
part_system_depth(sys,-10000);

fire = part_type_create();
part_type_sprite(fire,spr_particle_fire,0,0,1);
part_type_size(fire,2,3,-.01,0);
part_type_orientation(fire,85,95,2,0,0);
part_type_color3(fire,make_color_rgb(64,0,32),make_color_rgb(32,0,64),make_color_rgb(64,0,64));
part_type_alpha3(fire,.06,.24,0);
part_type_blend(fire,1);
part_type_direction(fire,85,95,0,0);
part_type_speed(fire,3,6,0,0);
part_type_life(fire,15,20);

finalFire1 = part_type_create(); 
part_type_sprite(finalFire1,spr_particle_fire,0,0,1);
part_type_size(finalFire1,2,3,-.01,0);
part_type_orientation(finalFire1,0,360,2,0,0);
part_type_color3(finalFire1,c_orange,c_orange,c_red);
part_type_alpha3(finalFire1,.15,0.6,0);
part_type_blend(finalFire1,1);
part_type_direction(finalFire1,85,95,0,0);
part_type_speed(finalFire1,2.5,7,0,0);
part_type_life(finalFire1,25,35);

finalFire2 = part_type_create(); 
part_type_sprite(finalFire2,spr_particle_fire,0,0,1);
part_type_size(finalFire2,2,3,-.01,0);
part_type_orientation(finalFire2,0,360,2,0,0);
part_type_color3(finalFire2,c_orange,c_orange,c_red);
part_type_alpha3(finalFire2,.15,0.6,0);
part_type_blend(finalFire2,1);
part_type_direction(finalFire2,265,275,0,0);
part_type_speed(finalFire2,2.5,7,0,0);
part_type_life(finalFire2,25,35);
    
dis = 288;
emitter1 = part_emitter_create(sys);
part_emitter_region(sys,emitter1,-32+pOffsetX,832+pOffsetX,512+dis,624+dis,ps_shape_rectangle,ps_distr_linear);

emitter2 = part_emitter_create(sys);
part_emitter_region(sys,emitter2,-32+pOffsetX,832+pOffsetX,-16-dis,96-dis,ps_shape_rectangle,ps_distr_linear);

fbCount = 3;
alarm[7] = 1110;
fbInterval = 130;

