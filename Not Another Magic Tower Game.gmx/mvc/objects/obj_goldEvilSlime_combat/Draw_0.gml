if(status == 0)
{
    draw_current();
}
else if(status == 1) //make sprite dark gradually
{
    draw_sprite_ext(sprite_index, image_index, x,y,image_xscale,image_yscale,image_angle,c_white,(1-mixedAlpha) * image_alpha);
    draw_sprite_ext(sprite_index, image_index, x,y,image_xscale,image_yscale,image_angle,c_black,mixedAlpha * image_alpha);
}
else if(status == 2) //evolution to missingno
{
    draw_sprite_ext(sprite_index, image_index, x,y,image_xscale,image_yscale,image_angle,c_black,(1-mixedAlpha) * image_alpha);
    draw_sprite_ext(spr_missingno, 0, x,y,1,1,image_angle,c_black,mixedAlpha * image_alpha);
}
else if(status == 3) //missingno evolution end
{
    draw_sprite_ext(spr_missingno, 0, x,y,1,1,image_angle,c_white,(1-mixedAlpha) * image_alpha);
    draw_sprite_ext(spr_missingno, 0, x,y,1,1,image_angle,c_black,mixedAlpha * image_alpha);
}

