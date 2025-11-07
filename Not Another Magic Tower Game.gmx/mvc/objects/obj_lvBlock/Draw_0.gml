draw_sprite(sprite_index,image_index,x,y);
draw_set_font(font12);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x + 16, y + 16, string_hash_to_newline("Lv" + string(level)));

draw_reset();

