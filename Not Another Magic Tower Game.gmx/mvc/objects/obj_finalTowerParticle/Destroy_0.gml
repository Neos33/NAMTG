part_particles_clear(clouds_infront);
part_particles_clear(clouds_behind);
part_type_destroy(cloud0);
part_type_destroy(cloud1);
part_emitter_destroy(clouds_infront, emitter1);
part_emitter_destroy(clouds_behind, emitter2);
part_system_destroy(clouds_infront) ;
part_system_destroy(clouds_behind);

