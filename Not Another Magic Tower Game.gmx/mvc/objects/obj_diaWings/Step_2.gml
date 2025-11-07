if !stop
{
    x = obj_diaAtk3.x + lengthdir_x(24*a,obj_diaAtk3.image_angle);
    y = obj_diaAtk3.y + lengthdir_y(24*a,obj_diaAtk3.image_angle);
    image_angle = obj_diaAtk3.image_angle;
}
else
{
    if instance_exists(obj_diaAtk3)
    {
        x += obj_diaAtk3.x - obj_diaAtk3.xprevious;
        y += obj_diaAtk3.y - obj_diaAtk3.yprevious;
    }
    else
    {
        instance_destroy();
    }
}
if(ttt == 2)
{
    var inst = instance_create(x,y,obj_diaShadow);
        inst.sprite_index = sprite_index;
        inst.image_xscale = image_xscale;
        inst.image_yscale = image_yscale;
        inst.image_index = image_index;
        inst.image_speed = image_speed;
        inst.image_angle = image_angle;
        inst.depth = depth + 1;
    ttt = 0;
}
ttt += 1;

