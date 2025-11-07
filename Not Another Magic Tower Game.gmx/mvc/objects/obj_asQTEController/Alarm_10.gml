with(obj_armoredSoldier_combat)
{
    instance_create(x,y,bullet);
    alarm[3] = 50;
}
player.visible = true;
player.x = obj_asQTEPlayer.x;
player.y = obj_asQTEPlayer.y;
player.frozen = false;
with(obj_asQTEPlayer)
{
    instance_destroy();
}
obj_asBGChanger.alarm[1] = 1;
event_user(0);

