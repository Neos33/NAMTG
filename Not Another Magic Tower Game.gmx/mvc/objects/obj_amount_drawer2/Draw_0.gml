draw_set_font(fontST);
draw_set_color(c_aqua);
draw_set_halign(fa_left);
draw_set_alpha(alpha);
draw_set_circle_precision(64);
draw_text(x+48,y+32*0,string_hash_to_newline(" * 100 ="+string(100*global.yellowKeyNum)));
draw_text(x+48,y+32*1,string_hash_to_newline(" * 200 ="+string(200*global.blueKeyNum)));
draw_text(x+48,y+32*2,string_hash_to_newline(" * 500 ="+string(500*global.redKeyNum)));
draw_text(x+48,y+32*3,string_hash_to_newline(" * 1000 ="+string(1000*global.greenKeyNum)));
draw_text(x+48,y+32*4,string_hash_to_newline(" * 1000 ="+string(1000*global.ironKeyNum)));
draw_sprite_ext( spr_yellowKey,0,x+16,y-16,1,1,0,c_white,alpha);
draw_sprite_ext( spr_blueKey,0,x+16,y+16,1,1,0,c_white,alpha);
draw_sprite_ext( spr_redKey,0,x+16,y+16*3,1,1,0,c_white,alpha);
draw_sprite_ext( spr_greenKey,0,x+16,y+16*5,1,1,0,c_white,alpha);
draw_sprite_ext( spr_ironKey,0,x+16,y+16*7,1,1,0,c_white,alpha);
draw_circle(x+85,y+70,120,2);


draw_reset_color();
draw_set_circle_precision(24);

