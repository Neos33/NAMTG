draw_current();
draw_sprite_stretched_ext(sprStarButton,1,x,y,32,32, c_white, 0.5);
draw_set_font(font12);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_set_alpha(1);
draw_text(x + 16,y + 16, string_hash_to_newline(string(num)));



draw_reset();

