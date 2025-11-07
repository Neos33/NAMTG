if(obj_corazone_combat.cooldown) 
{
    with(other)
    {
        hitEffect();
    }
    exit;
} 

    damage = global.attackDamage;
    if(other.energy >= 1.5)
    {
        damage = round(global.attackDamage * other.energy);
    }
    damageInfo = instance_create(x + sprite_width / 2 - sprite_xoffset,y + sprite_height / 2 - sprite_yoffset,obj_damageInfo);
    damageInfo.damage = damage;
    if(other.energy < 1.5)
    {
        damageInfo.font = fontDamageInfo1;
        damageInfo.color = c_white;        
        damageInfo.level = 1;
    }
    else if(other.energy <= 2)
    {
        damageInfo.font = fontDamageInfo2;
        damageInfo.color = c_yellow;  
        damageInfo.level = 2;      
    }
    else
    {
        damageInfo.font = fontDamageInfo3;
        damageInfo.color = c_red;        
        damageInfo.level = 3;
    }
    
with(other)
{
    x = obj_corazone_combat.x;
    y = obj_corazone_combat.y;
    hitEffect();
    speed = 0;
}

