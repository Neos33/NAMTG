draw_current();
draw_sprite_ext(spr_osuStandardInd, num, x, y, image_xscale, image_yscale,image_angle, c_white, image_alpha); 
if(drawNum)
{
    draw_sprite_ext(sprite_index, image_index, x, y, scale, scale,0, c_white, alpha);
    draw_sprite_ext(spr_osuStandardInd, num, x, y, scale, scale,0, c_white, alpha);   
}

