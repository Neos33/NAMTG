draw_background_stretched_ext(bgGeometryDash,__view_get( e__VW.XView, 0 ) - bgOffset,__view_get( e__VW.YView, 0 ),800,608, global.img_blend, 0.9);
draw_background_stretched_ext(bgGeometryDash,__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - bgOffset,__view_get( e__VW.YView, 0 ),800,608, global.img_blend, 0.9);
draw_set_color(c_white);
draw_rectangle(__view_get( e__VW.XView, 0 ) + 100 - 1, 32 - 1, __view_get( e__VW.XView, 0 ) + 700 + 1, 48 + 1, true);
draw_set_color(c_red);
if(mouseDown)
{
    draw_rectangle(__view_get( e__VW.XView, 0 ) + 100 , 32, mouse_x, 48, false);
}
else
{
    draw_rectangle(__view_get( e__VW.XView, 0 ) + 100 , 32, __view_get( e__VW.XView, 0 ) + 100 + currentPos / size * 600, 48, false);
}


draw_set_color(c_white);

