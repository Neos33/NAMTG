if(!player_is_alive())
    exit;
obj_faShiLiu_combat.hpLimit = 200;
obj_faShiLiu_combat.phase = 7;
obj_faShiLiu_combat.combatTime = 0;
obj_faShiLiu_combat.x = 720;
obj_faShiLiu_combat.y = 304;
with(player)
{
    instance_destroy();
}
room_goto(rFaShiliu06);
alarm[1] = 1;

