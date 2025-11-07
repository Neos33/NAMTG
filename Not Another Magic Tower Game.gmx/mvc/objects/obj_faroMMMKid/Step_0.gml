if(start)
{
    x = RangeClamp(mouse_x, 200, 600);
    y = RangeClamp(mouse_y, -100, 608);
    
    if(identical)
    {
        if(mouse_x != x || mouse_y != y)
        {
            identical = false;
            window_set_cursor(cr_default);
        }
    }
    else
    {
        if(mouse_x == x && mouse_y == y)
        {
            identical = true;
            window_set_cursor(cr_none);
        }
    }
}
else if(!closed)
{
    if(mouse_x >= x - 20 && mouse_x <= x + 20 && mouse_y >= y - 20 && mouse_y <= y + 20)
    {
        if(mouse_check_button_pressed(mb_left))
        {
            start = true;
            with(obj_faroMMMHint)
            {
                alarm[0] = 0;
                alarm[1] = 0;
                alarm[2] = 1;
            }
        }   
    }
}

player.x = x;
player.y = y;
if(!player_is_alive())
{
    instance_destroy();
}

