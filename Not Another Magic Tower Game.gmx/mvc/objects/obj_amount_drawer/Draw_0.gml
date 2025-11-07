draw_set_font(fontST);
draw_set_color(c_white);
draw_set_alpha(alpha);
draw_set_circle_precision(64);
draw_set_halign(fa_left);
draw_text(x+48,y+32*0,string_hash_to_newline(" * 20 ="+string(20*global.attack)));
draw_text(x+48,y+32*1,string_hash_to_newline(" * 40 ="+string(40*global.defense)));
draw_text(x+48,y+32*2,string_hash_to_newline(" * 5 ="+string(5*global.hp)));
draw_text(x,y+32*3,string_hash_to_newline("Level & Exp  "+string(getCurrentTotalExp())));
draw_sprite_ext(spr_attUp1,0,x+16,y-16,1,1,0,c_white,alpha);
draw_sprite_ext(spr_defUp1,0,x+16,y+16,1,1,0,c_white,alpha);
draw_sprite_ext(spr_hpUp1,0,x+16,y+16*3,1,1,0,c_white,alpha);
draw_circle(x+80,y+60,105,2);


draw_set_circle_precision(24);
draw_reset();

