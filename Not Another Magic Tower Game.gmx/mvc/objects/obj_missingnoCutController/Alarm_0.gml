for(var i = 0; i < groupCount; i += 1)
{
    p[i] = instance_create(obj_missingno.x, obj_missingno.y, obj_missingnoCut);
    p[i].image_alpha = 0.1 + i * 0.15;
    p[i].image_xscale = 1 + i * 0.2;
    p[i].image_yscale = 1 + i * 0.2;
    if(i > 0)
    {
        p[i - 1].parent = p[i];
    }
    if(i == groupCount - 1)
    {
        p[i].isLead = true;
        p[i].speed = 3;
        p[i].direction = choose(random_range(90,115), random_range(270, 295));
    }
}
sound_fix(snd_touhou_attack5);
alarm[0] = 20;

