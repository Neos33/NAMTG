//part_type_clear(part);

if(part_emitter_exists(ps, emitter1))
{
    part_emitter_destroy(ps, emitter1);
}

if(part_emitter_exists(ps, emitter2))
{
    part_emitter_destroy(ps, emitter2);
}

if(part_emitter_exists(ps, emitter3))
{
    part_emitter_destroy(ps, emitter3);
}

if(part_emitter_exists(ps, emitter4))
{
    part_emitter_destroy(ps, emitter4);
}

if(part_type_exists(part))
{
    part_type_destroy(part);
}

if(part_system_exists(ps))
{
    part_system_destroy(ps);
}



