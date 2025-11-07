draw_set_font(fontEnding);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_silver);
draw_set_alpha(global.NarratorAlpha / 2);
draw_text_ext(x + 3, y + 3, string_hash_to_newline(txt), 50, 600);
draw_set_alpha(global.NarratorAlpha);
draw_text_ext(x, y, string_hash_to_newline(txt), 50, 600);


draw_reset();

