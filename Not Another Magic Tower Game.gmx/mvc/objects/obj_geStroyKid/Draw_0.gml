if(image_alpha == 1)
{
    draw_current();
}
else if(image_alpha > 0)
{
 draw_set_blend_mode(bm_add);
 draw_current();
 draw_sprite_ext(spr_npc1, image_index,x-17,y-23,1,1,0,c_white,1-image_alpha);
 draw_set_blend_mode(bm_normal);
}
else
{
 draw_sprite_ext(spr_npc1, image_index,x-17,y-23,1,1,0,c_white,1-image_alpha);
}

