alarm[2] = 0;
with(obj_tre_bullet3)
{
    if image_index == 2
    {
        move_towards_point(player.x,player.y,-15);
        shadow = true;
        saspd = 0.1;
        stt = 4;
        bounce = 0;
    }
}

