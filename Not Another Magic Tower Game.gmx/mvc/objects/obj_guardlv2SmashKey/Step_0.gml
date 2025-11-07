if(status == 0)
{
    y = obj_guardlv2_combat.y - 20;
    x = obj_guardlv2_combat.x - 28;
    
    if(!instance_exists(obj_guardlv2_combat))
    {
        instance_destroy();
    }
}
else
{
    hspeed = 0.5;
    image_angle += 10;
    image_alpha -= 0.05;
    gravity = 0.2;
    if(image_alpha <= 0)
    {
        instance_destroy();
    }
}

