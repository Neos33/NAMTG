draw_current();
draw_sprite_stretched(spr, 0, x - 8, y - 8, 16, 16);
draw_set_font(fontBasicInfoMini);
draw_set_valign(fa_bottom);
draw_set_color(c_black);
draw_text(x + 16, y - 12, string_hash_to_newline("x" + string(ammount)));
//draw_sprite(sprite_index, floor((clock mod 50) / 10), x, y);


draw_set_valign(fa_top);
draw_set_color(c_white);

