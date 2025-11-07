for(var i=0;i<3;i+=1)
{
    var aa = instance_create(x,y,obj_tlMagicianBullet);
    aa.speed = 7;
    aa.direction = angle1 + 120 * i;
}
angle1 += type * 13;
if(type == 1)
{
    sound_fix(sndShoot);
}

alarm[3] = 8;

