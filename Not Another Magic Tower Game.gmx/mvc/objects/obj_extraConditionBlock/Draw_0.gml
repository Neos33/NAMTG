draw_current();
draw_sprite_stretched(spr_extraStar,0,x-14,y-14,28,28);
draw_set_font(font12);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(x,y,string_hash_to_newline(string(num)));


draw_reset();

