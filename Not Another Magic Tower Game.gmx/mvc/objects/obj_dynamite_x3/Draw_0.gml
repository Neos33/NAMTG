draw_current();
draw_set_font(fontBasicInfoMini);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(x+14, y-14, string_hash_to_newline("x" + string(ammount)));

draw_reset_align();

