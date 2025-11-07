//creating a screenflash
draw_set_color(c_white);
draw_set_alpha(1 - transparency);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0);
draw_set_alpha(1);
transparency += 1 / time;
if transparency >= 1
{
    instance_destroy();
}



