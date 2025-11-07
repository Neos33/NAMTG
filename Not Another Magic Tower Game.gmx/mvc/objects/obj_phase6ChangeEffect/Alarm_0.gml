if(!instance_exists(obj_shiliuShip))
    exit;
obj_faShiLiu_combat.hpLimit = 0;
obj_faShiLiu_combat.phase = 8;
obj_faShiLiu_combat.combatTime = 0;
obj_faShiLiu_combat.x = 720;
obj_faShiLiu_combat.y = 304;
room_goto(rFaShiliu07);
alarm[1] = 1;

