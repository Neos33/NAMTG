if(!stop)
{
    var rad = random_range(20,50);
    var ang = random_range(0,360);
    instance_create(obj_darkSummoner_combat.x + lengthdir_x(rad,ang), obj_darkSummoner_combat.y + lengthdir_y(rad,ang),obj_dsWhiteAppearEffect);
}

