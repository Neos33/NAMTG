if(player_is_alive() && (instance_exists(obj_giantBat_combat) || instance_exists(obj_tl_giantBat)))
{
    move_towards_point(player.x,player.y,2.5);
}

