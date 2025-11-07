draw_set_font(fontMMM1);
draw_set_alpha(1);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(__view_get( e__VW.XView, 0 ) + 400, __view_get( e__VW.YView, 0 ) + 16, string_hash_to_newline(string(currentMeter)));



draw_reset();

