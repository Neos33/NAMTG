if(part_type_exists(burstFlare))
{
    part_type_destroy(burstFlare);
}

if(part_emitter_exists(sys,flareEmit))
{
    part_emitter_destroy(sys,flareEmit);
}

if(part_system_exists(sys))
{
    part_system_destroy(sys);
}

