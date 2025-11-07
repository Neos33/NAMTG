event_inherited();
atk=666;
def=140;
hp=1;
ex=0;
name = "Fapple";
combatObj = obj_taisa;
mybattleroom = rTaisa;
image_alpha = 0.8;
alarm[10] = 1;

ps = part_system_create();
part_system_depth(100, ps);

part = part_type_create();
part_type_shape(part,pt_shape_spark);
part_type_size(part,0.30,0.50,0,0);
part_type_scale(part,1,1);
part_type_color3(part,16711808,10485760,8388672);
part_type_alpha3(part,0.80,0.50,0);
part_type_speed(part,0.50,0.50,0,0);
part_type_direction(part,0,359,0,0);
part_type_orientation(part,0,0,0,1,0);
part_type_blend(part,1);
part_type_life(part,40,60);

emitter1 = part_emitter_create(ps);
part_emitter_region(ps,emitter1,x, x + 256,y,y,3,0);

emitter2 = part_emitter_create(ps);
part_emitter_region(ps,emitter2,x, x + 256,y + 256,y + 256,3,0);

emitter3 = part_emitter_create(ps);
part_emitter_region(ps,emitter3,x, x,y ,y + 256,3,0);

emitter4 = part_emitter_create(ps);
part_emitter_region(ps,emitter4,x + 256, x + 256,y ,y + 256,3,0);

