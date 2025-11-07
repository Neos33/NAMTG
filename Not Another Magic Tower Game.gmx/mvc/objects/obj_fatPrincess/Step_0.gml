if(room != rFinalCorridor)
{
    if(!player_is_alive()) instance_destroy();
    x = player.x;
    depth = -20;
}
else
{
    x = obj_draw_player.tx;
    depth = -1000;
}
y = player.y;
image_xscale = -player.image_xscale;

event_user(0);

