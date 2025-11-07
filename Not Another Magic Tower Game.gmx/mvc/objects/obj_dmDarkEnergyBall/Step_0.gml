speed += 0.2;

part_emitter_region(obj_dmParticleController.sys,emit,x - sprite_width / 2,x + sprite_width / 2, y, y + sprite_height / 2,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_burst(obj_dmParticleController.sys,emit,obj_dmParticleController.fire,ammount);

