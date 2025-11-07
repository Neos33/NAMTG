init_fire_particles();

emitter = part_emitter_create(global.partsys_fire);
part_emitter_region(global.partsys_fire,emitter,208,800,0,608,ps_shape_rectangle,ps_distr_linear);

