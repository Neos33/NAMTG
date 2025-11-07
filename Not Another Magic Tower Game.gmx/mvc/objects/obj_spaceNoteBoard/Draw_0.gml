draw_current();
draw_set_font(fontBasicInfoMini);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(txtAlpha);
draw_set_color(c_white);
if(destroy) exit;
draw_text(x,y-27,string_hash_to_newline("Press 'UP' to read"));


draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);

