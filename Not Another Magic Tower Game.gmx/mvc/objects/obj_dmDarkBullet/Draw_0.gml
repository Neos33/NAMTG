draw_set_blend_mode(bm_add);
for(var i = 0; i < size; i+=1)
{
    alpha = 1/(size+1)*(i+1);
    draw_sprite_ext(sprite_index,image_index,ds_list_find_value(xList,i),ds_list_find_value(yList,i),image_xscale,image_yscale,image_angle,image_blend,alpha * image_alpha);
}
//draw_current();
draw_set_blend_mode(bm_normal);

