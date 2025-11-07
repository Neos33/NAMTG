if(!surface_exists(surf))
{
    surf = surface_create(room_width,room_height);
}
surface_set_target(surf);
draw_clear(c_black);
draw_set_blend_mode(bm_subtract);
draw_sprite_ext(spr_geFlashLight,0,room_width/2,room_height/2,scale,scale,0,c_white,1);
surface_reset_target();
draw_set_blend_mode(bm_normal);

