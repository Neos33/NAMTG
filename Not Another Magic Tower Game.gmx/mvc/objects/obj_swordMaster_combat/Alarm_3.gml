if(player_is_alive())
{
    instance_create(x + sign(player.x - x) + 16, y, obj_swordMasterThrowingSword);
    sx = x;
    sy = y;
}

