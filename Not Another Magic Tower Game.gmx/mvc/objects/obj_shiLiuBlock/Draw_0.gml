draw_current();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font24);
draw_set_color(c_silver);
draw_set_alpha(1);
draw_text(x, y, string_hash_to_newline(string(10 - global.randomMonstersKilled)));


draw_reset();

