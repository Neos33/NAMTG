/*size = ds_list_size(shadowX);
if(size == 0)
{
    draw_current();
}
else
{
    for(i = 0; i< size; i+=1)
    {
        draw_sprite_ext(sprite_index,image_index,ds_list_find_value(shadowX,size - 1 - i), ds_list_find_value(shadowY,size - 1 - i), image_xscale - i * 0.2, image_yscale - i * 0.2, 0, c_white, image_alpha - i * 0.15);
    }
}
*/
draw_sprite_ext(sprite_index,image_index,x, y, image_xscale, image_yscale, 0, c_white, 0.8);
draw_sprite_ext(sprite_index,image_index,x + 3, y + 3, image_xscale, image_yscale, 0, c_white, 0.6);
draw_sprite_ext(sprite_index,image_index,x - 3, y + 3, image_xscale, image_yscale, 0, c_white, 0.6);
draw_sprite_ext(sprite_index,image_index,x + 3, y - 3, image_xscale, image_yscale, 0, c_white, 0.6);
draw_sprite_ext(sprite_index,image_index,x - 3, y - 3, image_xscale, image_yscale, 0, c_white, 0.6);

/* */
/*  */
