if(!player_is_alive())
    exit;
with(player)
{
    instance_destroy();
}
obj_faShiLiu_combat.x = 720;
obj_faShiLiu_combat.y = 304;
obj_faShiLiu_combat.image_xscale = -1;
room_goto(rFaShiliu02);
alarm[1] = 1;

