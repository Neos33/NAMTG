if(status == 1)
{
    move_towards_point(player.x,player.y, 2.5);
}
else if(status == 2)
{
    if instance_exists(obj_orcMage_combat)
        move_towards_point(obj_orcMage_combat.x,obj_orcMage_combat.y, 2.5);
}

