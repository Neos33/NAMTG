if(!draw) exit;
draw_set_alpha(0.8);
draw_set_color(c_black);
draw_rectangle(sx,sy,800-sx,608-sy,false);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(fontBrTitle);
draw_set_alpha(txtAlpha);
draw_text(400, 128, string_hash_to_newline("Battle Sequence"));


draw_reset();

