if(!instance_exists(obj_dsCrystall) && !instance_exists(obj_dsWhiteCrystal))
{
    instance_destroy();
    exit;
}
if(point_distance(x,y,obj_darkSummoner_combat.x, obj_darkSummoner_combat.y) > speed)
{
    move_towards_point(obj_darkSummoner_combat.x, obj_darkSummoner_combat.y, speed);
    speed += 0.5;
    //motion_add(point_direction(x,y,obj_darkSummoner_combat.x, obj_darkSummoner_combat.y),0.5);
    image_alpha += 0.02;
}
else
{
    speed = 0;
    if(image_xscale > 0)
    {
        image_xscale -= 0.05;
        image_yscale -= 0.05;
    }
    else
    {
        instance_destroy();
    }
}


