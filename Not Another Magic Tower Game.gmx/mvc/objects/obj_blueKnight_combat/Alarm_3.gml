sound_fix(sndbksword);
if(i=0)
{
    i=1;
    var aa=instance_create(770,587,obj_blueknight_sword);
    aa.direction=point_direction(aa.x,aa.y,player.x,player.y);
    aa.speed=24;
    alarm[3]=28;
}
else
{
    if(i=1)
    {
        i=2;
        var aa=instance_create(15,587,obj_blueknight_sword);
        aa.direction=point_direction(aa.x,aa.y,player.x,player.y);
        aa.speed=24;
        alarm[3]=24;
    }
    else
    {
        if(i=2)
        {
            i=3;
            var aa=instance_create(15,15,obj_blueknight_sword);
            aa.direction=point_direction(aa.x,aa.y,player.x,player.y);
            aa.speed=28;
            alarm[4]=30;
        }
    }
}

