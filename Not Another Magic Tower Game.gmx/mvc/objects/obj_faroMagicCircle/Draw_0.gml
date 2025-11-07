draw_set_blend_mode(bm_add);
draw_current();
if(rotate)
{
    for(i = 0; i < 24; i+=1)
    {
        px = 400 + 200 * cos(degtorad(i*15));
        py = 304 - 200 * sin(degtorad(i*15));
        draw_sprite_ext(spr_osuStandardCursorTail,0,px,py,1,1,0,c_white,image_alpha);
    }
}
draw_set_blend_mode(bm_normal);

