sys = part_system_create();

part = part_type_create();
part_type_shape(part, pt_shape_smoke);
part_type_size(part, 1,1,0.02,0.02);
part_type_scale(part, 1, 1);
part_type_color3(part, c_black, make_color_rgb(32,32,32), make_color_rgb(64,64,64));
part_type_alpha3(part,0.2,0.4,0.6);
part_type_life(part, 450, 550);

emit = part_emitter_create(sys);
part_emitter_region(sys,emit,0,800,0,608,ps_shape_rectangle,ps_distr_gaussian);
//part_emitter_burst(sys,emit,part,-4);

