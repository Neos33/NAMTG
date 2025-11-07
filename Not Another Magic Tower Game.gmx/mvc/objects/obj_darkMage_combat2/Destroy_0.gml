if(part_emitter_exists(obj_dmParticleController.sys,emit))
{
    part_emitter_destroy(obj_dmParticleController.sys,emit);
}

/*if(part_attractor_exists(obj_dmParticleController.sys, attract1))
{
    part_attractor_destroy(obj_dmParticleController.sys, attract1);
}*/
event_inherited();

/* */
/*  */
