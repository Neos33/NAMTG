if(room == rDemonLead || room == rDemonLeadOrininal)
{
    part_particles_clear(part1);
    part_particles_clear(beam);
    part_particles_clear(partBGFire);
    //sound_stop(sndHeedMyCall);
}
else if(room == rDemonLeadMonsters)
{
    part_particles_clear(partBubble);
}


