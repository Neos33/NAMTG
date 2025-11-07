draw_set_font(fontST);
draw_set_color(c_fuchsia);
draw_set_halign(fa_left);
draw_set_alpha(alpha);
draw_set_circle_precision(64);
draw_text(x+48,y+32*0,string_hash_to_newline(" * 1000 ="+string(1000*global.centralWingNum)));
draw_text(x+48,y+32*1,string_hash_to_newline(" * 1000 ="+string(1000*global.upstairsWingNum)));
draw_text(x+48,y+32*2,string_hash_to_newline(" * 1000 ="+string(1000*global.downstairsWingNum)));
//draw_text(x+48,y+32*3," * 1000 ="+1000*string(global.greenKeyNum));
//draw_text(x+48,y+32*4," * 1000 ="+1000*string(global.redKeyNum));
draw_sprite_ext( spr_centerWing,0,x+16,y-16,1,1,0,c_white,alpha);
draw_sprite_ext( spr_upstairsWing,0,x+16,y+16,1,1,0,c_white,alpha);
draw_sprite_ext( spr_downstairsWing,0,x+16,y+16*3,1,1,0,c_white,alpha);
//draw_sprite( spr_greenKey,0,x+16,y+16*5);
//draw_sprite( spr_ironKey,0,x+16,y+16*7);
draw_circle(x+80,y+35,100,2);


draw_reset_color();
draw_set_circle_precision(24);

