if !player_is_alive()
{
    if x!=player.x
    { 
        image_xscale = sign(x-player.x)
    }
    timeline_running = 0;
    stop_all_alarms();
}

