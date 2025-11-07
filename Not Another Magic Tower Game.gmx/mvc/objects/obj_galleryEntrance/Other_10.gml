if(part_emitter_exists(ps,emitter))
{
    part_emitter_destroy(ps, emitter);
}

if(part_type_exists(pt))
{
    part_type_destroy(pt);
}

if(part_system_exists(ps))
{
    part_system_destroy(ps);
}

