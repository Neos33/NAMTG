ps=part_system_create();

pt=part_type_create()
part_type_sprite(pt,spr_fireWaterParticle,0,0,0)
part_type_size(pt,1,1,-0.02,0)
part_type_life(pt,150,150)
part_type_speed(pt,2,4,0,0) 
part_type_direction(pt,45,135,0,0)
part_type_gravity(pt,0.3,270)



