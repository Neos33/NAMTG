draw_current();
draw_sprite_ext(spr_leftred,0,x,y,1,1,0,c_white,alpha);
draw_sprite_ext(spr_rightred,0,x,y,1,1,0,c_white,alpha);
draw_sprite_ext(spr_leftblue,0,x,y,1,1,0,c_white,alpha);
draw_sprite_ext(spr_rightblue,0,x,y,1,1,0,c_white,alpha);
draw_set_alpha(0.5);
draw_set_color(c_gray);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fontTaiko);
draw_text(x-18,y,string_hash_to_newline("D"));
draw_text(x+18,y,string_hash_to_newline("J"));
draw_text(x-30,y-25,string_hash_to_newline("S"));
draw_text(x+30,y-25,string_hash_to_newline("K"));


draw_reset();

