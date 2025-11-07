draw_set_blend_mode(bm_add);
for(i=0;i<floor(blend);i+=1)
{
    draw_sprite_ext(sprite_index, i, x,y,1,1,0,c_white,1);
}
draw_set_blend_mode(bm_normal);
draw_sprite_ext(sprite_index, image_index, x,y,1,1,0,c_white,0.2);

