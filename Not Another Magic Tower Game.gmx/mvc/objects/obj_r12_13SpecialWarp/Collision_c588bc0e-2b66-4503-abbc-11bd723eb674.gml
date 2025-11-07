//if instance_exists(player)
//{
if(hspd != 0)
{
    player.hspeed = hspd;
}
if(vspd != 0)
{
    player.vspeed = vspd;
}
player.djump = true;
player.visible = false;
//}
//transition_kind = 21;
//transition_steps = 30;
event_inherited();

