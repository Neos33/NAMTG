if(part_emitter_exists(obj_tlPreFinalController.sys,emit))
{
    part_emitter_destroy(obj_tlPreFinalController.sys,emit);
}

/*if(part_attractor_exists(obj_tlPreFinalController.sys, attract))
{
    part_attractor_destroy(obj_tlPreFinalController.sys, attract);
}*/

with(weapon)
{
    instance_destroy();
}

/* */
/*  */
