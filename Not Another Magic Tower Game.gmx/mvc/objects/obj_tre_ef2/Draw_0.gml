if(image_xscale<25){
    image_xscale+=2.5;
    image_yscale=image_xscale;
}
else{
    instance_destroy()
}
draw_set_blend_mode_ext(bm_inv_dest_color,bm_inv_src_color);
//draw_set_color(c_white);
//draw_rectangle(400-image_xscale*16,304-image_xscale*12,400+image_xscale*16,304+image_yscale*12,0)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_set_blend_mode(bm_normal);

