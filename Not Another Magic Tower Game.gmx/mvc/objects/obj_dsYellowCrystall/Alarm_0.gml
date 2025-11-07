for(var i = 0; i < 3; i += 1)
{
    var b = instance_create(x,y,obj_dsCYBullet1);
    b.direction = startAngle1 + i * 120;
}
if(times mod 8 == 0)
{
    for(var i = 0; i < 2; i+=1)
    {
        b = instance_create(x,y,obj_dsCYBullet2);
        b.direction = startAngle2 + i * 180;
    }
}
times += 1;
sound_fix(snd_touhou_attack3);
alarm[0] = 4;

