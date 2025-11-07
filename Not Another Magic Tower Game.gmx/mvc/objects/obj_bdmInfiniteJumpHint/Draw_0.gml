draw_set_font(font12);
draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
draw_set_color(c_silver);
draw_set_alpha((0.2 + 0.018 * abs((step mod 100) - 50)) * alpha);
draw_text(player.x, player.y - 32, string_hash_to_newline("You can infinite jump!"));


draw_reset();

