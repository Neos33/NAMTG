emitter1 = part_emitter_create(obj_fireParticleController.ps);
part_emitter_region(obj_fireParticleController.ps,emitter1,x,x,y,y,0,0);
part_emitter_stream(obj_fireParticleController.ps,emitter1,obj_fireParticleController.particle1,-1);
alarm[0] = 50;

