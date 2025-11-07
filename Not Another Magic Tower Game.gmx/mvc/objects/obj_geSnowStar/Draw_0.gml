draw_set_color(c_aqua);
//draw_set_blend_mode(bm_add);
for(var i = 0; i < 360; i+=60)
{
    draw_sprite_ext(sprite_index,0,x,y,0.225,0.15,angle+i,c_white,0.1);
    draw_sprite_ext(sprite_index,0,x,y,0.3,0.2,angle+i,c_white,0.1);
}
draw_set_alpha(0.075 + 0.025 * cos(degtorad(alphaFact)));
for(var r =1; r <=8;r+=1)
{
    draw_circle(x,y,r,false);
}


draw_reset_color();
//draw_set_blend_mode(bm_normal);

