if(!surface_exists(surf))
{
    surf = surface_create(room_width,room_height);
}
surface_set_target(surf);
draw_clear(c_black);
draw_set_blend_mode(bm_subtract);
draw_sprite_ext(spr_flashlight, 0, 304,544,1.5,1.5,0,c_white,1);
surface_reset_target();
draw_set_blend_mode(bm_normal);

