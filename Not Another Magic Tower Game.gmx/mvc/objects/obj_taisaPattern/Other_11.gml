num11 = 4;
dir11 += 77;
for(var i=0;i<num11;i+=1)
{
    var a = instance_create(400,304,obj_taisaLaserEmitter);
    a.speed = 8;
    a.direction = dir11+360/num11*i;
    a.dir = a.direction+60;
}
alarm[11] = 60;

