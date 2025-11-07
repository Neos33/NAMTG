hp = obj_diaoSlime_combat.hp;
image_alpha = obj_diaoSlime_combat.image_alpha;
if(!instance_exists(obj_diaoSlime_combat))
{
    instance_destroy();
}

if(start && !final)
{
    if(y > 530)
    {
        y -= 10;
    }
    else
    {
        y = 530;
    }
}
if(final)
{
    y = 608 - 78 * image_yscale;
}

if(shoot)
{
    pp = instance_create(x, y - 78, obj_smallGrayCherry);
    pp.sprite_index = spr_minibossbullet1;
    pp.speed = random_range(12, 15);
    pp.direction = random_range(60, 120);
    pp.gravity = 0.35;
}

