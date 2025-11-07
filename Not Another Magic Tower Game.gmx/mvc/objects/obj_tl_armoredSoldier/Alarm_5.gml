if(!sndroar)
{
    sndroar = true;
    sound_fix(sndRoar);
}
__view_set( e__VW.XView, 0, random_range(-3,3) );
__view_set( e__VW.YView, 0, random_range(-3,3) );
var s = instance_create(x,y,obj_asSpike);
s.direction = random_range(dirMin, dirMax);
s.speed = random_range(8, 12);
alarm[5] = 4;

