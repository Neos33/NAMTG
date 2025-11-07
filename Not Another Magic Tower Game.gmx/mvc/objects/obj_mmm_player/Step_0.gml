if(obj_mmm_gameController.start)
{
    x = RangeClamp(mouse_x, 200, 600);
    y = RangeClamp(mouse_y, 0, 608);
    
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

