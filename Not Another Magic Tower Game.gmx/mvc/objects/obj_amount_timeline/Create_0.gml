if(global.isCheated)
  instance_destroy();
alarm[0]=80;
alarm[1]=160;
alarm[2]=240;
alarm[3]=320;
Sname=part_system_create();
particle1 = part_type_create();
part_type_shape(particle1,pt_shape_star);
part_type_size(particle1,0.05,0.10,0.01,0);
part_type_scale(particle1,3.76,2.86);
part_type_color3(particle1,16777215,65535,14597869);
part_type_alpha3(particle1,0.63,0.71,0.02);
part_type_speed(particle1,2,5,0,0);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,-147,258,4,0,0);
part_type_blend(particle1,1);
part_type_life(particle1,13,90);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,0,800,0,608,0,0);
alarm[4]=1;


step = 0;
t = 0;
//global.total=global.attack*20+global.defense*40+global.hp*5+getCurrentTotalExp()+global.yellowKeyNum*100+global.blueKeyNum*200+global.redKeyNum*500+global.greenKeyNum*1000+global.ironKeyNum*1000+global.centralWingNum*1000+global.upstairsWingNum*1000+global.downstairsWingNum*1000+global.special[0]*1000+global.special[1]*1000+global.special[2]*1000+global.special[3]*1000+getAchievementsNum()*40+global.story;


