if(room == rGalleryBoss)
{
    draw_set_blend_mode(bm_add);
    draw_current();
    draw_set_blend_mode(bm_normal);
}
else
{
    draw_current();
}

