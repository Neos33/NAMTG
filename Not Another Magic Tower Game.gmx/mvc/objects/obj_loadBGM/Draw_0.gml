//draw_current();
draw_set_halign(fa_right);
draw_set_alpha(1);
draw_set_font(fontLoadBGM);
draw_set_halign(fa_left);
draw_text(32,y,string_hash_to_newline("Loading BGM..."));
draw_set_halign(fa_right);
draw_text(x,y,string_hash_to_newline(string(musicPer) + "%"));
draw_set_color(c_white);
draw_set_circle_precision(64);
draw_roundrect(32,520, 32 + 736 * musicPer / 100, 536,false);


draw_set_halign(fa_left);
draw_set_circle_precision(24);

