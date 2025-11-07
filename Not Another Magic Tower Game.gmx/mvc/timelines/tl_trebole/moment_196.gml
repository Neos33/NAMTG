/// @description #action // star
a=instance_create(400,304,obj_tre_null);
with(a)
{
    scr_star(1,13,8,obj_tre_bullet2,270,4,5);
    with(obj_tre_bullet2){dirspd=2.5;no=1;}
    instance_destroy()
}


