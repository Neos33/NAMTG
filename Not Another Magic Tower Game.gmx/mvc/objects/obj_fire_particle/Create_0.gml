init_fire_particles();
part_system_depth(global.partsys_fire,-101);
emitter = part_emitter_create(global.partsys_fire);
part_emitter_region(global.partsys_fire,emitter,192,832,400,704,ps_shape_rectangle,ps_distr_linear);

