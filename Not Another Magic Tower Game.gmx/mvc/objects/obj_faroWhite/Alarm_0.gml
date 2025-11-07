stop = true;
if(!player_is_alive())
    exit;
if(isWarp)
{
    player.x = warpX;
    player.y = warpY;
}
room_goto(roomTo);

