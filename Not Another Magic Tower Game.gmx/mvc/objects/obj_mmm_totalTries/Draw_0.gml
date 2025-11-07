draw_current();
draw_set_halign(fa_right);
draw_set_font(fontMMM1);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x,y + 40, string_hash_to_newline(string(global.mmmTotalTries)));


draw_reset();

