rnd[1]=random(360);
rnd[2]=random(360);
rnd[3]=random(360);
with(obj_tre_bullet)
{
    m = num mod 3;
    d = num div 3;
    xxx = 400+lengthdir_x(50+100*m,10*d+other.rnd[m]);
    yyy = 304+lengthdir_y(50+100*m,10*d+other.rnd[m]);
    a=instance_create(x,y,obj_tre_bullet2);
    a.speed=point_distance(x,y,xxx,yyy)/20;
    a.m=m;
    a.direction = point_direction(x,y,xxx,yyy);
    a.sprite_index=sprite_index;
    a.image_index=image_index;
    a.image_alpha=0.5;
    //a.friction=cal_friction(a.speed,point_distance(x,y,xxx,yyy));
    a.xxx=xxx;
    a.no=1;
    a.yyy=yyy;
    a.alarm[3] = 21;
    instance_destroy();
}

