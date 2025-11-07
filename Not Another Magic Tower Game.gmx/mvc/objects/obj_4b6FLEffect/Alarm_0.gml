scale = (15 - obj_npcBattleNPC3.hp) * 0.1;
fScale = random_range(0.8 * scale, 1.2 * scale);
if(scale > 0)
{
    var s = instance_create(random_range(rangeS,rangeE), 0, obj_4B6Snow);
    //s.depth = -998;
    //s.image_alpha = 0.8;
    s.image_xscale = fScale;
    s.image_yscale = fScale;
}
alarm[0] = irandom_range(50,60);

