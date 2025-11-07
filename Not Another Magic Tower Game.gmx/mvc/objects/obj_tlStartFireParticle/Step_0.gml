if(abs(y - 568) > 1)
{
    move_towards_point(x,568,1.8);
}
else
{
    speed = 0;
    y = 568;
}

if(x < 400)
{
    part_emitter_region(obj_tlController.ps, obj_tlController.pt1_em1, x - 38, x + 38, y - 14, y + 14,1,1);
    part_emitter_burst(obj_tlController.ps, obj_tlController.pt1_em1,obj_tlController.part1,5);
}
else
{
    part_emitter_region(obj_tlController.ps, obj_tlController.pt1_em2, x - 38, x + 38, y - 14, y + 14,1,1);
    part_emitter_burst(obj_tlController.ps, obj_tlController.pt1_em2,obj_tlController.part1,5);
}

