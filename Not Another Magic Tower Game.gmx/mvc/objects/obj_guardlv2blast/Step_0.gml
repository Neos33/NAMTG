if(!instance_exists(obj_guardlv2_combat))
{
    instance_destroy();
    exit;
}
x = obj_guardlv2_combat.x;
y = obj_guardlv2_combat.y;
if(!obj_guardlv2_combat.wind && alarm[10] == 0)
{
    alarm[10] = 1;
}

if(status == 1)
{
    player.y -= 15;
}

