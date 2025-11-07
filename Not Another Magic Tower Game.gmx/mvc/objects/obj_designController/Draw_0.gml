if(gridOn)
{
    draw_set_color(c_silver);
    draw_set_alpha(1);
    for(i = (floor(__view_get( e__VW.XView, 0 ) / gridSize) * gridSize); i <= __view_get( e__VW.XView, 0 ) + 800;  i += gridSize)
    {
        draw_line(i, 0, i, 608);
    }
    for(i = (floor(__view_get( e__VW.YView, 0 ) / gridSize) * gridSize); i <= __view_get( e__VW.YView, 0 ) + 608;  i += gridSize)
    {
        draw_line(__view_get( e__VW.XView, 0 ), i, __view_get( e__VW.XView, 0 ) + 800, i);
    }
}

if(isDraw)
{
 draw_sprite_ext(global.currentSpr, 0, floor(mouse_x / gridSize) * gridSize, floor(mouse_y / gridSize) * gridSize, 1, 1, 0, global.img_blend, 0.6);
}


draw_set_color(c_white);

