if(part_type_exists(fire))
{
    part_type_destroy(fire);
}

if(part_emitter_exists(sys, emit))
{
    part_emitter_destroy(sys, emit);
}

if(part_system_exists(sys))
{
    part_system_destroy(sys);
}

