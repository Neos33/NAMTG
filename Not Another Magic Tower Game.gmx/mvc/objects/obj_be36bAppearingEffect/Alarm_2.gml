p = instance_create(x, y - 15, obj_bossAppearPrototype);
if(ind == 1)
{
    p.sprite_index = spr_bePhase1;
}
else if(ind == 2)
{
    p.sprite_index = spr_bePhase2;
    p.image_index = 1;
}
else if(ind == 3)
{
    p.sprite_index = spr_bePhase3;
}
alarm[1] = 10;

