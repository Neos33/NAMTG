global.partsys_fire = part_system_create();
part_system_depth(global.partsys_fire,0);

global.part_fire = part_type_create(); 

    part_type_sprite(global.part_fire,spr_particle_fire,0,0,1);
    part_type_size(global.part_fire,2,3,-.01,0);
    part_type_orientation(global.part_fire,0,360,2,0,0);
    part_type_color3(global.part_fire,c_orange,c_orange,c_red);
    part_type_alpha3(global.part_fire,.015,.06,0);
    part_type_blend(global.part_fire,1);
    
    part_type_direction(global.part_fire,85,95,0,0);
    part_type_speed(global.part_fire,5,15,0,0);

    //how long it lasts
    part_type_life(global.part_fire,25,55);

global.part_snow = part_type_create(); 

    part_type_sprite(global.part_snow,spr_particleSnow,0,0,1);
    part_type_size(global.part_snow,0.1,1,-.01,0);
    part_type_orientation(global.part_snow,0,359,2,0,0);
    part_type_color3(global.part_snow,c_blue,c_aqua,c_white);
    part_type_alpha3(global.part_snow,.03,.12,0);
    part_type_blend(global.part_snow,1);
    
    part_type_direction(global.part_snow,0,359,0,0);
    part_type_speed(global.part_snow,0.1,0.5,0,0);

    //how long it lasts
    part_type_life(global.part_snow,15,35);
    
    
    
    
    
