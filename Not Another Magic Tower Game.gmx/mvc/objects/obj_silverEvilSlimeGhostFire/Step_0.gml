if(start)
{
    move_towards_point(player.x, player.y, spd);
    if(image_xscale < targetScale)
    {
        image_xscale += 0.02;
        image_yscale += 0.02;
    }
}

