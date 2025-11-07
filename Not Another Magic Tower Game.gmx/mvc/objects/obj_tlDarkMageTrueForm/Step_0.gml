if(partStart)
{
    part_emitter_region(obj_tlPreFinalController.sys,emit,x-32,x+32,y+26,y+26,ps_shape_ellipse,ps_distr_gaussian);
    part_emitter_burst(obj_tlPreFinalController.sys,emit,obj_tlPreFinalController.fire,5);
}

time += 1;
if(time mod 3 != 0)
    exit;
size = ds_list_size(xl);
if(size == 5)
{
    ds_list_delete(xl,0);
    ds_list_delete(yl,0);
}
ds_list_add(xl, xprevious);
ds_list_add(yl, yprevious);

