if(eCount < eSize)
{
    var bDir = ds_list_find_value(eList,eCount);
    part_type_orientation(obj_dmParticleController.beam,bDir-15,bDir+15,0,0,0);
    if part_emitter_exists(obj_dmParticleController.sys, emitter)
        part_emitter_burst(obj_dmParticleController.sys,emitter,obj_dmParticleController.beam,1);
    eCount += 1;
    alarm[4] = 1;
}
else
{
    alarm[5] = 1;
}

