if(part_type_exists(flash))
{
    part_type_destroy(flash);
}
if(part_type_exists(beam))
{
    part_type_destroy(beam);
}
if(part_type_exists(fire2))
{
    part_type_destroy(fire2);
}
if(part_emitter_exists(sys,emitter))
{
    part_emitter_destroy(sys,emitter);
}

if(part_system_exists(sys))
{
    part_system_destroy(sys);
}

