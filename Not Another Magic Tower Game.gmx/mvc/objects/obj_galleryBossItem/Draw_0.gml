draw_set_blend_mode(bm_add);
draw_current();
draw_set_blend_mode(bm_normal);
draw_set_font(fontBasicInfo);
draw_set_alpha(1);
draw_set_color(c_silver);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x,y+40,string_hash_to_newline(txt));

draw_reset();

