
part_emitter_region(sys,emitter1,-32+pOffsetX,832+pOffsetX,512+dis,624+dis,ps_shape_rectangle,ps_distr_linear);
part_emitter_burst(sys,emitter1,finalFire1,10);

part_emitter_region(sys,emitter2,-32+pOffsetX,832+pOffsetX,-16-dis,96-dis,ps_shape_rectangle,ps_distr_linear);
part_emitter_burst(sys,emitter2,finalFire2,10);
alarm[4] = 1;

