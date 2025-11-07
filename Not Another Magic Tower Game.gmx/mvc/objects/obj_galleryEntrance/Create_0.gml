txt = "";
color = c_white;

ps = part_system_create();
  
pt = part_type_create();
part_type_shape(pt,pt_shape_flare);
part_type_size(pt,0.50,1,0,0);
part_type_scale(pt,1,1);
part_type_color1(pt,color);
part_type_alpha1(pt,0.30);
part_type_speed(pt,1,2,0,0);
part_type_direction(pt,0,359,0,0);
part_type_gravity(pt,0,270);
part_type_orientation(pt,0,0,0,0,1);
part_type_blend(pt,1);
part_type_life(pt,30,30);

emitter = part_emitter_create(ps);
part_emitter_region(ps,emitter,x-10,x+10,y-10,y+10,1,1);


image_xscale = 2;
image_yscale = 2;
event_inherited();

