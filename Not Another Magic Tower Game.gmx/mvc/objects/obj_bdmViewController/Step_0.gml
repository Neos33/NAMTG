if(player_is_alive())
{
    __view_set( e__VW.XView, 0, RangeClamp(player.x - 400, 0, room_width - 800) );
    player.djump = true;
}

