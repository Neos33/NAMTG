transform = true;
sound_fix(sndFire1);
instance_create(x,y,obj_dmChangeEffect);
burst = true;
//part_attractor_destroy(obj_dmParticleController.sys, attractor1);
//part_destroyer_destroy(obj_dmParticleController.sys,destroyer1);
part_emitter_region(obj_dmParticleController.sys,emit,x-64,x+64,y-64,y+64,ps_shape_ellipse,ps_distr_gaussian);
alarm[7] = 1;


