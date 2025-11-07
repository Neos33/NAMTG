//instance_create(sp_x,sp_y,obj_diaAtk1)
obj_diamante_combat.sp_x = sp_x;
obj_diamante_combat.sp_y = sp_y;
with(obj_diamante_combat)
{
    changeCombatObj(obj_diaAtk1, sp_x-x, sp_y-y);
}

