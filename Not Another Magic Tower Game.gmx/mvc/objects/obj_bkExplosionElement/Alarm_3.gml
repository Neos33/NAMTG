if(image_alpha < 1)
{
    image_alpha += 0.05;
    alarm[3] = 1;
}
else
{
    blendStart = true;
    blendSpd = 0.2 + obj_burningKnight_combat.hp / obj_burningKnight_combat.oHP * 0.4;
    blendLimit = 8;
}

