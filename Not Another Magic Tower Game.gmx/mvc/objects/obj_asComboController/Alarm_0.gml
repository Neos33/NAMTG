if(alpha < 1)
{
    alpha += 0.02;
    alarm[0] = 1;
}
else
{
    draw = false;
    obj_armoredSoldier_combat.image_alpha = 1;
    obj_armoredSoldier_combat.x = targetX;
    obj_armoredSoldier_combat.y = targetY;
    alarm[1] = 40;
}


