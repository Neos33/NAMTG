if back
{
    var scl=image_xscale+0.1*sin(tt);
    tt+=0.07;
    draw_sprite_ext(spr_pica_back,image_index,x,y,scl,scl,agl,image_blend,image_alpha);
    agl+=5.5;
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

