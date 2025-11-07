player.redKnightDash = true;
with obj_redKnightController
{
    alarm[0] = 1;
    dashStep = 70;
}
player.djump = true;
sound_fix(sndDash);
with obj_redKnight_combat
    start = true;
instance_create(player.x,player.y,obj_redKnightDashEffect);
with(obj_redKnightGo)
{
    instance_destroy();
}
with(block)
{
    if(object_index != obj_redKnightBlock)
    {
        instance_destroy();
    }
}
instance_destroy();

