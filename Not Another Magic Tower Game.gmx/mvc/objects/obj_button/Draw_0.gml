draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,image_alpha)
if listen==1{draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_red,.5)}

//draw_sprite(sprArrow,0,x+220,y+10)
draw_set_color(c_black)
draw_set_font(fontButton);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if(listen==0)
{
    draw_text(x+75,y+19,string_hash_to_newline(textkey));
}
else
{
    draw_text(x+75,y+19,string_hash_to_newline("???"));
}

draw_reset();

