for(var i=0;i<5;i+=1)
{
    var crystal = instance_create(obj_darkSummoner_combat.x + lengthdir_x(r, angle + 72 * i), obj_darkSummoner_combat.y + lengthdir_y(r, angle + 72 * i), obj_dsWhiteCrystalStart);
    crystal.startAngle = angle + 72*i;
    crystal.sprite_index = spr[i];
}

