if(stop) exit;
part_type_size(burstFlare,flareMinSize,flareMaxSize,0,0);
part_type_speed(burstFlare,flareMinSpd,flareMaxSpd,flareSpdInc,0);
part_emitter_burst(flareEmit,flareEmit,burstFlare,5);

flareMinSize += 0.002;
flareMaxSize += 0.006;
flareMinSpd += 0.04;
flareMaxSpd += 0.12;
flareSpdInc += 0.001;

