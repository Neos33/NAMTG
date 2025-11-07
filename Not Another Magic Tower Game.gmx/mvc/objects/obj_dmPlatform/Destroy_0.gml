sound_fix(sndbrake);
var part1 = instance_create(x+8,y+8,obj_dmPlatformPart);
part1.hspeed = -1;
var part2 = instance_create(x+8,y+8,obj_dmPlatformPart);
part2.hspeed = 1;
part2.image_index = 1;

