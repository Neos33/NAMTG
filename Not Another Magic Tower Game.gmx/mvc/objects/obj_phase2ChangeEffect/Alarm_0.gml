if(!instance_exists(obj_trianglePlane))
    exit;
obj_faShiLiu_combat.x = 720;
obj_faShiLiu_combat.y = 304;
obj_faShiLiu_combat.image_xscale = -1;
obj_faShiLiu_combat.hpLimit = 400;
obj_faShiLiu_combat.phase = 3;
obj_faShiLiu_combat.alarm[11] = 5;
room_goto(rFaShiliu03);
alarm[1] = 1;

