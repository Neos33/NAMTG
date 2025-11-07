/*if(x < 400)
{
    part_emitter_region(obj_tlController.sys,obj_tlController.beam_em1,x,x,y,y,ps_shape_rectangle,ps_distr_linear);
    part_emitter_burst(obj_tlController.sys,obj_tlController.beam_em1,obj_tlController.beam,1);
}
else
{
    part_emitter_region(obj_tlController.sys,obj_tlController.beam_em2,x,x,y,y,ps_shape_rectangle,ps_distr_linear);
    part_emitter_burst(obj_tlController.sys,obj_tlController.beam_em2,obj_tlController.beam,1);
}
*/
if(x < 400)
{
    part_emitter_region(obj_tlController.ps,obj_tlController.beam_em1,x,x,y,y,ps_shape_rectangle,ps_distr_linear);
    part_emitter_burst(obj_tlController.ps,obj_tlController.beam_em1,obj_tlController.beam,1);
}
else
{
    part_emitter_region(obj_tlController.ps,obj_tlController.beam_em2,x,x,y,y,ps_shape_rectangle,ps_distr_linear);
    part_emitter_burst(obj_tlController.ps,obj_tlController.beam_em2,obj_tlController.beam,1);
}
alarm[4] = 4;

/* */
/*  */
