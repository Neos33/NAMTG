with(other)
{
    instance_destroy();
}
if instance_exists(obj_skeletonElete_combat)
{
    instance_create(obj_skeletonElete_combat.x, obj_skeletonElete_combat.y + 16, bullet);
    if(!obj_skeletonElete_combat.cooldown)
    {
        damage = global.attackDamage;
        damageInfo = instance_create(x + sprite_width / 2 - sprite_xoffset,y + sprite_height / 2 - sprite_yoffset,obj_damageInfo);
        damageInfo.damage = damage;
        damageInfo.font = fontDamageInfo1;
        damageInfo.color = c_white;        
        damageInfo.level = 1;
    }
}

