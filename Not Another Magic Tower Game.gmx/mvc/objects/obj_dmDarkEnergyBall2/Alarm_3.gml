if(point_distance(x,y,targetX,targetY) < 125)
{
    if(speed > 0)
    {
        speed -= 0.1;
        alarm[3] = 1;
    }
    else
    {
        speed = 0;
        if !part_emitter_exists(obj_dmParticleController.sys, emitter)
            emitter = part_emitter_create(obj_dmParticleController.sys);
        part_emitter_region(obj_dmParticleController.sys,emitter,x-24,x+24,y-24/2,y+24/2,ps_shape_rectangle,ps_distr_linear);
        alarm[4] = 1;
        alarm[7] = 10;
    }
}
else
{
    alarm[3] = 1;
}

