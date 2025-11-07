e=part_emitter_create(ps);
part_emitter_region(ps,e,cx-xRange,cx+xRange,cy+yRange,cy+yRange,ps_shape_rectangle,ps_distr_linear);
part_emitter_burst(ps,e,pt,ammount);
part_emitter_destroy(ps,e);

