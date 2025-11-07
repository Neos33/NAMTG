for(var i = 0; i < size; i+=1)
{
    var alpha = 1/(size+1)*(i+1);
    draw_sprite_ext(sprite_index,image_index,ds_list_find_value(xl,i),ds_list_find_value(yl,i),image_xscale,image_yscale,image_angle,image_blend,alpha * image_alpha);
}
draw_current();

