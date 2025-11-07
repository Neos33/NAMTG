if(image_xscale < 1)
{
    image_xscale += 0.01;
    image_yscale += 0.01;
}

if(!fury)
{
    player.hspeed += sign(x - player.x) * 2;
}
else
{
    image_speed = 1/4;
    player.hspeed += sign(x - player.x) * 2.8;
}

