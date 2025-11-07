emit = part_emitter_create(obj_dmParticleController.sys);
part_emitter_region(obj_dmParticleController.sys,emit,x-96,x+96,y-96 + 16,y+96 + 16,ps_shape_ellipse,ps_distr_gaussian);

image_speed = 1/6;



