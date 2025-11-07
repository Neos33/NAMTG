with(obj_tre_bullet){
    a=instance_create(x,y,obj_tre_bullet2);
    a.sprite_index=sprite_index;
    a.image_index=image_index;
    a.image_xscale=0;
    a.speed = 3;
    a.friction = -0.1;
    a.alarm[5] = 1;
    a.direction = 360*sin(random(pi))+90;
    instance_destroy()
}
with(obj_tre_cam)instance_destroy()
instance_create(400,304,obj_tre_ef2)

