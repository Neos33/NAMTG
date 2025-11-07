if(add)
{
    draw_set_blend_mode(bm_add);
}
if(speed == 0)
{
    friction = -0.05;
    speed = 0.05;
    tar_dir += random_range(-90,90);
    alarm[0] = 1;
}
image_angle = direction;
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_set_blend_mode(bm_normal);

