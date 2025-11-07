with(obj_tre_blend){instance_destroy()};
with(obj_tre_ef){f=1;}
with(obj_tre_bullet){
    speed = 0;
    alarm[4] = 0;
    image_alpha=1;
    alarm[5] = 1;
    len5 = abs(x-400);
    dir5 = point_direction(400,y,x,y);
}
instance_create(400,304,obj_tre_ef2)

