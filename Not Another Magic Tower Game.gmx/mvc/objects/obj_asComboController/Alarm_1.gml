var flash;

if(comboXScale > 0)
{
    flash = instance_create(obj_armoredSoldier_combat.x - 16, obj_armoredSoldier_combat.y, obj_levelupFlash);
}
else
{
    flash = instance_create(obj_armoredSoldier_combat.x + 16, obj_armoredSoldier_combat.y, obj_levelupFlash);
}
flash.image_xscale = 2;
flash.image_yscale = 2;
alarm[2] = 30;
alarm[11] = 1;

