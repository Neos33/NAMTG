draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(__view_get( e__VW.XView, 0 ) - global.dashboardWidth + global.menuPos, __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + global.menuPos, __view_get( e__VW.YView, 0 ) + 608, false);
if(global.menuPos > 0)
{
 draw_sprite(spr_GDMenuExpand, 1, __view_get( e__VW.XView, 0 ) + global.menuPos, __view_get( e__VW.YView, 0 ));
}
else
{
 draw_sprite(spr_GDMenuExpand, 0, __view_get( e__VW.XView, 0 ) + global.menuPos, __view_get( e__VW.YView, 0 ));
}
draw_set_color(c_white);
draw_set_font(font12);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_text(__view_get( e__VW.XView, 0 ) - global.dashboardWidth + global.menuPos + 16, __view_get( e__VW.YView, 0 ) + 32, string_hash_to_newline("Blocks:"));
draw_text(__view_get( e__VW.XView, 0 ) - global.dashboardWidth + global.menuPos + 16, __view_get( e__VW.YView, 0 ) + 132, string_hash_to_newline("Spikes:"));
draw_text(__view_get( e__VW.XView, 0 ) - global.dashboardWidth + global.menuPos + 16, __view_get( e__VW.YView, 0 ) + 300, string_hash_to_newline("Effects:"));
draw_text(__view_get( e__VW.XView, 0 ) - global.dashboardWidth + global.menuPos + 16, __view_get( e__VW.YView, 0 ) + 468, string_hash_to_newline("Transformers:"));





