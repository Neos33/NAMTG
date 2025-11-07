part_emitter_region(part,emitter2,__view_get( e__VW.XView, 0 ),__view_get( e__VW.XView, 0 )+1200,__view_get( e__VW.YView, 0 )-10,__view_get( e__VW.YView, 0 )-10-5,ps_shape_rectangle,ps_distr_linear);
part_emitter_stream(part,emitter2,snow,-4);
repeat(1000) {part_system_update(part);}
part_emitter_destroy(part,emitter2)

