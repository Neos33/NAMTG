if(instance_exists(obj_guardlv2blast))
{
    obj_guardlv2blast.status = 0;
    with(obj_guardlv2blast)
    {
        instance_destroy();
    }
}
if(player.x + 44 > 800)
{
    x = 800;
}
else
{
    x = player.x + 44;
}
y = player.y;
instance_create(x-28,y-20,obj_guardlv2SmashKey);
image_angle = 90;
hspeed = -12;
smash = true;

