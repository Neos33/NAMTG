draw_set_alpha(1);
draw_sprite_ext(spr_grayPlayer,image_index,x,y,0.8,0.8,0,c_white,0.7);
draw_sprite_ext(spr_grayPlayer,image_index,x,y,size,size,0,c_white,alpha);
drawRing(x-2, y, radius,thickness,startAngle,totalAngle,gapAngle,color);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fontBasicInfoMini);
draw_text(x,y-20,string_hash_to_newline(string((150-steps)/50)));


draw_set_halign(fa_left);
draw_set_valign(fa_top);

