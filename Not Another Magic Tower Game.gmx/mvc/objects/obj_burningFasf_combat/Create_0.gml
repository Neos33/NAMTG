event_inherited();
name = "Burning FASF";
//global.specialmonster=1;
image_speed = 1/8;
x=400-16;
y=304-16;
image_alpha=0.05;
alarm[3]=5;
aa=instance_create(x+16,y+16,obj_burning_magiceage);
aa.image_alpha=0.05;
//sound_fix(snd_burning_fasf);

//participle by alarm 10 effect
explosion = part_system_create();
part_system_depth(explosion,-200);

//Create Core Emitter
emit1 = part_emitter_create(explosion);
part_emitter_region(explosion,emit1,x,x+20-random(40),y,y+20-random(40),ps_shape_ellipse,ps_distr_gaussian);

//Fire Layer
prt1 = part_type_create();
part_type_shape(prt1,pt_shape_flare);
part_type_size(prt1,2,3,0,0);
part_type_color1(prt1,make_color_rgb(255,128,64));
part_type_alpha2(prt1,1,0);
part_type_life(prt1,25,50);
part_type_speed(prt1,20,22,-0.7,0);
part_type_direction(prt1,0,360,0,0);
part_type_blend(prt1,true);
 
//"Fluffy" Layer
prt2 = part_type_create();
part_type_shape(prt2,pt_shape_explosion);
part_type_size(prt2,1,2,0,0);
part_type_color1(prt2,make_color_rgb(255,128,64));
part_type_alpha2(prt2,1,0);
part_type_life(prt2,25,50);
part_type_speed(prt2,20,22,-1,0);
part_type_direction(prt2,0,360,0,0);
part_type_blend(prt2,true);

//Smoke Layer
prt3 = part_type_create();
part_type_shape(prt3,pt_shape_smoke);
part_type_size(prt3,1,3,0.002,0);
part_type_color_mix(prt3,c_dkgray,c_ltgray);
part_type_alpha2(prt3,1,0);
part_type_life(prt3,80,100);
part_type_gravity(prt3,0.1,90);
part_type_speed(prt3,4,8,0,0);
part_type_direction(prt3,50,130,0,0);



attack1 = 0;
bullet_time = 0;
created = false;
haveshoot = 0;


