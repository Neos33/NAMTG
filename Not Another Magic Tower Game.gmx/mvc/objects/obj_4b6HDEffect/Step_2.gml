if(!surface_exists(surf))
{
    surf = surface_create(room_width,room_height);
}
surface_set_target(surf);
    draw_clear(c_black);
    draw_set_blend_mode(bm_subtract);
    draw_sprite_ext(spr_flashlight, 0, player.x,player.y, 3.5, 3.5, 0, c_white,1);
surface_reset_target();
draw_set_blend_mode(bm_normal);

