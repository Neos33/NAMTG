if(!instance_exists(obj_swordMaster_combat))
{
    instance_destroy();
}
mx = x + 5 * image_xscale - 4 * image_xscale * image_index;
if(mx < 160)
{
    gap = 160 - mx;
    x += gap;
}
else if(mx > 640)
{
    gap = mx - 640;
    x -= gap;
}
obj_swordMaster_combat.x = RangeClamp(mx, 160, 640);

