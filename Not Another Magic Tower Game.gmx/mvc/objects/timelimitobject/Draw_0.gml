draw_sprite(timelimitsprite,0,x,y);
draw_set_halign(fa_right)
draw_set_font(font12)
draw_set_color(c_black)
draw_text(x+22,y+9,string_hash_to_newline(setH));
if(setMin<10){draw_text(x+45,y+9,string_hash_to_newline(0));}
draw_text(x+55,y+9,string_hash_to_newline(setMin));
if(setS<10){draw_text(x+79,y+9,string_hash_to_newline(0));}
draw_text(x+89,y+9,string_hash_to_newline(setS));

