with(obj_fireParticleEmitter)
{
    instance_destroy();
}
if(part_type_exists(particle1))
{
    part_type_destroy(particle1);
}
if(part_system_exists(ps))
{
    part_system_destroy(ps);
}

