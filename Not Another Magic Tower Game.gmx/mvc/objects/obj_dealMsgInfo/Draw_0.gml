draw_set_font(font_leftmenu);
draw_set_alpha(alpha);
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text(x,y,string_hash_to_newline(msg));


draw_reset();

