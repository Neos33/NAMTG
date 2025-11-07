for(var i = 0; i < 24; i+=1)
{
    p = instance_create(x,y,obj_beFinalBullet2);
    p.image_index = 8;
    p.speed = 5;
    p.direction = 15 * i;
    p.dir = 15 * i;
    p.centerX = x;
    p.centerY = y;   
}
if(tcount < 4)
{
    alarm[3] = 1;
}
else
{
    //obj_beFinalBullet2.alarm[4] = 20;
    tcount = 0;
    alarm[5] = 70;
}

