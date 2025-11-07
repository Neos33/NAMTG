var listSize = ds_list_size(asShadowX);
for(var i = 0; i < listSize; i += 1)
{
    draw_sprite_ext(sprite_index, image_index, 
                      ds_list_find_value(asShadowX, listSize - i - 1), 
                      ds_list_find_value(asShadowY, listSize - i - 1), 
                      1,1,0,c_white, (0.9 - i * 0.1)*image_alpha);
}
draw_current();

