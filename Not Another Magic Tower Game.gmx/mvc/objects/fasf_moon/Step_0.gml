
if(image_xscale==1 &&zxc==0)
{
    move_towards_point(player.x,player.y,3)
    zxc=1;
}
else
if zxc==0
{
    image_xscale+=0.01;
    image_yscale+=0.01;
}

