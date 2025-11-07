at3 = false;
with(obj_diaDanmaku)
{
    if image_index = 1
    {
        speed = 15;
        direction = point_direction(x,y,player.x,player.y);
        image_angle = direction;
    }
}
with(obj_diaBlock)
{
    a=instance_create(x,y,obj_diaPlatform2);
    a.image_xscale=image_xscale;
    a.image_index=image_index;
    a.yspeed = 12;
    instance_destroy();
}

