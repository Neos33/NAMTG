if(part_emitter_exists(sys, emitter1))
{
    part_emitter_destroy(sys,emitter1);
}
//if(part_type_exists(particle1))
//{
//    part_type_destroy(particle1);
//}
if(part_system_exists(sys))
{
    part_system_destroy(sys);
}

