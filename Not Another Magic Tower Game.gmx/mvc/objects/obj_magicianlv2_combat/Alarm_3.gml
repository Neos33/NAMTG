for(var i=0;i<3;i+=1)
{
    var aa = instance_create(x,y,obj_magicianlv2Bullet);
    aa.speed = 8;
    aa.direction = angle1 + 120 * i;
}
angle1 += 13;
audio_playsound(sndShoot);
if(phase == 1)
{
    alarm[3] = 4;
}

