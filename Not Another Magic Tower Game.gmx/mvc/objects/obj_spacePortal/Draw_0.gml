draw_sprite_ext(sprite_index,0,x,y,scale,scale,image_angle,c_white,alpha);
draw_current();
if(draw)
{
    draw_set_font(fontSpace);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(x+1,y+1,string_hash_to_newline(txt));
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

