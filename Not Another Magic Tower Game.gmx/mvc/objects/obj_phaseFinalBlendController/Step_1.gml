with(player)
{
    x = 96 + 17;
    if(sprite_index == sprPlayerIdle)
    {
        sprite_index = sprPlayerRunning;
    }
    hspeed = 0;
}

