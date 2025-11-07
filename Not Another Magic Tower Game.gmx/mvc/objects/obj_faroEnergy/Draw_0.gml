draw_set_blend_mode(bm_add);
if(move)
{
    for(i = 1; i < 5; i += 1)
    {
        draw_sprite_ext(sprite_index, image_index, x + lengthdir_x(10 * i,direction + 180), y + lengthdir_y(10 * i, direction + 180), 1 - 0.2 * i, 1 - 0.2 * i, image_angle, image_blend, 1- 0.2 * i);
    }
}
draw_current();
draw_set_blend_mode(bm_normal);

