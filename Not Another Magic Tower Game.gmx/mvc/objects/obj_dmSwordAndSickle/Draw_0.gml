if(part == 1)
{
    draw_current();
}
else if(part > 0)
{
    draw_sprite_part_ext(sprite_index, image_index, sprite_width * (0.5 - part / 2),0, sprite_width * part, sprite_height, x - sprite_width * part / 2, bbox_top, 1,1,c_white,image_alpha);
}

