if(part_type_exists(prt1))
{
    part_type_destroy(prt1);
}
if(part_type_exists(prt2))
{
    part_type_destroy(prt2);
}
if(part_type_exists(prt3))
{
    part_type_destroy(prt3);
}
if(part_emitter_exists(explosion,emit1))
{
    part_emitter_destroy(explosion,emit1);
}

if(part_system_exists(explosion))
{
    part_system_destroy(explosion);
}
with(obj_tl_bfFireCircle)
{
    instance_destroy();
}

