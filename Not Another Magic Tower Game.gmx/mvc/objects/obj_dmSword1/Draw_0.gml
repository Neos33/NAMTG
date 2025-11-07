for(var i = 2; i >= 0; i -= 1)
{
    alpha = 0.8 - i * 0.3;
    var sprite_top = y - vspeed * 2 * i - sprite_yoffset;
    var topStart = RangeClamp(top - sprite_top,0,sprite_height);
    draw_sprite_part_ext(sprite_index,image_index,0,topStart, sprite_width, RangeClamp(bottom - sprite_top,0,sprite_height - topStart),x - sprite_width / 2,RangeClamp(sprite_top,top,bottom),image_xscale,image_yscale,image_blend,alpha*image_alpha);
}

