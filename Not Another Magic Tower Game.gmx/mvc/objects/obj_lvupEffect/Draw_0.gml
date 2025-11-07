draw_sprite_ext(sprite_index,0,x + 8,y + 6, 0.5, 0.5,0,c_white,1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fontBasicInfoMini);
draw_set_color(make_color_rgb(255,64,64));
draw_text(x + 26, y + 6, string_hash_to_newline(num));

draw_set_color(c_white);

