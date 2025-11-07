draw_set_blend_mode(bm_add);
/*for(i=4;i>=0;i-=1)
{
    sx = x + lengthdir_x(5*i, direction + 180);
    sy = y + lengthdir_y(5*i, direction + 180);
    scale = image_xscale * (1 - i*0.1);
    alpha = image_alpha * (1 - i*0.2);
    draw_sprite_ext(sprite_index, image_index, sx,sy,scale*image_xscale,scale*image_yscale,0,c_white,alpha);
}*/
draw_current();
draw_set_blend_mode(bm_normal);

/* */
/*  */
