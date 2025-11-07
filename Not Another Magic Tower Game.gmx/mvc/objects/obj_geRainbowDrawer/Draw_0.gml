draw_set_blend_mode(bm_add);
for(i = -0.1; i <= 0.1; i+=0.005)
{
    draw_surface_ext(surf,x-400*(scale+i),y-304*(scale+i),(scale+i),(scale+i),0,c_white,0.1 * alpha);
}
draw_set_blend_mode(bm_normal);

