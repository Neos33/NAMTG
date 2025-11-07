instance_activate_all();
if(sprite_exists(pauseImg))
{
    sprite_delete(pauseImg);
}
player.frozen = false;
with(obj_dirtyDealNpc)
{
    onMesseging = true;
    alarm[0] = 10;
}
message_add("Gay DW(Merchant): See you next time!");

