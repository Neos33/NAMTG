x=400;
y=302;
move_towards_point(player.x,player.y,14);
instance_create(0,0,obj_redbatblack);
with(obj_redbatblack)
{
    image_alpha=0.11;
    blackflag=0;
}
alarm[11]=1;
alarm[4]=23;

