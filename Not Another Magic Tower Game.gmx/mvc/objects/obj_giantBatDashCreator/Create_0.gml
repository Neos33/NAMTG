for(var i = 0; i < 10; i += 1)
{
    instance_create(random_range(48,768), 48 + 55 * i, obj_giantBatBGDash);
}
alarm[0] = 15;
alarm[1] = 1;

