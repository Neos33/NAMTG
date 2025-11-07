if(obj_diaAtk2.active == 0)
{
    obj_diaAtk2.active = 1;
    with(obj_diaBlock)
    {
        var a=instance_create(x,y,obj_diaPlatform);
        a.image_xscale=image_xscale;
        a.image_index=image_index;
        a.yspeed = -6;
        instance_destroy();
    }
}
speed = point_distance(obj_diaAtk2.x+(image_index-5)*24,obj_diaAtk2.y-80,x,y)/12;
direction = point_direction(x,y,obj_diaAtk2.x+(image_index-5)*24,obj_diaAtk2.y-80);
image_angle = direction + 90;
if(ttt == 2)
{
    var inst = instance_create(x,y,obj_diaShadow);
    inst.sprite_index = sprite_index;
    inst.image_xscale = image_xscale;
    inst.image_yscale = image_yscale;
    inst.image_index = image_index;
    inst.image_speed = image_speed;
    ttt = 0;
}
ttt += 1;
alarm[1] = 1;

