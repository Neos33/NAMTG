with(instance_create(400 + 4, 80, obj_tlOriginalHintArrow))
{
    image_angle = 135;
    image_xscale = 0.5;
    image_yscale = 0.5;
}
with(instance_create(400 - 4, 80, obj_tlOriginalHintArrow))
{
    image_angle = -135;
    image_xscale = 0.5;
    image_yscale = 0.5;
}
with(instance_create(400, 80 + 64, obj_tlOriginalHintArrow))
{
    image_xscale = 0.5;
    image_yscale = 0.8;
    lead = true;
}

