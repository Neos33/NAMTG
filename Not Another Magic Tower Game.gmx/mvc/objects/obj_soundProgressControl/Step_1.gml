if(FMODInstanceIsPlaying(bgm))
{
    with(player)
    {
        hspeed = global.dashSpd;
        sprite_index = sprPlayerRunning;
        gravity = 0.5;
    }
    
    with(obj_GD_Plane)
    {
        hspeed = global.dashSpd;
    }
}


