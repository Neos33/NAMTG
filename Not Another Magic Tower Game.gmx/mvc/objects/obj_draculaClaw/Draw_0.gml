if(dash)
{
    draw_sprite_ext(sprite_index, image_index, x - xStep * 3,y,image_xscale,image_yscale,image_angle,c_purple,0.4);
    draw_sprite_ext(sprite_index, image_index, x - xStep * 2,y,image_xscale,image_yscale,image_angle,c_purple,0.6);
    draw_sprite_ext(sprite_index, image_index, x - xStep,y,image_xscale,image_yscale,image_angle,c_purple,0.8);
}
draw_current();

