if(partStart)
{
    part_emitter_region(sys,emit,x-16,x+16,y+16,y+16,ps_shape_ellipse,ps_distr_gaussian);
    part_emitter_burst(sys,emit,fire,5);
}
spd = 0.5 + (1-hpPer);

