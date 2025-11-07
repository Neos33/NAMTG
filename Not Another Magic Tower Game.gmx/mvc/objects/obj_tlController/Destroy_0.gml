part_type_destroy(part1);
part_type_destroy(partBGFire);
part_type_destroy(partBubble);
part_emitter_destroy(ps,pt1_em1);
part_emitter_destroy(ps,pt1_em2);
part_emitter_destroy(ps,beam_em1);
part_emitter_destroy(ps,beam_em2);
part_emitter_destroy(ps1,bgFireEmitter1);
part_emitter_destroy(ps1,bgFireEmitter2);
part_emitter_destroy(ps1,bgFireEmitter3);
part_emitter_destroy(ps,bubbleEmitter);
//part_destroyer_destroy(ps1,bgFireDestroyer);
part_system_destroy(ps);
part_system_destroy(ps1);


ds_list_destroy(rngRoomList);

