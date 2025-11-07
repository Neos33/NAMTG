draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_set_color(c_white)
draw_set_font(font12);
draw_text(x + 32,y-16,string_hash_to_newline(HP));

