timer+=1;
if timer=3
{
    part_emitter_region(part,emitter,__view_get( e__VW.XView, 0 ),__view_get( e__VW.XView, 0 )+1200,__view_get( e__VW.YView, 0 )-10,__view_get( e__VW.YView, 0 )-10-5,ps_shape_rectangle,ps_distr_linear);
    part_emitter_burst(part,emitter,snow,1);
    timer=0;
}

