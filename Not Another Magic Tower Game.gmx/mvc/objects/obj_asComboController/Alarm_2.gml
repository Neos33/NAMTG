var combo = instance_create(obj_armoredSoldier_combat.x, obj_armoredSoldier_combat.y - 16, obj_asCombo);
combo.hspeed = -comboXScale * 0.5;
combo.vspeed = -0.1;
obj_asQTEPlayer.hspeed = -comboXScale * 0.5;
obj_asQTEPlayer.vspeed = -0.1;
alarm[3] = 1;
alarm[4] = 100;

